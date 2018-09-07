#!/bin/bash
cd /root
git clone https://github.com/IlyaSergeyev/crontab-clearlinux.git rpmbuild
cd rpmbuild
rpmbuild -v -bb --buildroot=/root/rpmbuild/BUILDROOT SPECS/cronie.spec
cd RPMS/x86_64
rpm -Uvh --replacefiles cronie-1.5.1-9.x86_64.rpm cronie-noanacron-1.5.1-9.x86_64.rpm --force
systemctl enable crond.service
systemctl start crond

