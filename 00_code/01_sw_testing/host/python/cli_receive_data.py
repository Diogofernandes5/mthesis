# import socket

# def start_server():
#     HOST = '172.168.1.100'  # Empty string = all available interfaces
#     PORT = 5000
    
#     with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
#         s.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
#         try:
#             s.bind((HOST, PORT))
#             print(f"Server bound to all interfaces on port {PORT}")
#             s.listen()
#             print("Waiting for Zynq connection...")
            
#             conn, addr = s.accept()
#             with conn:
#                 print(f"Connected to Zynq at {addr}")
#                 while True:
#                     data = conn.recv(1024)
#                     if not data:
#                         break
#                     print(f"Received: {data.decode()}")
#                     # Echo back to Zynq
#                     conn.sendall(b"PC received: " + data)
#         except Exception as e:
#             print(f"Error: {e}")

# if __name__ == "__main__":
#     start_server()


# import socket
# import threading

# class TelnetLikeServer:
#     def __init__(self, host='0.0.0.0', port=5000):
#         self.host = host
#         self.port = port
#         self.server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
#         self.server_socket.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
#         self.clients = []
        
#     def start(self):
#         self.server_socket.bind((self.host, self.port))
#         self.server_socket.listen(5)
#         print(f"Server listening on {self.host}:{self.port}")
        
#         while True:
#             client_socket, addr = self.server_socket.accept()
#             print(f"New connection from {addr}")
#             self.clients.append(client_socket)
#             client_thread = threading.Thread(
#                 target=self.handle_client, 
#                 args=(client_socket,)
#             )
#             client_thread.start()
            
#     def handle_client(self, client_socket):
#         try:
#             while True:
#                 # Receive data from Zynq
#                 data = client_socket.recv(1024)
#                 if not data:
#                     break
                    
#                 print(f"Received from Zynq: {data.decode('utf-8').strip()}")
                
#                 # Send response back
#                 response = input("Enter response to send to Zynq: ")
#                 client_socket.sendall(response.encode('utf-8') + b'\n')
                
#         except ConnectionResetError:
#             print("Client disconnected unexpectedly")
#         finally:
#             client_socket.close()
#             self.clients.remove(client_socket)

# if __name__ == "__main__":
#     server = TelnetLikeServer(host='172.168.1.100', port=5000)
#     # server = TelnetLikeServer(port=5000)
#     server.start()

# import socket
# import threading

# class EchoTerminalServer:
#     def __init__(self, host='', port=5000):
#         self.host = host
#         self.port = port
#         self.server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
#         self.server_socket.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
        
#     def start(self):
#         try:
#             self.server_socket.bind((self.host, self.port))
#             self.server_socket.listen(5)
#             print(f"Echo Terminal Server listening on {self.host or 'all interfaces'}:{self.port}")
            
#             while True:
#                 client_socket, addr = self.server_socket.accept()
#                 print(f"New connection from {addr}")
#                 threading.Thread(
#                     target=self.handle_client,
#                     args=(client_socket,)
#                 ).start()
                
#         except Exception as e:
#             print(f"Server error: {e}")
#         finally:
#             self.server_socket.close()
            
#     def handle_client(self, client_socket):
#         try:
#             # Immediately send welcome message to Zynq
#             client_socket.sendall(b"ECHO TERMINAL READY\n")
            
#             while True:
#                 # Wait for data from Zynq
#                 data = client_socket.recv(1024)
#                 if not data:
#                     break
                    
#                 print(f"Received from Zynq: {data.decode().strip()}")
                
#                 # Echo back with prefix
#                 response = f"ECHO: {data.decode().strip()}\n"
#                 client_socket.sendall(response.encode())
                
#         except ConnectionResetError:
#             print("Client disconnected")
#         finally:
#             client_socket.close()

# if __name__ == "__main__":
#     # For your case (replace with your actual PC IP if needed)
#     server = EchoTerminalServer(host='172.168.1.100', port=5000)
#     server.start()

import socket
client = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

# connect to the server; enter your server's IP and port here, as
#  printed by the board's serial interface
client.connect(("192.168.1.10", 5000))
# specify the number of bytes we're requesting from the server
# change this as desired, several values up to 50k have been tested
# for much more, more than two bytes would need to be used to
#  specify length
num_bytes = 500

# arbitrary packet size, max number of bytes we'll receive at once
packet_size = 256

# send two bytes representing num_bytes to request that many bytes
#  in response
# note: little endian is important, requirement for Zynq-7000 to
#       easily translate the sent number to an int without reordering
print(f"requesting {num_bytes.to_bytes(2, 'little')} bytes")
client.send(num_bytes.to_bytes(2, 'little'))

# loop while calling recv to receive data from the client until the
# expected number of bytes has been successfully transferred
received = 0
errors = 0
while received < num_bytes:
    data = client.recv(packet_size)
    for d in range(len(data)):
        expected_value = (received + d) & 0xff
        if data[d]!= expected_value: # validate data
            print(f"Error, data[{d}] ({data[d]}) != {expected_value}")
            errors += 1
            
    received += len(data)
    print(f"Received {received} bytes total, {len(data)} in this recv")
    
if errors == 0:
    print("All data received matched the expected values!")
else:
    print(f"{errors} errors")