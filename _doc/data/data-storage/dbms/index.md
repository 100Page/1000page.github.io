---
order: 2.1
title: dbms
description: 데이터베이스 관리 시스템 (DBMS)
summary:
keywords:
- database
- dbms
- database management system
- 데이터베이스 관리 시스템
tags:
- database
created_time: 2024-10-03 16:18
modified_time: 2025-01-04 10:47
---

# DBMS
Database Management System  
: [데이터베이스](../database/index.md)를 관리하고 조작하기 위한 프로그램  
: 삽입, 수정, 삭제, 검색 등 데이터 처리 및 관리 기능을 사용자에게 제공하고 이를 수행함  
: 다중 사용자 동시 접속, 데이터 추상화, 독립성, 무결성, 보안, 로깅 등 다양한 기능을 지원함  

- [DBMS Feature](./dbms-feature.md)
  - [DBMS Language](./dbms-language.md)
- [DBMS Classification](#dbms-classification)
  - [RDBMS](./rdbms.md)
  - [NoSQL](./nosql.md)


**목표**
- 데이터 중복 최소화
- 데이터 독립성 유지
- 데이터 일관성 유지
- 데이터 무결성 유지
- 데이터 표준화 달성
- 데이터 실시간 처리
- 데이터 접근성 향상
- 데이터 보안 강화


**특징**
- 데이터 추상화 : 실제 데이터 구조는 감추고 사용자에게는 논리적 표현만 지원
- 데이터 독립성
- 데이터 처리 및 관리
- 데이터 일관성과 무결성 유지
- 실시간으로 데이터에 접근 가능 : 데이터를 요청하면 즉시 처리 결과를 반환
- 동시에 데이터에 접근 가능 : 여러 사용자가 동시에 데이터에 접근해도 무결성과 일관성 유지
- 데이터 갱신이 계속적
- 보안 및 권한 관리
- 데이터 백업 및 복구


**단점**
- 설치 및 유지 비용
- 복잡성으로 전문 지식 요구
- 백업 작업의 오버헤드
- 시스템 취약성 : DBMS 서버 다운으로 전체 시스템 영향을 미칠 수 있음



## DBMS Classification
: [데이터베이스 모델](../database/database-model.md)을 기반으로 설계된 다양한 DBMS  

**데이터 저장 방식**
- HDBMS (계층형)
- NDBMS (네트워크형)
- RDBMS (관계형)
- OODBMS (객체 지향)
- ORDBMS (객체 관계)

**비정형 데이터**
- NoSQL
- NewSQL

**특수 목적**
- CDBMS (컬럼)
- DDBMS (분산)
- MMDBMS (메모리)
