FROM centos:7
MAINTAINER blog.whsir.com
ENV TIME_ZOME Asia/Shanghai

RUN yum update -y \
    && yum install net-tools -y \
    && yum install epel-release -y \
    && rpm -ivh http://mirrors.wlnmp.com/centos/wlnmp-release-centos.noarch.rpm \
    && yum install wnginx -y

WORKDIR /usr/local/nginx/
EXPOSE 80
CMD ["./sbin/nginx","-g","daemon off;"]
