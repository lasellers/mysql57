# docker pull mysql/mysql-server:5.7
# docker run --name=mysql57 --rm -d mysql/mysql-server:5.7
# docker inspect mysql57
# docker logs mysql57 (get mysql password)
## docker exec -it mysql57 /bin/bash
# docker exec -it mysql57 "mysql -u root -p"
## mysql -u root -p
# cyR3Dl4z*uB*YDOwIx,@P8ynis0

## As of MySQL 5.7.6, use ALTER USER : mysql> ALTER USER user IDENTIFIED BY 'dante';
## Before 5.7.6, use SET PASSWORD : mysql> SET PASSWORD FOR user = PASSWORD('dante');
# ALTER USER 'root'@'localhost' IDENTIFIED BY 'dante';

FROM mysql/mysql-server@5.7
RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install -y nano
#RUN apt-get install -y libmcrypt-dev \
#    mysql-client libmagickwand-dev --no-install-recommends \
#    && pecl install imagick \
#    && docker-php-ext-enable imagick \
#    && docker-php-ext-install mcrypt pdo_mysql
## RUN apt-get install -y libapache2-mod-php5
#RUN docker-php-ext-install mbstring
#RUN docker-php-ext-install zip
#RUN docker-php-ext-install gd
#RUN apt-get install -y git
RUN apt-get install -y wget
RUN apt-get install -y curl

#RUN curl -sL https://deb.nodesource.com/setup_7.x | bash -
#RUN apt-get install -y nodejs
WORKDIR /var/www
EXPOSE 80
RUN "/bin/bash"
#ENTRYPOINT /usr/sbin/httpd -D FOREGROUND

# create database test1;
# use test1;
# show tables;
# CREATE TABLE t1 (jdoc JSON);
# INSERT INTO t1 VALUES('{"key1": "value1", "key2": "value2"}');
# SELECT JSON_TYPE('["a", "b", 1]');