FROM centos:7
LABEL maintainer="whsir <wh@whsir.com>"
RUN yum install net-tools epel-release -y \
    && rpm -ivh http://mirrors.wlnmp.com/centos/wlnmp-release-centos.noarch.rpm \
    && yum install wnginx -y \
    && yum install wphp74* -y
EXPOSE 80
ADD start.sh /start.sh
CMD ["/bin/bash","/start.sh"]