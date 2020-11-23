#! /bin/bash

useradd user01
useradd user02
useradd user03
echo -e "user01\nuser01\n" | passwd --stdin user01
echo -e "user02\nuser02\n" | passwd --stdin user02
echo -e "user02\nuser02\n" | passwd --stdin user02

cp /opt/docker/login.defs /etc/login.defs
/bin/bash
