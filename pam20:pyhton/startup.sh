#! /bin/bash

useradd unix01
useradd unix02
useradd unix03
echo -e "unix01\nunix01\n" | passwd --stdin unix01
echo -e "unix02\nunix02\n" | passwd --stdin unix02
echo -e "unix03\nunix03\n" | passwd --stdin unix03

cp /opt/docker/login.defs /etc/login.defs

# pam aware
pip install python-pam

# pam_python.so // pam_mates.py
tar xvzf pam-python-1.0.8.tar.gz
cp /opt/docker/features.h /usr/include/features.h
cd /opt/docker/pam-python-1.0.8 
make
cp src/pam_python.so /usr/lib64/security/.
cd -
cp /opt/docker/chfn  /etc/pam.d/chfn

/bin/bash

