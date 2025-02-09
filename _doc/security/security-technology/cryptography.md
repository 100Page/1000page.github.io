---
order: 1
title: security
description: 암호학
summary:
keywords:
- security
- security technology
- cryptography
tags:
- security
created_time: 2025-02-09 17:02
modified_time: 2025-02-09 20:29
---

# Cryptography
: 암호학은 정보를 보호하기 위한 수학적 기법과 원리를 연구하는 학문  
: 데이터를 암호화하고 복호화하는 암호기술과 이를 해독하고 분석하는 암호해독을 다룸  

- [암호 기술](#cryptographic-technology)
- [암호 분석](#cryptanalysis)
- [암호 평가](#cryptographic-evaluation)

**주요 목표**
- 기밀성
- 무결성
- 인증
- 부인 방지



## Cryptographic Technology
: 정보 보호를 위해 사용되는 모든 수학적, 기술적 방법의 총체  
: 데이터 보안만 아니라 네트워크 보안, 클라우드 컴퓨팅, 블록체인 등 다양한 분야에 적용됨  

**구성 요소**
- [암호화 시스템](./cryptographic-system.md)
  - 양방향 암호화
  - 단방향 암호화
- [암호 운영 기술](./cryptographic-operation.md)
  - 전자서명
  - 키 관리
  - 난수
- [암호 응용](./cryptographic-application.md)
  - 디지털 워터마킹
  - 디지털 핑거프린팅
  - 디지털 저작권 관리
  


## Cryptanalysis
: 암호분석이란 암호화된 메시지를 해독하기 위해 암호 시스템의 취약점을 분석하는 기술

**공격 유형**
- 암호분 단독 공격
- 기지 평문 공격
- 선택 평문 공격
- 선택 암호문 공격



## Cryptographic Evaluation
: 암호 기술 전반의 안전성과 성능을 평가  

- 암호 알고리즘 평가
  - Cryptographic Algorithm Validation Program
- 암호 모듈 평가
  - Cryptographic Module Validation Program
- 암호 제품 평가
  - Common Criteria


**NIST**  
: 암호 평가와 관련된 암호화 표준과 가이드라인을 제공  
: 미국 국립표준기술연구소로 다양한 분야의 표준을 개발하고 지원함  

- NIST SP
- FIPS


**FIPS**  
: 암호화 모듈 및 알고리즘에 대한 보안 요구사항을 정의하는 표준으로 NIST에서 관리  

표준 | 설명
---|---
FIPS 140-3 | 암호 모듈의 보안 요구사항 정의
FIPS 197   | AES 알고리즘 정의
FIPS 198-1 | HMAC 표준
FIPS 201   | PIV 관련 암호화 제품 요구사항 정의