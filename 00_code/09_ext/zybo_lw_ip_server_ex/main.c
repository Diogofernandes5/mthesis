/**
 * @application freeRTOS TCP Client
 *
 * This APP implements a client that connects to a server in the host machine,
 * echoing every data that is sent by the server. Furthermore, it accounts for
 * 2 interrupts: the first is from the AXI GPIO IP that is connected to the buttons;
 * the latter is from the AXI Master IP that turns interrupt on after writing to the
 * DDR after the last switch on the board is turned on.
 *
 * */

#include <stdio.h>
#include "xparameters.h"
#include "netif/xadapter.h"
#include "platform_config.h"
#include "xil_printf.h"

#include "xscugic.h"
#include "xgpio.h"

#if LWIP_IPV6==1
#include "lwip/ip.h"
#else
#if LWIP_DHCP==1
#include "lwip/dhcp.h"
#endif
#endif

#ifdef XPS_BOARD_ZCU102
#ifdef XPAR_XIICPS_0_DEVICE_ID
int IicPhyReset(void);
#endif
#endif

/**************** DEFINES ******************/
#define THREAD_STACKSIZE 1024

#define DHCP_COARSE_TIMER_SECS_NEW 5

/*------DDR------*/
// DDR Base address
#define DDR_BASE_ADDR XPAR_PS7_DDR_0_S_AXI_BASEADDR

// Memory base address - sum to DDR_BASE_ADDR protects DDR
#define MEM_ADDR 0x00400000

/*------INTERRUPT------*/
#define INTC_DEVICE_ID  XPAR_PS7_SCUGIC_0_DEVICE_ID

#define WRITE_DONE_INTR XPAR_FABRIC_GPIO_0_VEC_ID

/*------GPIO------*/
#define GPIO_DEVICE_ID      XPAR_AXI_GPIO_0_DEVICE_ID

/**************** PROTOTYPES ******************/
int main_thread();
//void print_echo_app_header();
void echo_application_thread();

void lwip_init();

void fill_ddr();

int SetupInterruptSystem(XScuGic *IntcInstancePtr);

void WriteDone_Handler(void *CallbackRef);

#if LWIP_IPV6==0
#if LWIP_DHCP==1
extern volatile int dhcp_timoutcntr;
err_t dhcp_start(struct netif *netif);
#endif
#endif

static struct netif server_netif;
struct netif *echo_netif;

static XScuGic InterruptController;

static XGpio GPIOInst;

#if LWIP_IPV6==1
void print_ip6(char *msg, ip_addr_t *ip)
{
	print(msg);
	xil_printf(" %x:%x:%x:%x:%x:%x:%x:%x\n\r",
			IP6_ADDR_BLOCK1(&ip->u_addr.ip6),
			IP6_ADDR_BLOCK2(&ip->u_addr.ip6),
			IP6_ADDR_BLOCK3(&ip->u_addr.ip6),
			IP6_ADDR_BLOCK4(&ip->u_addr.ip6),
			IP6_ADDR_BLOCK5(&ip->u_addr.ip6),
			IP6_ADDR_BLOCK6(&ip->u_addr.ip6),
			IP6_ADDR_BLOCK7(&ip->u_addr.ip6),
			IP6_ADDR_BLOCK8(&ip->u_addr.ip6));
}

#else
void
print_ip(char *msg, ip_addr_t *ip)
{
	xil_printf(msg);
	xil_printf("%d.%d.%d.%d\n\r", ip4_addr1(ip), ip4_addr2(ip),
			ip4_addr3(ip), ip4_addr4(ip));
}

void
print_ip_settings(ip_addr_t *ip, ip_addr_t *mask, ip_addr_t *gw)
{

	print_ip("Board IP: ", ip);
	print_ip("Netmask : ", mask);
	print_ip("Gateway : ", gw);
}
#endif

