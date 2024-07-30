#include <iostream>
#include "pcie_dev.h"

uint32_t ddr_size = 1024*32;
uint32_t led_state = 0;

void setLed(int id, int state)
{
    switch (id) {
    case 1:
        if (state)
            led_state |= 0x2;
        else
            led_state &= 0xd;
    case 2:
        if (state)
            led_state |= 0x4;
        else
            led_state &= 0xb;
    default: //id 0
        if (state)
            led_state |= 0x1;
        else
            led_state &= 0xe;
    }

    write_user(0, led_state);
}

void bramTest()
{
    bool  result = true;
    uint32_t i, temp;
    for (i = 0; i < 512; i+=4)
        write_user(0x10000+i, i);

    for (i = 0; i < 512; i+=4) {
        read_user(0x10000+i, &temp);
        if (temp != i) {
            std::cout << "BRAM error i=" << i << " temp="<< temp << std::endl;
            result = false;
            break;
        }
    }

    if (result)
        std::cout<<"BRAM test pass!" << std::endl;
    else
        std::cout<<"BRAM test failed..." << std::endl;
}

int main(int argc, char *argv[])
{
    bool     status = false;
    uint32_t i;
    if (pcie_init() < 0) {
        std::cout<<"failed to init pcie..." << std::endl;
        return -1;
    }

    if (pcie_open() < 0) {
        std::cout<<"failed to open pcie..." << std::endl;
        return -1;
    }

    //test DDR
    uint32_t buf1[ddr_size], buf2[ddr_size];
    for (i = 0; i < ddr_size; i++) {
        buf1[i] = i;
    }

    h2c_transfer(0, ddr_size*4, (char *)buf1);
    c2h_transfer(0, ddr_size*4, (char *)buf2);
    for (i = 0; i < ddr_size; i++) {
        if (buf1[i] != buf2[i]) {
            std::cout<< "buf1 != buf2 in i "<< i <<std::endl;
            status = true;
            break;
        }
    }
    if (status)
        std::cout<< "DDR test failed..." << std::endl;
    else
        std::cout<< "DDR test pass!" << std::endl;

    char sendBuf[128] = "this is a test";
    char recvBuf[128];
    h2c_transfer(100, sizeof(sendBuf), sendBuf);
    c2h_transfer(100, 128, recvBuf);
    std::cout<<"read buffer:" << recvBuf << std::endl;

    //test BAR/GPIO
    setLed(0, 0);
    setLed(1, 0);
    setLed(2, 0);

    bramTest();

    pcie_close();
    return 0;
}
