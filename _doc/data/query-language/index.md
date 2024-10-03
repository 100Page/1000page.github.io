---
order: 0.31
title: qurey
description: 쿼리 언어
tags:
- database
- database language
- qurey language
created_time: 2024-10-03 18:45
modified_time: 2024-10-03 19:38
---

# Query Language
≒ Sublanguage  
: [Database Language](../data-storage/database/database-language.md)의 구현체  
: 데이터 정의, 조작, 제어 등을 수행하기 위한 구체적인 명령어의 집합
: 쿼리 언어는 데이터 저장 및 처리 기술의 발전과 함께 발전  

**sublanguage**  
: 주어진 컨텍스트나 도메인에 특화된 언어  

**query**  
: 조회나 질의를 의미하는 쿼리는 데이터베이스에서 데이터 조회를 위한 핵심 기능  
: 초기에는 데이터 조회가 주된 기능이었으나 현재는 조작, 제어, 분석 등 다양한 기능을 지원  
: 데이터 모델(관계형, 문서형, 그래프형 등)에 맞춘 특화된 쿼리 언어가 개발됨  


**구현체**
- RDBMS
  - SQL 
- ORDBMS
  - OQL
- NoSQL
  - MQL 
  - CQL
  - Cypher
  - GraphQL
- XML
  - XQuery
- etc
  - AQL 
  - HTSQL


**history**
```
1960년대 파일 시스템이 등장하며 데이터를 검색하고 조작하기 위해 쿼리 언어가 개발되기 시작
         (계층적 데이터베이스 모델 사용)

1970년   관계형 데이터 모델 제안 (데이터를 테이블 형식으로 저장)
1974년   IBM에서 SEQUEL를 개발하고 이후 SEQUEL이 SQL로 발전  
1979년   Oracle이 첫 상용 SQL 기반 RDBMS 출시

1980년대 공급업체에서 다양한 DBMS를 출시하고 자체적인 기능을 추가해 SQL을 확장함
         이후 SQL을 표준화했지만 여러 이유로 여전히 방언 존재

1980~1990년대 객체 지향 프로그래밍이 유행하며 이를 데이터베이스에 접목
              이를 위해 OQL 언어가 개발됨

1990~2000년대 웹이 유행하며 XML이 표준화되고 XQuery가 개발됨
              XQuery은 데이터베이스 뿐만아니라 웹 서비스에서 사용됨

2000~2010년대 빅데이터의 발전으로 데이터 양이 많아지며 확장이 쉬운 NoSql이 등장
              NoSql에 특화된 쿼리 언어 MQL, CQL 등이 개발됨 
```