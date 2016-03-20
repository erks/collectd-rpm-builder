# collectd rpm builder

This is a docker-based script to build collectd and its plugins rpms for CentOS.

## Usage

```
docker-compose run --rm <os_name> <collectd_spec_file>
```

Where:
- `os_name` is either `centos5`, `centos6`, or `centos7`
- `collectd_spec_file` is the spec file name in `SPECS/` directory. Default is `collectd.spec`, w hich does not exist.
