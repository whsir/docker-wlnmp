FROM centos:7
LABEL maintainer="whsir <wh@whsir.com>"
RUN yum install net-tools -y \
    && rpm -ivh http://mirrors.wlnmp.com/centos/wlnmp-release-centos.noarch.rpm \
    && yum install wnginx -y
EXPOSE 80
CMD ["/usr/local/nginx/sbin/nginx","-g","daemon off;"]