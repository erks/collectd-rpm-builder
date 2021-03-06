FROM centos:centos7

COPY install.sh /
RUN /install.sh

COPY entrypoint.sh /
COPY SPECS/* /root/rpmbuild/SPECS/
COPY SOURCES/* /root/rpmbuild/SOURCES/
ENTRYPOINT ["/entrypoint.sh"]
CMD ["collectd.spec"]
