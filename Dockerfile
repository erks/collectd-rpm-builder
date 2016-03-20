FROM centos:centos6

# http://giovannitorres.me/how-to-setup-an-rpm-build-environment-on-centos-6.html
RUN yum -y update
RUN yum -y groupinstall 'Development Tools'
RUN yum -y install rpmdevtools yum-utils
RUN rpmdev-setuptree

RUN wget http://download.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
RUN rpm -ivh epel-release-6-8.noarch.rpm

RUN yum -y install java-1.6.0-openjdk-1.6.0.38
ENV JAVA_HOME /usr/lib/jvm/java-1.6.0-openjdk-1.6.0.38.x86_64

COPY entrypoint.sh /
COPY SPECS/* /root/rpmbuild/SPECS/
COPY SOURCES/* /root/rpmbuild/SOURCES/
ENTRYPOINT ["/entrypoint.sh"]
CMD ["collectd.spec"]
