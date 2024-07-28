#ifndef PCIE_DEV_H
#define PCIE_DEV_H

#ifdef __cplusplus
extern "C" {
#endif

#include <assert.h>
#include <fcntl.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <errno.h>

#include <byteswap.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <sys/types.h>

int pcie_init();
int pcie_open();
void pcie_close();
long h2c_transfer(long offset, unsigned long size, char* snd_content);
long c2h_transfer(long offset, unsigned long size, char* rcv_content);
void write_user(long offset, uint32_t value);
void read_user(long offset, uint32_t* value);

#ifdef __cplusplus
}
#endif

#endif // PCIE_DEV_H
