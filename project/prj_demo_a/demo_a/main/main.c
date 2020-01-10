#include <stdio.h>
#include <stdint.h>
#include "Config.h"
#include "fun1.h"
// extern void fun1();

void  main(int argc, char *argv[])
{
    uint32_t i = 0;
    while(1)
    {
        printf("loop number is %u\n",i--);
        printf("[%s:%u]the VERSION_MAJOR is %u\n",__FUNCTION__,__LINE__,VERSION_MAJOR);
        printf("[%s:%u]the VERSION_MINOR is %u\n",__FUNCTION__,__LINE__,VERSION_MINOR);
        fun1();
        sleep(1);
    }
   
   
}

