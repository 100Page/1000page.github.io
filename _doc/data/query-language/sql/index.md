---
order: 0.1
title: sql
description: 구조화된 쿼리 언어 (SQL)
summary:
keywords:
- database language
- guery language
- structured guery language
- sql
- 구조화된 쿼리 언어
tags:
- sql
- language
created_time: 2024-10-03 19:41
modified_time: 2024-10-27 22:16
---

# SQL
Structured Query Language  
: RDBMS의 데이터를 조작 및 관리하기 위한 쿼리 언어  
: 벤더사별 지원하는 데이터 타입, 내장 함수 등에 차이가 있음  

**structured**  
: 데이터가 테이블 형태로 구조화되어 있어 구조화된 데이터를 다루는 의미

- [SQL Standard](#sql-standard)
  - [SQL Extension](#sql-extension)
- [SQL Syntax](./sql-syntax.md)
- [SQL Command](./sql-command.md)
  - [DDL](./sql-command.md#ddl)
  - [DML](./sql-command.md#dml)
  - [DCL](./sql-command.md#dcl)
  - [TCL](./sql-command.md#tcl)
- [SQL Data Type](./sql-data-type.md)
- [SQL Operator](./sql-operator.md)
- SQL Built-in Function
  - [Single-Row Function](./sql-single-row-function.md)
  - [Multi-Row Function](./sql-multi-row-function.md)
- SQL JOIN
- SQL Sub Query
- SQL Index
- Query Performance



## SQL Standard
= ANSI SQL  
: 미국 표준 협회인 ANSI에서 정의한 SQL 표준 규격  
: 초기 SQL은 벤더사 별로 독립적으로 구현해 다양한 문법과 기능이 존재함  
: 이를 해소하고자 ANSI와 ISO에서 표준 SQL을 정의해 공통 문법과 기본 기능을 제정  

개념 | 설명
---|---
호환성 | 모든 RDBMS에서 호환되는 SQL 기본 문법 정의
독립성 | 특정 데이터베이스 시스템에 종속되지 않음


**버전**
- SQL-86
- SQL-92
- SQL:1999
- ...
- SQL:2011



### SQL Extension
= SQL Dialect  
: SQL 방언, SQL 확장, 특화된 SQL  
: RDBMS 제품이 SQL 표준보다 먼저 나와 벤더사에 따라 문법 차이 존재  
: 벤더사에서 표준 SQL에 없는 기능을 자체적으로 추가한 SQL  

DBMS | SQL 방언 | 고유 기능
---|---|---
Oracle | PL/SQL | DECODE 함수, 패키지, 커서, 트리거, 프로시저 
PostgreSQL | PL/pgSQL | 고유 데이터 타입, RETURNING 함수, 배열, 테이블 상속
MySQL, MariaDB | SQL/PSM | LIMIT 함수, 사용자 정의 변수, 커서, 프로시저
MSSQL, Sybase  | T-SQL, Transact-SQL | 고유 데이터 타입, ROW_NUMBER 함수, 예외처리