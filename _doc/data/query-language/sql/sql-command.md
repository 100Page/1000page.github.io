---
order: 0.2
title: sql
description: SQL Command
summary:
keywords:
- database language
- guery language
- structured guery language
- sql
- sql command
tags:
- sql
- language
created_time: 2024-10-28 21:04
modified_time: 2024-10-29 22:47
---

# SQL Command
: SQL 문장을 기능에 따라 분류

- [DDL](#ddl)
- [DML](#dml)
- [DCL](#dcl)
- [TCL](#tcl)



## DDL
Data Definition Language  
: 데이터 정의 언어  
: 데이터 구조(스키마)를 생성, 수정, 제거하기 위한 명령어  

키워드 | 설명
---|---
CREATE   | 데이터베이스 객체 생성
ALTER    | 기존 객체 변경
DROP     | 기존 객체 제거
TRUNCATE | 테이블 구조는 유지하고 저장된 데이터만 삭제
RENAME   | 기존 객체 이름 수정 (표준이 아니며 일부 DBMS만 지원)

**특징**
- DDL 명령어 실행 후 자동으로 COMMIT됨
- 일부 DBMS에서는 DDL 명령어의 트랜잭션 롤백이 제한됨

**ALTER**
- 해당 컬럼에 데이터가 없는 경우 데이터 타입과 크기 변경 가능
- 해당 컬럼에 데이터가 있는 경우 데이터 크기를 크게 변경하는 것만 가능
- CHAR과 VARCHAR2 사이의 데이터 타입은 변경 가능


```sql
-- 데이터베이스 생성
CREATE DATABASE 데이터베이스이름;

-- 테이블 생성
CREATE TABLE 테이블명;
CREATE TABLE 테이블명(컬럼 데이터타입);

CREATE TABLE 테이블명 (
  컬럼 데이터타입 [DEFAULT 기본값] [NULL | NOT NULL],
  컬럼 데이터타입 [CONSTRAINT 제약조건명] PRIMARY KEY,
  컬럼 데이터타입 [CONSTRAINT 제약조건명] REFERENCES 참조테이블(참조컬럼)
);

-- 인덱스 생성
CREATE INDEX 인덱스명 ON 테이블명 (컬럼);

-- 뷰 생성
CREATE VIEW 뷰이름 AS SELECT 컬럼 FROM 테이블명 WITH 조건;


-- 테이블 변경
ALTER TABLE 테이블명 ADD 컬럼 데이터타입;
ALTER TABLE 테이블명 MODIFY 컬럼 데이터타입;
ALTER TABLE 테이블명 DROP 컬럼;

ALTER TABLE 테이블명 ADD CONSTRAINT 제약조건명;  
ALTER TABLE 테이블명 DROP CONSTRAINT 제약조건명;

-- 데이터베이스 제거
DROP DATABASE 데이터베이스이름;

-- 테이블 제거
DROP TABLE 테이블명;

-- 인덱스 제거
DROP INDEX 인덱스명;

-- 뷰 제거
DROP VIEW 뷰이름;


-- 데이터 삭제
TRUNCATE TABLE 테이블명;
```


제약 조건 | 설명
---|---
PRIMARY KEY | 각 행을 고유하게 식별하는 키 지정
FOREIGN KEY | 다른 테이블의 키와 연결을 맺는 키 지정
UNIQUE      | 특정 컬럼이 고유한 값이어야 함을 지정
NOT NULL    | 특정 컬럼에 NULL 값을 허용하지 않도록 지정
CHECK       | 컬럼의 값이 특정 조건을 만족해야 함을 지정
DEFAULT     | 특정 컬럼에 기본값을 설정


**Data Dictionary**  
: 데이터베이스 자원을 효율적으로 관리하기 위한 정보(메타데이터)를 저장하는 시스템 테이블  
: 테이블, 인덱스, 뷰, 사용자 권한, 데이터 타입 등 데이터베이스 관련 정보 제공  
: SHOW TABLES, DESCRIBE, INFORMATION_SCHEMA 명령어를 통해 정보 조회

테이블 | 설명
---|---
DBA_TABLES  | 데이터베이스의 모든 테이블 정보
ALL_TABLES  | 사용자가 접근 가능한 모든 테이블 정보
USER_TABLES | 사용자가 소유한 테이블 정보
USER_CONSTRAINTS | 사용자가 소유한 테이블의 제약조건 정보



## DML
Data Manipulation Language  
: 데이터 조작 언어  
: 데이터 삽입, 조회, 수정, 삭제를 위한 명령어  

키워드 | 설명
---|---
INSERT | 데이터 삽입
SELECT | 데이터 조회
UPDATE | 저장된 데이터 수정
DELETE | 저장된 데이터 삭제
MERGE  | 조건에 따라 INSERT + UPDATE 기능 수행

**특징**
- DML 명령어는 트랜잭션을 통해 실행된 작업을 COMMIT하거나 ROLLBACK 할 수 있음
- SELECT 문은 트랜잭션 대상이 아니며 나머지 명령어는 COMMIT을 명시해야 데이터 변경이 확정됨


```sql
-- 데이터 삽입
INSERT INTO 테이블명 (컬럼명..) VALUES (값..);
INSERT INTO 테이블명 (컬럼명..) SELECT 컬럼 FROM 테이블;

-- 데이터 조회
SELECT 컬럼명 FROM 테이블명;
SELECT 컬럼명 FROM 테이블명 WHERE 조건;

-- 데이터 수정
UPDATE 테이블명 SET 컬럼=값 WHERE 조건;

-- 데이블 삭제
DELETE FROM 테이블명 WHERE 조건;
DELETE FROM 테이블명;

-- 데이터 병합
MERGE INTO 타겟테이블 
USING 소스테이블 
ON (조건식)
WHEN MATCHED THEN UPDATE SET 컬럼=값
WHEN NOT MATCHED THEN INSERT (컬럼) VALUES (값);
```



## DCL
Data Control Language   
: 데이터 관리 언어  
: 사용자 권한을 관리 및 제어하는 명령어  

DCL | 설명
---|---
GRANT    | 객체에 대한 권한 부여
REVOKE   | 객체에 대한 권한 박탈


```sql
-- 권한 부여
GRANT 권한 ON 객체 TO 사용자;

-- 모든 권한 부여
GRANT ALL PRIVILEGES ON 객체 TO 사용자;

-- 권한 회수
REVOKE 권한 ON 객체 FROM 사용자;

-- 모든 권한 회수
REVOKE ALL PRIVILEGES 권한 ON 객체 FROM 사용자;
```



## TCL  
Transaction Control Language  
: 트랜잭션 제어 언어  
: 트랜잭션을 제어하기 위한 명령어  


키워드 | 설명
---|---
COMMIT | 수행한 작업 영구 저장
ROLLBACK | 수행한 작업을 취소하고 이전 상태로 되돌림


```sql
-- 트랜잭션 시작
START TRANSACTION;

-- 트랜잭션 완료
COMMIT;

-- 트랜잭션 취소
ROLLBACK;

-- 저장점 생성
SAVEPOINT 저장점명;

-- 저장점까지 롤백
ROLLBACK TO 저장점명;
```



### Transaction
: 데이터베이스의 상태를 변환시키는 하나의 논리적 작업 단위  
: 하나의 트랜잭션은 ACID를 원칙을 지켜야 하며 이를 통해 데이터베이스의 일관성과 무결성이 유지됨  
: DDL과 DCL 명령어는 작업이 완료되면 트랜잭션을 자동으로 COMMIT함  

원칙 | 설명
---|---
원자성 | 트랜잭션 연산은 모두 성공하거나 모두 실패해야 함
일관성 | 트랜잭션 실행 여부와 상관없이 데이터베이스는 일관된 상태를 유지해야 함
격리성 | 동시에 실행되는 트랜잭션들이 서로 영향을 미치지 않아야 함
지속성 | 성공적으로 완료된 트랜잭션 결과는 영구적으로 반영되어야 함


**트랜잭션 상태**
```
시작 => 활동 => 부분 완료 => 완료
                   |
                  실패 => 철회
```


**트랜잭션 격리 수준**  
: 데이터베이스에 여러 사용자가 동시에 접근할 경우 격리 수준을 통해 데이터의 일관성과 무결성 보장  
: 일부 DBMS는 격리 수준을 다르게 지원하며 일부 DBMS는 특정 격리 수준을 기본값으로 설정하기도 함  

수준 | 설명
---|---
READ UNCOMMITTED | 다른 트랜잭션의 커밋되지 않은 변경 사항을 읽을 수 있음
READ COMMITTED   | 다른 트랜잭션이 커밋한 데이터만 읽을 수 있음
REPEATABLE READ  | 같은 트랜잭션 내에서 동일한 쿼리를 여러 번 실행해도 같은 결과를 보장함
SERIALIZABLE     | 트랜잭션이 완전히 독립적으로 실행

```sql
START TRANSACTION;
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

작업 A
SAVEPOINT 포인트;
작업 B

ROLLBACK TO 포인트;

COMMIT;
```