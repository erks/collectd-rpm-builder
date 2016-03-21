#!/bin/bash

set -e
set -o pipefail

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