int main()
{
    xil_printf("\r\n\r\n");
    xil_printf("-----lwIP Socket Mode Echo Client Application ------\r\n");

	fill_ddr();

	xil_printf("Enabling the Write Done interrupt...\r\n");
	// Initialize the interrupt controller
	int Status = SetupInterruptSystem(&InterruptController);
	if (Status != XST_SUCCESS) {
		xil_printf("Interrupt setup failed!\r\n");
		return XST_FAILURE;
	}
	xil_printf("Interrupt enabled!\r\n");

	sys_thread_new("main_thrd", (void(*)(void*))main_thread, 0,
	                THREAD_STACKSIZE,
	                DEFAULT_THREAD_PRIO);

	vTaskStartScheduler();
	while(1);
	return 0;
}

void network_thread(void *p)
{
    struct netif *netif;
    /* the mac address of the board. this should be unique per board */
    unsigned char mac_ethernet_address[] = { 0x00, 0x0a, 0x35, 0x00, 0x01, 0x02 };
#if LWIP_IPV6==0
    ip_addr_t ipaddr, netmask, gw;
#if LWIP_DHCP==1
    int mscnt = 0;
#endif
#endif

    netif = &server_netif;

#if LWIP_IPV6==0
#if LWIP_DHCP==0
    /* initialize IP addresses to be used */
    IP4_ADDR(&ipaddr,  192, 168, 1, 10);
    IP4_ADDR(&netmask, 255, 255, 255,  0);
    IP4_ADDR(&gw,      192, 168, 1, 1);
#endif

    /* print out IP settings of the board */

#if LWIP_DHCP==0
    print_ip_settings(&ipaddr, &netmask, &gw);
    /* print all application headers */
#endif

#if LWIP_DHCP==1
	ipaddr.addr = 0;
	gw.addr = 0;
	netmask.addr = 0;
#endif
#endif

#if LWIP_IPV6==0
    /* Add network interface to the netif_list, and set it as default */
    if (!xemac_add(netif, &ipaddr, &netmask, &gw, mac_ethernet_address, PLATFORM_EMAC_BASEADDR)) {
		xil_printf("Error adding N/W interface\r\n");
		return;
    }
#else
    /* Add network interface to the netif_list, and set it as default */
    if (!xemac_add(netif, NULL, NULL, NULL, mac_ethernet_address, PLATFORM_EMAC_BASEADDR)) {
	xil_printf("Error adding N/W interface\r\n");
	return;
    }

    netif->ip6_autoconfig_enabled = 1;

    netif_create_ip6_linklocal_address(netif, 1);
    netif_ip6_addr_set_state(netif, 0, IP6_ADDR_VALID);

    print_ip6("\n\rBoard IPv6 address ", &netif->ip6_addr[0].u_addr.ip6);
#endif

    netif_set_default(netif);

    /* specify that the network if is up */
    netif_set_up(netif);

    /* start packet receive thread - required for lwIP operation */
    sys_thread_new("xemacif_input_thread", (void(*)(void*))xemacif_input_thread, netif,
            THREAD_STACKSIZE,
            DEFAULT_THREAD_PRIO);

#if LWIP_IPV6==0
#if LWIP_DHCP==1
    dhcp_start(netif);

    while (1) {
		vTaskDelay(DHCP_FINE_TIMER_MSECS / portTICK_RATE_MS);
		dhcp_fine_tmr();
		mscnt += DHCP_FINE_TIMER_MSECS;
		if (mscnt >= DHCP_COARSE_TIMER_SECS_NEW*1000) {
			dhcp_coarse_tmr();
			mscnt = 0;
		}
	}
#else
    xil_printf("\r\n");
//    xil_printf("%20s %6s %s\r\n", "Server", "Port", "Connect With..");
    xil_printf("%20s %6s %s\r\n", "--------------------", "------", "--------------------");

//    print_echo_app_header();
    xil_printf("\r\n");
    sys_thread_new("echod", echo_application_thread, 0,
		THREAD_STACKSIZE,
		DEFAULT_THREAD_PRIO);
    vTaskDelete(NULL);
#endif
#else
//    print_echo_app_header();
    xil_printf("\r\n");
    sys_thread_new("echod",echo_application_thread, 0,
		THREAD_STACKSIZE,
		DEFAULT_THREAD_PRIO);
    vTaskDelete(NULL);
#endif
    return;
}

