FROM alpine:latest
LABEL maintainer="whsir <wh@whsir.com>"
ENV NGX_VERSION="1.18.0" \
    OPENSSL_VERSION="1.1.1g"
RUN apk upgrade \
    && adduser www -u 1011 -D -H -s /sbin/nologin \
    && apk add --no-cache -t mysoft gcc libc-dev pcre-dev zlib-dev openssl-dev perl-dev make linux-headers \
    && wget http://nginx.org/download/nginx-${NGX_VERSION}.tar.gz \
    && tar xf nginx-${NGX_VERSION}.tar.gz \
    && rm -f nginx-${NGX_VERSION}.tar.gz \
    && cd nginx-${NGX_VERSION} \
    && wget https://www.openssl.org/source/openssl-${OPENSSL_VERSION}.tar.gz \
    && tar xf openssl-${OPENSSL_VERSION}.tar.gz \
    && rm -f openssl-${OPENSSL_VERSION}.tar.gz \
    && sed -i s'/CFLAGS="$CFLAGS -g"//' /nginx-${NGX_VERSION}/auto/cc/gcc \
    && sed -i s'/# debug//' /nginx-${NGX_VERSION}/auto/cc/gcc \
    && ./configure --user=www --group=www --prefix=/usr/local/nginx --with-http_stub_status_module --with-http_ssl_module --with-http_v2_module --with-http_gzip_static_module --with-http_sub_module --with-openssl=openssl-${OPENSSL_VERSION} \
    && make \
    && make install \
    && apk del mysoft \
    && apk add --no-cache pcre-dev \
    && rm -rf /nginx-${NGX_VERSION} \
    && rm -f /var/cache/apk/*
COPY nginx.conf /usr/local/nginx/conf/
COPY demo.conf /usr/local/nginx/conf/vhost/
EXPOSE 80
CMD ["/usr/local/nginx/sbin/nginx","-g","daemon off;"]
