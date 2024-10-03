---
order: 0.14
title: database
description: 데이터베이스 언어
tags:
- data
- database
created_time: 2024-10-03 18:24
modified_time: 2024-10-03 18:42
---

# Database Language
: 데이터베이스를 정의하고 조작하는데 사용되는 언어  
: 데이터 정의, 조작, 제어 등을 수행하기 위한 추상적인 명령어의 집합  

- [데이터 정의](#ddl)
- [데이터 조작](#dml)
- [데이터 제어](#dcl)
- [트랜잭션 제어](#tcl)


**구현체**
- SQL
- OQL
- MQL 
- CQL
- GraphQL


## DDL
Data Description Language  
: 데이터 정의 언어  
: 데이터베이스 객체를 정의하고 구조를 설정하는 언어  

- CREATE
- ALTER
- DROP
- RENAME
- TRUNCATE
- COMMENT



## DML
Data Manipulation Language  
: 데이터 조작 언어  
: 데이터베이스의 데이터를 조작하는 언어  

- INSERT 
- SELECT
- UPDATE
- DELETE 
- MERGE 
- CALL
- EXPLIN PLAN



## DCL 
Data Control Language  
: 데이터 제어 언어  
: 데이터베이스를 사용하는 사용자에 대한 접근과 사용 권한을 제어하는 언어  

- GRANT
- REVOKE



## TCL
Transaction Control Language  
: 트랜잭션 제어 언어  
: 데이터베이스의 트랜잭션을 관리하는 언어  

- ROLLBACK
- COMMIT