#!/usr/bin/env bash

#Installing development tools
yum groupinstall -y "Development tools" 
yum install -y zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel mysql-devel
    
#Installing Python 2.7.5 on Elastix 1.6
wget http://python.org/ftp/python/2.7.5/Python-2.7.5.tar.bz2
tar xf Python-2.7.5.tar.bz2
cd Python-2.7.5
./configure --prefix=/usr/local
make && make altinstall

#Installing Distribute
wget http://pypi.python.org/packages/source/d/distribute/distribute-0.6.49.tar.gz --no-check-certificate
tar xf distribute-0.6.49.tar.gz
cd distribute-0.6.49
python2.7 setup.py install

#Installing virtualenv and pip
easy_install-2.7 virtualenv

#Creating virtualenv directory and installation paths
mkdir /opt/NEXTOR && cd /opt/NEXTOR
virtualenv tarificador
cd tarificador
source bin/activate

#Installing django
pip install django MySQL-python
