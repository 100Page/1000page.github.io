---
order: 0.11
title: sql
description: SQL Data Type
summary:
keywords:
- database language
- guery language
- structured guery language
- sql
- sql data type
tags:
- sql
- language
created_time: 2024-10-29 03:20
modified_time: 2024-10-29 22:48
---

# SQL Data Type
: 컬럼이 가질 수 있는 데이터의 유형  
: 데이터 타입을 통해 컬럼에 데이터 형태와 제약 사항을 정의하여 데이터의 무결성을 보장  
: 데이터베이스 엔진은 데이터 타입 정보를 기반으로 효율적인 검색 알고리즘을 적용  
: 일부 DBMS에서는 변수나 함수 반환값으로 데이터 타입을 지정할 수 있음  

**종류**
- [논리](#boolean-type)
- [숫자](#numeric-type)
- [문자](#character-type)
- [날짜 및 시간](#date-and-time-type)



## Boolean Type

키워드 | 설명
---|---
BOOLEAN      | TRUE, FALSE, (NOT NULL 제약 조건이 없다면) NULL

**NULL**  
: 0이나 공백을 의미하지 않음  
: 사용할 수 없거나 지정되지 않은 값을 의미  
: NULL로 산술 연산을 하면 결과는 NULL이며 비교 연산을 하면 UNKNOWN



## Numeric Type
: 정확도가 중요한 경우 고정 소수점 타입 사용  

키워드 | 설명
---|---
NUMERIC(p,s) | 정확한 고정 소수점 숫자(전체 자릿수, 소수점 이하 자릿수)
DECIMAL(p,s) | 정확한 고정 소수점 숫자(전체 자릿수, 소수점 이하 자릿수)
SMALLINT     | -32,768 ~ 32,767 범위의 정수
INTEGER      | -2,147,483,648 ~ 2,147,483,647 범위의 정수
BIGINT       | -9,223,372,036,854,775,808 ~ 9,223,372,036,854,775,807 범위의 정수
REAL         | 단정밀도 부동 소수점 숫자
FLOAT        | 부동 소수점 숫자
DOUBLE PRECISION | 배정밀도 부동 소수점 숫자



## Character Type

키워드 | 설명
---|---
CHAR(n)      | 고정 길이 문자열(문자수)
VARCHAR(n)   | 가변 길이 문자열(최대 문자수)
TEXT         | 가변 길이 문자열로 대용량 텍스트 데이터 저장

**VARCHAR**  
: 최대 길이를 지정할 수 있는데 DBMS마다 제한이 다름  
: 일반적으로 행 내부에 저장됨  
: 인덱싱을 지원함  

**TEXT**  
: 일반적으로 길이 제한이 없음  
: 외부 저장소에 저장됨  
: 인덱스 생성이 제한적이거나 비효율적임  



## Date and Time Type  
: DBMS마다 날짜 형식에 대한 지원 범위와 저장 형식이 다를 수 있음  

키워드 | 설명
---|---
DATE         | YYYY-MM-DD
TIME         | HH:MM:SS
TIMESTAMP    | YYYY-MM-DD HH:MM:SS 시간대 정보 포함
INTERVAL     | 시간 간격을 저장