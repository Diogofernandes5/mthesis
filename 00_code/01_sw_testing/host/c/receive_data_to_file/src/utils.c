#include "utils.h"

#include <stdio.h>
#include <stdint.h>
// #include <string.h>

void check_sequence(int *data, int *golden_vect, size_t size) {
	uint32_t error = 0;
	
    for (size_t i = 0; i < size; ++i) {
        if (data[i] != golden_vect[i]) {
            printf("Mismatch at index %zu: got %d(%X), expected %d(%X)\n\r", i, data[i], data[i], golden_vect[i], golden_vect[i]);
            error++;
        }
        // else if(i < 10)
        // 	printf("Index %zu: got %d(%X), expected %d(%X)\n\r", i, data[i], data[i], golden_vect[i], golden_vect[i]);
    }

    if(error)
    	return;
    
    printf("Data is correct!\n");
}

void write_sensor_data_to_file(const int *data_buf, const char *filepath, const int client_index, const int id, const int len)
{
    FILE *fd;
    char fn[256];

    sprintf(fn, "%s/client%d/inputs/%d%s", filepath, client_index, id,".txt"); // "/client*x*/inputs/*id*.txt

    /* Open RE Golden file */
    fd = fopen(fn, "a");
    if (fd == NULL)
        panic("Opening file");

    for (int i = 0; i < len; i++)
        fprintf(fd, "%d", data_buf[i]);

    fclose(fd);
}

int *read_golden_file(const char *filename_re, const char *filename_im, int len)
{
	FILE *fd_golden;
    size_t capacity = len;
    size_t count = 0;
    int value;

	/* Open RE Golden file */
	fd_golden = fopen(filename_re, "r");
	if (fd_golden == NULL)
		panic("Opening file");

	int *golden_values = malloc(len * sizeof(int));
    if (!golden_values) {
        perror("Memory allocation failed");
        fclose(fd_golden);
        return NULL;
    }

    while (fscanf(fd_golden, "%d", &value) == 1) {
        if (count >= capacity) {
            capacity *= 2;
            int *temp = realloc(golden_values, capacity * sizeof(int));
            if (!temp) {
                perror("Reallocation failed");
                free(golden_values);
                fclose(fd_golden);
                return NULL;
            }
            golden_values = temp;
        }
        golden_values[count++] = value;
    }

    fclose(fd_golden);

    /* Open RE Golden file */
	fd_golden = fopen(filename_im, "r");
	if (fd_golden == NULL)
		panic("Opening file");

	while (fscanf(fd_golden, "%d", &value) == 1) {
        if (count >= capacity) {
            capacity *= 2;
            int *temp = realloc(golden_values, capacity * sizeof(int));
            if (!temp) {
                perror("Reallocation failed");
                free(golden_values);
                fclose(fd_golden);
                return NULL;
            }
            golden_values = temp;
        }
        golden_values[count++] = value;
    }

    fclose(fd_golden);

    return golden_values;
}