---
order: 2.1
title: dbms
description: 관계형 데이터베이스 관리 시스템 (RDBMS)
summary:
keywords:
- database
- dbms
- rdbms
- 관계형 데이터베이스 관리 시스템
tags:
- data
created_time: 2024-10-28 22:25
modified_time: 2025-01-04 20:30
---

# RDBMS
: 관계형 모델을 기반으로 하는 데이터베이스 관리 시스템  
: 데이터를 2차원 테이블로 표현하며 테이블과 테이블 사이에 관계를 형성해 데이터 중복 문제를 해결  
: 실제 데이터는 B-Tree, 해시같은 자료 구조로 저장되며 테이블 형태로 저장되지 않음  

- [Database Object](#database-object)
  - [Table](#table)
  - [Relation](#relation)
  - [Constraint](#constraint)
- [RDBMS Component](#rdbms-component)


**product**
- H2
- Oracle Database
- MySQL
- MariaDB
- PostgreSQL
- Microsoft SQL Server
- Sybase
- SQLite



## Database Object
: RDBMS에서 데이터베이스를 구성하거나 관리하기 위한 논리적 및 물리적 요소들  
: 제품마다 실제 구현이 다르며 세부 사항이 다를 수 있음  

객체 | 설명
---|---
테이블 | 행과 열로 구성되어 데이터를 저장하는 객체
도메인 | 특정 컬럼에서 사용할 수있는 값들의 집합을 정의하는 객체
제약조건 | 데이터 무결성을 보장하기 위한 규칙 체계
인덱스 | 데이터 검색 기능의 성능 향상을 위해 사용하는 데이터 구조
스키마 | 데이터베이스 객체들의 논리적 컨테이너
시퀀스 | 순차적으로 고유 번호를 자동으로 생성하는 객체
뷰 | 하나 이상 테이블에서 데이터를 기반으로 생성된 가상 테이블
함수 | 프로시저와 유사하나 반환 값이 존재하는 SQL 집합
프로시저 | 특정 작업을 자동화하는 SQL 집합
트리거 | 특정 이벤트 발생시 자동으로 실행되는 프로시저



## RDBMS Component
: RDBMS의 다양한 기능을 제공하는 핵심 구성 요소들  

**처리 과정**
```
1. 쿼리 입력
   => Query Processor가 쿼리를 해석 및 유효성 검사를 하고 내부 표현식으로 변환
2. 쿼리 최적화
   => Query Processor가 실행 계획을 수립

3. 트랜잭션 시작
   => Log Manager가 로그 기록을 시작
   => Transaction Manager가 트랜잭션을 시작하고 트랜잭션 격리 수준을 결정
4. 트랜잭션 처리 및 동시성 제어
   => Transaction Manager가 트랜잭션 관리
   => Concurrency Control Manager가 락을 획득해 동시성 문제 처리

5. 쿼리 실행
   => Query Processor가 쿼리를 실행해 데이터 작업을 수행
   => Storage Manager를 통해 데이터에 접근하고 결과를 반환
      1. 데이터가 버퍼에 있는지 확인
      2. 없으면 디스크에서 데이터 파일에 접근해 데이터가 있는지 확인
6. 결과 반환

7. 트랜잭션 종료 및 동시성 제어
   => Transaction Manager가 트랜잭션을 커밋하거나 롤백
   => Concurrency Control Manager가 획득한 락을 해제
   => Log Manager가 로그 기록을 완료
0. 장애 발생
   => 실행 중 장애가 발생하면 Recovery Manager가 장애 복구를 수행
```


**Query Processor**  
: SQL 쿼리를 해석하고 쿼리 최적화 및 실행 계획을 수립  

**Transaction Manager**  
: 트랜잭션 시작, 커밋, 롤백 등 관리  

**Concurrency Control Manager**  
: 여러 사용자가 동시에 데이터에 접근하는 경우 데이터 불일치 방지를 위해 동시성 제어  

**Storage Manager**
: 데이터의 물리적 저장 관리

관리자 | 설명
---|---
Buffer Manager | 데이터를 메모리 버퍼에 저장하고 관리
File Manager   | 데이터를 저장 매체에 파일로 저장하고 관리
Index Manager  | 데이터 검색을 위한 인덱스 관리 및 지원

**Recovery Manager**  
: 시스템 장애 발생시 데이터 복구 담당  

**Log Manager**  
: 데이터베이스 변경 작업을 기록함  

**Metadata Manager**  
: 데이터베이스의 메타데이터 관리
