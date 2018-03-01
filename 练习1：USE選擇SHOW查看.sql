--关键字( key word)作为 MYSQL语言组成部分的一个保留字。决不要用关键字命名一个表或列。

--打开test数据库
mysql> use test;
Database changed

--返回可用数据库的一个列表
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| test               |
| world              |
+--------------------+
6 rows in set (0.00 sec)

--返回当前当前选择数据库的可用表的一个列表.
mysql> show tables;
Empty set (0.00 sec)

--打開world數據庫
mysql> use world;
Database changed

--查看world裏面的表.
mysql> show tables;
+-----------------+
| Tables_in_world |
+-----------------+
| city            |
| country         |
| countrylanguage |
+-----------------+
3 rows in set (0.00 sec)

--show也可以用來顯示表列,下面這個語句寫錯了.
mysql> show columns from tables;
ERROR 1146 (42S02): Table 'world.tables' doesn't exist

--顯示city表中的表列.
mysql> show columns from city;
+-------------+----------+------+-----+---------+----------------+
| Field       | Type     | Null | Key | Default | Extra          |
+-------------+----------+------+-----+---------+----------------+
| ID          | int(11)  | NO   | PRI | NULL    | auto_increment |
| Name        | char(35) | NO   |     |         |                |
| CountryCode | char(3)  | NO   | MUL |         |                |
| District    | char(20) | NO   |     |         |                |
| Population  | int(11)  | NO   |     | 0       |                |
+-------------+----------+------+-----+---------+----------------+
5 rows in set (0.00 sec)

--SHOW STATUS,用于显示广泛的服务器状态信息;
--SHOW CREATE DATABASE和 SHOW CREATE TABLE,分别用来显示创建特定数据库或表的 MYSQL语句;
--SHOW GRANTS,用来显示授予用户(所有用户或特定用户)的安全权限;
--SHOW ERRORS和 SHOW WARNINGS,用来显示服务器错误或警告消息。


