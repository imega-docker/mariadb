# mysql - WE RUSH!

This is docker image to run a MySQL database server.

[![](https://images.microbadger.com/badges/image/imega/mysql.svg)](http://microbadger.com/images/imega/mysql "Get your own image badge on microbadger.com") [![CircleCI](https://circleci.com/gh/imega-docker/mysql.svg?style=svg)](https://circleci.com/gh/imega-docker/mysql) [![GitHub stars](https://img.shields.io/github/stars/badges/shields.svg?style=social&label=Star&maxAge=2592000)](https://github.com/imega-docker/mysql)

Image size: 149.4 MB

From image: alpine:3.5

Mysql Server: 10.1.21-r0

## FREE ACCESS to server! Why?

You are using image docker inside your infrastructure of docker. Take care to protect its!

## NO SQL DUMPS! SAVE TIME!
Connect your DB thouth volume.

```
-v /my/database:/var/lib/mysql
```

## You start with a clean slate?
Mount empty folder into volume.

## INCLUDE YOUR CONFIG
This is a simple

```
-v /my/custom/configs:/etc/mysql/conf.d
```

## QUICK START
```
$ docker run -d imega/mysql
```

## TRY NOW
Make container with mysql server

```
$ mkdir -p /tmp/empty/db

$ docker run --rm --name "mysqlsrv" -v /tmp/empty/db:/data imega/mysql

```
Ok. Make empty folder for data and server up.

Now, you make container with mysql client.

```
$ docker run --rm -it --link mysqlsrv:server imega/mysql-client mysql --host=server
```

Ok. You into container.

Woooow!

```
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
+--------------------+
1 row in set (0.00 sec)
```

Try create database

```
mysql> create database imega;
Query OK, 1 row affected (0.00 sec)

mysql> use imega;
Database changed

mysql> CREATE TABLE `users` (`id` BIGINT(20) NOT NULL AUTO_INCREMENT,`name` CHAR(30) NOT NULL,`age` SMALLINT(6) NOT NULL,PRIMARY KEY(`id`));
Query OK, 0 rows affected (0.01 sec)

mysql> insert into users (id, name, age) value (1,'first',33);
Query OK, 1 row affected (0.01 sec)

mysql> select * from users;
+----+-------+-----+
| id | name  | age |
+----+-------+-----+
|  1 | first |  33 |
+----+-------+-----+
1 row in set (0.00 sec)

```

Now you see in folder /tmp/empty/db

## Thanks for reading!

### Alpine Packages
  - musl (1.1.15-r6)
  - mariadb-common (10.1.21-r0)
  - busybox (1.25.1-r0)
  - libaio (0.3.110-r0)
  - libressl2.4-libcrypto (2.4.4-r0)
  - ncurses-terminfo-base (6.0-r7)
  - ncurses-terminfo (6.0-r7)
  - ncurses-libs (6.0-r7)
  - libressl2.4-libssl (2.4.4-r0)
  - libgcc (6.2.1-r1)
  - libstdc++ (6.2.1-r1)
  - zlib (1.2.8-r2)
  - mariadb (10.1.21-r0)
  - mysql (10.1.21-r0)

## The MIT License (MIT)

Copyright © 2015 iMega <info@imega.ru>

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
