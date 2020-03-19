FROM centos:7
LABEL maintainer="whsir <wh@whsir.com>"
RUN yum install epel-release -y \
    && rpm -ivh http://mirrors.wlnmp.com/centos/wlnmp-release-centos.noarch.rpm \
    && yum install wphp74* -y
CMD ["/usr/local/php/sbin/php-fpm","-F"]