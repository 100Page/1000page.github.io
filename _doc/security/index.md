---
order: 20
title: security
description: 보안 (인덱스)
summary:
keywords:
- security
- cia
- 보안
tags:
- index
- security
created_time: 2024-09-07 17:36
modified_time: 2024-11-13 02:11
---

# Security
: 다양한 위협으로부터 자산을 적절한 방법으로 보호하고 데이터의 CIA를 유지하기 위한 정책 및 개념  

- [Security Threats](./security-threats)
- [Security Features](./security-features)
- [Security Models](./security-models/index.md)
- [Security Protocols](./security-protocol/index.md)
- [Security Tools](./security-tool/index.md)


**보안이 실패하는 이유**  
- 복잡성
- 공격자
- 인적 요인
- 기술 변화 : 기술 발전으로 기존 보안 대책이 무력화되는 경우



## CIA
: 정보 보호를 위한 3대 요소  

**Confidentiality**  
: 기밀성  
: 접근 권한이 있는 사람이나 장치만이 데이터에 접근 가능함  

**Integrity**  
: 무결성  
: 데이터는 인증된 방식으로만 변경할 수 있어야 함  
: 인증되지 않은 방식으로 데이터를 변경하거나 전달하지 못하게 함  
: 권한이 없는 사람이나 장치가 데이터를 변경하는 것을 막음  
: 데이터가 생성, 수정, 삭제된다면 이를 확인할 수 있어야 함  

**Availability**  
: 가용성  
: 접근 권한이 있는 사람이나 장치는 언제든 데이터를 확인할 수 있어야 함  
: 외부 공격으로 인해 데이터를 확인할 수 없다면 가용성이 침해되었다는 것을 의미  



### AAA
: 보안 시스템을 위한 기본 개념   

**Authentication**  
: 인증  
: 사용자 또는 장치가 신원이 맞는지 확인하는 과정  
: 인증을 통해 시스템에 대한 무단 접근을 방지함  
: 비밀 번호, OTP, 보안 토큰, 생체 인증 등 다양한 방법을 사용해 확인  

**Authorization**  
: 권한 부여  
: 인증된 개체에게 어떤 작업과 접근을 허용할 것인지 결정  
: 중요한 시스템 자원에 대한 접근을 제어함  
: 역할 기반 접근 제어(RBAC), 속성 기반 접근 제어(ABAC) 등 기법을 사용함  

**Accounting**  
: 활동 모니터링  
: 인증된 개체의 작업 활동을 기록하고 모니터링하는 과정  
: 활동 기록을 통해 보안 위반 사고를 탐지하고 분석함  