int main_thread()
{
#if LWIP_DHCP==1
	int mscnt = 0;
#endif

#ifdef XPS_BOARD_ZCU102
	IicPhyReset();
#endif

	/* initialize lwIP before calling sys_thread_new */
    lwip_init();

    /* any thread using lwIP should be created using sys_thread_new */
    sys_thread_new("NW_THRD", network_thread, NULL,
		THREAD_STACKSIZE,
            DEFAULT_THREAD_PRIO);

#if LWIP_IPV6==0
#if LWIP_DHCP==1
    while (1) {
    	vTaskDelay(DHCP_FINE_TIMER_MSECS / portTICK_RATE_MS);
		if (server_netif.ip_addr.addr) {
			xil_printf("DHCP request success\r\n");
			print_ip_settings(&(server_netif.ip_addr), &(server_netif.netmask), &(server_netif.gw));
			xil_printf("\r\n");

			sys_thread_new("echod", echo_application_thread, 0,
					THREAD_STACKSIZE,
					DEFAULT_THREAD_PRIO);
			break;
		}
		mscnt += DHCP_FINE_TIMER_MSECS;

		if (mscnt >= DHCP_COARSE_TIMER_SECS_NEW * 2000) {
			xil_printf("ERROR: DHCP request timed out\r\n");
			xil_printf("Configuring default IP of 192.168.1.10\r\n");
			IP4_ADDR(&(server_netif.ip_addr),  192, 168, 1, 10);
			IP4_ADDR(&(server_netif.netmask), 255, 255, 255,  0);
			IP4_ADDR(&(server_netif.gw),  192, 168, 1, 1);
			print_ip_settings(&(server_netif.ip_addr), &(server_netif.netmask), &(server_netif.gw));

			sys_thread_new("echod", echo_application_thread, 0,
					THREAD_STACKSIZE,
					DEFAULT_THREAD_PRIO);

			break;
		}
	}
#endif
#endif
    vTaskDelete(NULL);
    return 0;
}

void fill_ddr(void)
{
	u32 buffer[1024]; // Example data buffer
	for (int i = 0; i < 1024; i++) {
		buffer[i] = i; // Fill with test pattern
	}

	// Copy to DDR
    u32 *ddr = (u32*)DDR_BASE_ADDR + MEM_ADDR;
	memcpy(ddr, buffer, sizeof(buffer));

	int err = 0;
	// Verify
	for (int i = 0; i < 1024; i++) {
		if (ddr[i] != buffer[i]) {
			err = 1;
			xil_printf("Error at offset %d!\n", i);
		}
	}
	if(err)
		xil_printf("DDR writing didn't worked\n\r");
	else
		xil_printf("DDR writing worked fine\n\r");
}

void WriteDone_Handler(void *CallbackRef)
{
    xil_printf("Write Done interrupt occurred!\r\n");
    XGpio_InterruptClear(&GPIOInst, 1);
}

int SetupInterruptSystem(XScuGic *IntcInstancePtr)
{
	// Initialize AXI GPIO device
	XGpio_Initialize(&GPIOInst, GPIO_DEVICE_ID);
	// Set all bits as input
	XGpio_SetDataDirection(&GPIOInst, 1, 0xFF);

	// Enable Interrupt of AXI GPIO
	XGpio_InterruptEnable(&GPIOInst, 1);
	XGpio_InterruptGlobalEnable(&GPIOInst);

	// Register interrupt handler using FreeRTOS-aware function
	xPortInstallInterruptHandler(WRITE_DONE_INTR, WriteDone_Handler, NULL);

	// Enable the interrupt line
	vPortEnableInterrupt(WRITE_DONE_INTR);

	return XST_SUCCESS;
}
