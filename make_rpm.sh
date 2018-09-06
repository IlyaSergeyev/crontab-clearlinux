#!/bin/bash
cd /root
git clone https://github.com/IlyaSergeyev/crontab-clearlinux.git rpmbuild
cd rpmbuild
rpmbuild -v -bb --clean SPECS/cronie.spec
cd RPMS/x86_64
rpm -ivh cronie-1.5.1-9.x86_64.rpm
