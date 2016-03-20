#!/bin/bash

set -e
set -o pipefail

if [[ "$1" == *.spec ]]; then
	# http://giovannitorres.me/how-to-build-rpms-collectd-example.html
	cd ${HOME}/rpmbuild/SPECS
	spectool -g -R $1
	yum-builddep -y $1
	QA_RPATHS=0x0001 rpmbuild -bb $1
else
	exec "$@"
fi
