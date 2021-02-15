#/bin/bash

echo 'net.ipv4.ip_local_port_range = 1024 65535' | sudo tee -a /etc/sysctl.conf
echo 'fs.file-max = 5000000' | sudo tee -a /etc/sysctl.conf
echo 'net.core.somaxconn = 500' | sudo tee -a /etc/sysctl.conf
echo '* soft nproc 5000000' | sudo tee -a /etc/security/limits.conf
echo '* hard nproc 5000000' | sudo tee -a /etc/security/limits.conf
echo '* soft nofile 5000000' | sudo tee -a /etc/security/limits.conf
echo '* hard nofile 5000000' | sudo tee -a /etc/security/limits.conf
