#!/bin/bash

set -e
set -o pipefail

yum -y update
yum -y install epel-release

# http://giovannitorres.me/how-to-setup-an-rpm-build-environment-on-centos-6.html
yum -y groupinstall 'Development Tools'
yum -y install rpmdevtools yum-utils
rpmdev-setuptree
yum -y install which java-1.6.0-openjdk-devel-1.6.0.38
