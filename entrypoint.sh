#!/bin/bash

set -e
set -o pipefail

export JAVA_HOME=/usr/lib/jvm/java-1.6.0-openjdk-1.6.0.38.x86_64
if [[ "$1" == *.spec ]]; then
	[ -e "${HOME}/rpmbuild/SPECS/$1" ] || (echo "SPECS/$1 does not exist" >&2 && exit 1)
	# http://giovannitorres.me/how-to-build-rpms-collectd-example.html
	cd ${HOME}/rpmbuild/SPECS
	spectool -g -R $1
	yum-builddep -y $1
	QA_RPATHS=0x0001 rpmbuild -bb $1
else
	exec "$@"
fi
