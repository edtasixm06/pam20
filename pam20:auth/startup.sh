#! /bin/bash

useradd unix01
useradd unix02
useradd unix03
echo -e "unix01\nunix01\n" | passwd --stdin unix01
echo -e "unix02\nunix02\n" | passwd --stdin unix02
echo -e "unix03\nunix03\n" | passwd --stdin unix03

authconfig --savebackup unix
bash auth.sh

#cp /opt/docker/ldap.conf /etc/openldap/ldap.con
#cp /opt/docker/nsswitch.conf /etc/nsswitch.conf
#cp /opt/docker/nslcd.conf /etc/nslcd.conf
cp /opt/docker/system-auth /etc/pam.d/system-auth-ac
cp /opt/docker/pam_mount.conf.xml /etc/security/pam_mount.conf.xml
authconfig --savebackup ldap

#/sbin/nscd
/sbin/nslcd

/bin/bash

