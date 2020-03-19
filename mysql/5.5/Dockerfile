FROM centos:7
LABEL maintainer="whsir <wh@whsir.com>"
RUN rpm -ivh http://mirrors.wlnmp.com/centos/wlnmp-release-centos.noarch.rpm \
    && yum install wmysql55 -y
CMD ["/usr/local/mysql/bin/mysqld_safe","--datadir=/data/mysql","--pid-file=/data/mysql/localhost.localdomain.pid"]