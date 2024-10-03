---
order: 0.1
title: sql
description: 구조화된 쿼리 언어 (SQL)
tags:
- database language
- qurey language
- sql
created_time: 2024-10-03 19:41
modified_time: 2024-10-04 00:13
---

# SQL
Structured Query Language  
: RDBMS의 데이터를 조작 및 관리하기 위한 쿼리 언어  
: 벤더사별 지원하는 데이터 타입, 내장 함수 등에 차이가 있음         

**structured**  
: 데이터가 테이블 형태로 구조화되어 있어 구조화된 데이터를 다루는 의미

- [SQL Syntax](./sql-syntax.md)
- [SQL Command](./sql-command.md)
  - [DDL](./sql-command.md#ddl)
  - [DML](./sql-command.md#dml)
  - [DCL](./sql-command.md#dcl)
- [SQL Data Type](./sql-data-type.md)
- [SQL Operator](./sql-operator.md)
- SQL Built-in Function
  - [Single-Row Function](./sql-single-row-function.md)
  - [Multi-Row Function](./sql-multi-row-function.md)
- SQL JOIN
- SQL Sub Query
- SQL Index



## SQL Extension
= SQL Dialect (특정 DBMS의 특성에 맞게 변형된 SQL)  
: SQL 방언, SQL 확장, 특화된 SQL  
: 벤더사에서 표준 SQL에 없는 기능을 추가한 SQL  
: RDBMS 제품이 SQL 표준보다 먼저 나와 벤더사에 따라 문법 차이 존재  

DBMS | SQL
---|---
Oracle | PL/SQL
PostgreSQL | PL/pgSQL
MySQL, MariaDB | SQL/PSM 
MSSQL, Sybase  | T-SQL, Transact-SQL 
Cassandra      | CQL