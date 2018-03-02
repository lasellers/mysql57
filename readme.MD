# mysql57

Docker + Oracle + Mysql-5.7

Parameter
MYSQL_ROOT_PWD : root Password default "mysql"
MYSQL_USER : new User
MYSQL_USER_PWD : new User Password
MYSQL_USER_DB : new Database for new User

## Build image
`docker build --tag lasellers/mysql57 .`

## Run with random password
docker run --rm -d -p 3306:3306 --name=mysql57 lasellers/mysql57
`docker logs mysql57` (get mysql password)
`docker exec -it mysql57 "mysql -u root -p"`
iJ$EsUhovYPpUHOdH@zW0KXeRM4

`ALTER USER 'root'@'localhost' IDENTIFIED BY 'dev';`

As of MySQL 5.7.6, use: `ALTER USER user IDENTIFIED BY 'dev';`
Before 5.7.6, use: `SET PASSWORD FOR user = PASSWORD('dev');`

## Details
`docker inspect mysql57`


## Example SQL statements
```
create database test1;
use test1;
show tables;
CREATE TABLE t1 (jdoc JSON);
INSERT INTO t1 VALUES('{"key1": "value1", "key2": "value2"}');
SELECT JSON_TYPE('["a", "b", 1]');
SELECT JSON_TYPE('"hello"');
SELECT JSON_ARRAY('a', 1, NOW());
SELECT JSON_OBJECT('key1', 1, 'key2', 'abc');

SET @j = JSON_OBJECT('key', 'value');
SELECT @j;

INSERT INTO t1 VALUES('{"id": "2", "color": "red"}');
INSERT INTO t1 VALUES('{"id": "3", "color": "blue"}');
INSERT INTO t1 VALUES('{"id": "4", "color": "blue", "make": "Ford"}');

SELECT * FROM t1 WHERE JSON_CONTAINS_PATH(jdoc,'all','$.id');
SELECT * FROM t1 WHERE JSON_CONTAINS_PATH(jdoc,'all','$.make');
```
