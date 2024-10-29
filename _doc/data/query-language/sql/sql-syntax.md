---
order: 0.1
title: sql
description: SQL Syntax
summary:
keywords:
- database language
- guery language
- structured guery language
- sql
- sql syntax
tags:
- sql
- language
created_time: 2024-10-04 00:01
modified_time: 2024-10-29 22:48
---

# SQL Syntax
: SQL 문장은 특정한 작업을 수행하는 완전한 명령어로 여러 절로 구성됨  
: 절은 SQL 문장을 구성하는 개별적인 기능 단위로 지정된 순서에 따라 작성되어야 함  

구성 요소 | 설명
---|---
절 | SQL 문장을 구성하는 기본 단위로 특정 기능을 수행하는 명령어 블록
식별자 | SQL 문장에서 테이블이나 데이터를 식별하기 위한 이름
리터럴 | SQL 문장에서 값 자체를 나타내는 상수
연산자 | 특정 연산을 수행하기 위한 연산자
함수 | SQL에서 지원하는 내장 함수 (일부 DBMS는 사용자 정의 함수 지원)


**comment**

```sql
-- 한 줄 주석

/* 여러 줄 주석 */
```


**space**  
: 문장에서 구성 요소 사이 줄바꿈, 탭, 여러 개의 스페이스는 단일 스페이스로 처리됨  


**semicolon**  
: 세미콜론을 사용해 문장을 분리하며 단일 문장이나 마지막 문장에는 생략할 수 있음  


**keyword**  
: 일부 단어들은 예약어로 지정되어 있음  
: SQL은 대소문자를 구분하지 않지만 일반적으로 키워드는 대문자로 작성  


**identifier**  
: 데이터베이스, 테이블, 컬럼을 구분하기 위한 이름  
: SQL은 대소문자를 구분하지 않지만 일반적으로 식별자는 소문자로 작성  
: 테이블이나 컬럼은 AS 키워드를 통해 별칭으로 생성해 간략하게 표현할 수 있음  

```sql
SELECT 컬럼명 AS 별칭
```


## Clause
: SQL 문장을 구성하는 구성 요소로 특정 기능을 수행함  
: 일부 절은 특정 상화에서만 사용 가능함  

구성 요소 | 설명
---|---
SELECT       | 데이터를 출력할 열 지정
DISTINCT     | 데이터 중복 제거
FROM         | 데이터를 가져올 테이블 지정
JOIN         | 테이블 간 연결 정의
WHERE        | 조건에 맞는 행 필터링
GROUP BY     | 그룹화 할 열 지정
HAVING       | 그룹화된 결과에 필터링
ORDER BY     | 조회 결과 정렬
LIMIT        | 반환할 행 수 제한 (일부 DBMS는 FETCH)
INSERT INTO  | 데이터 삽입
UPDATE       | 데이터 수정
DELETE FROM  | 데이터 삭제
ALTER TABLE  | 테이블 구조 변경
CREATE TABLE | 새 테이블 생성
DROP TABLE   | 테이블 삭제


**작성 순서**
```
SELECT => FROM => JOIN => WHERE => GROUP BY => HAVING => ORDER BY => LIMIT
```

**실행 순서**  
: 작성 순서와 실행 순서는 다름

```
FROM JOIN => WHERE => GROUP BY => HAVING => SELECT => DISTINCT => ORDER BY => LIMIT
```