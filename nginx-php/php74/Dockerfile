FROM centos:7
LABEL maintainer="whsir <wh@whsir.com>"
RUN yum install net-tools epel-release -y \
    && rpm -ivh http://mirrors.wlnmp.com/centos/wlnmp-release-centos.noarch.rpm \
    && yum install wnginx -y \
    && yum install wphp74* -y \
    && sed -i 's/#include enable-php74.conf;/include enable-php74.conf;/' /usr/local/nginx/conf/vhost/demo.conf
EXPOSE 80
COPY ./start.sh /start.sh
CMD ["/bin/bash","/start.sh"]