# collectd rpm builder

This is a docker-based script to build RPMs for collectd and its plugins targeting CentOS.

## Usage

1. Obtain `collectd.spec` or use the provided ones under `SPECS/`. The spec file can be obtained from the source files (https://collectd.org/files/), usually existing under `contrib/redhat/` directory after uncompressing the original tarball. Please ensure the `Version:` tag is the same as the version of the tarball.

1. Copy `collectd.spec` for the version you want to build to `SPECS/collectd.spec`

2. Run `make` to build rpms for centos7 (default), or its derivatives:

    ```
    make # build for centos7
    make centos6 # build for centos6
    ```

3. If successful, the rpm files should be under `RPMS/` directory:

    ```
    $ tree RPMS/
    RPMS/
    └── x86_64
        ├── collectd-4.10.9-1.el6.x86_64.rpm
        ├── collectd-apache-4.10.9-1.el6.x86_64.rpm
        ├── collectd-debuginfo-4.10.9-1.el6.x86_64.rpm
        ├── collectd-dns-4.10.9-1.el6.x86_64.rpm
        ├── collectd-email-4.10.9-1.el6.x86_64.rpm
        ├── collectd-ipmi-4.10.9-1.el6.x86_64.rpm
        ├── collectd-java-4.10.9-1.el6.x86_64.rpm
        ├── collectd-mysql-4.10.9-1.el6.x86_64.rpm
        ├── collectd-nginx-4.10.9-1.el6.x86_64.rpm
        ├── collectd-nut-4.10.9-1.el6.x86_64.rpm
        ├── collectd-ping-4.10.9-1.el6.x86_64.rpm
        ├── collectd-postgresql-4.10.9-1.el6.x86_64.rpm
        ├── collectd-rrdtool-4.10.9-1.el6.x86_64.rpm
        ├── collectd-sensors-4.10.9-1.el6.x86_64.rpm
        ├── collectd-snmp-4.10.9-1.el6.x86_64.rpm
        ├── collectd-virt-4.10.9-1.el6.x86_64.rpm
        ├── collectd-web-4.10.9-1.el6.x86_64.rpm
        └── perl-Collectd-4.10.9-1.el6.x86_64.rpm

    1 directory, 18 files
    ```
