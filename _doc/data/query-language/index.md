---
order: 0.31
title: qurey language
description: 쿼리 언어
summary:
keywords:
- data
- database language
- guery language
- 쿼리 언어
tags:
- data
- language
created_time: 2024-10-03 18:45
modified_time: 2024-10-26 22:16
---

# Query Language
≒ Sublanguage  
: [Database Language](../data-storage/database/database-language.md)의 구현체  
: 데이터 정의, 조작, 제어 등을 수행하기 위한 구체적인 명령어의 집합  
: 쿼리 언어는 데이터 저장 및 처리 기술의 발전과 함께 발전  
: 쿼리 언어는 선언형과 절차형으로 분류되며 대부분의 쿼리 언어는 선언형으로 설계됨  
: 일부 데이터베이스에서 복잡한 데이터 조작을 위해 절차적 기능을 추가로 지원함  

**sublanguage**  
: 주어진 컨텍스트나 도메인에 특화된 언어  

**query**  
: 조회나 질의를 의미하는 쿼리는 데이터베이스에서 데이터 조회를 위한 핵심 기능  
: 초기에는 데이터 조회가 주된 기능이었으나 현재는 조작, 제어, 분석 등 다양한 기능을 지원  
: 데이터 모델(관계형, 문서형, 그래프형 등)에 맞춘 특화된 쿼리 언어가 개발됨  

종류 | 설명
---|---
선언형 | 사용자는 기능을 명시만 하고 쿼리 실행기가 어떻게 실행할지 결정 <br>추상화 수준이 높으며 비지니스 로직에만 집중 가능하나 세밀한 제어는 어려움
절차형 | 사용자가 실행 과정을 제어해 세밀한 제어나 복잡한 연산 가능 <br>세밀한 제어가 가능해 복잡한 로직을 구현할 수 있으나 사용자가 최적화를 처리해야함


**구현체**
- RDBMS
  - SQL 
- ORDBMS
  - OQL
- NoSQL
  - MQL 
  - CQL
  - Cypher
  - GQL
- Search Engine
  - Elasticsearch Query DSL
  - Solr Query Syntax
- Stream Processing
  - Kafka SQL
  - Apache Flink SQL
- etc
  - AQL 
  - HTSQL


**기법**  
: 데이터베이스에서 기법을 구현

기법 | 설명
---|---
Query Plan | 쿼리를 어떤 순서와 방식으로 실행할지 정의한 실행 계획
Query Optimization | 최적화 엔진이 쿼리 실행 계획을 조정해 가장 비용이 적게 드는 방식을 선택
Index Optimization | 쿼리 실행에 인덱스 사용 여부를 통해 성능을 최적화하는 기법
Join Optimization | 데이터 소스를 결합하는 최적의 방법 결정
Query Caching | 자주 사용하는 쿼리 결과를 캐시해 재사용하는 기법


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
              Graph Query Language가 개발됨
```