# mysql57

```
docker pull mysql/mysql-server:5.7
docker run --name=mysql57 --rm -d mysql/mysql-server:5.7
docker inspect mysql57
```

`docker logs mysql57` (get mysql password)
`docker exec -it mysql57 "mysql -u root -p"`
cyR3Dl4z*uB*YDOwIx,@P8ynis0

`ALTER USER 'root'@'localhost' IDENTIFIED BY 'dante';`

As of MySQL 5.7.6, use: `ALTER USER user IDENTIFIED BY 'dante';`
Before 5.7.6, use: `SET PASSWORD FOR user = PASSWORD('dante');`

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
