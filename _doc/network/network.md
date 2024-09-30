---
order: 0.1
title: network
description: 네트워크란
tags:
- network
- communication
created_time: 2024-09-14 09:47
modified_time: 2024-09-30 15:36
---

# Network
: net + work 합성어   
: 분산된 장치들이 통신할 수 있도록 링크로 연결된 집합체  

**communication vs network**  
: 통신은 두 개 이상 개체에서 정보를 전달하는 행위를 의미  
: 언어, 문자, 소리도 통신의 일종이며 기술 발달로 전신기, 전화기, 컴퓨터 등 새로운 통신 수단이 등장  
: 컴퓨터 통신이란 두 개 이상의 컴퓨터가 데이터를 주고 받는 것  
: 네트워크는 장치간 통신이 이루어지게 해주는 물리적 및 논리적 시스템을 의미  

- 물리적 : 장치와 장치를 연결하는 물리적 전송 매체 (컴퓨터, 프린터, 라우터, 허브, 케이블 등)
- 논리적 : 데이터 흐름 정의 (소프트웨어, 프로토콜)


**communication network**
: 통신망이란 정보를 전송하기 위한 물리적 및 논리적 구조의 집합  


**networking**  
: 네트워크를 만들기 위한 전체 프로세스  
: 회선 구성 + 접속 형태 + 통신 방식  


**network component**

용어 | 의미
---|---
Node  | 네트워크에 연결된 모든 장치들 (컴퓨터, 서버, 라우터, 방화벽 등)
Host  | 네트워크에 연결된 장치 중 IP 주소를 갖고 있어 통신이 가능한 장치
Edge  | 네트워크 종단에서 내부와 외부를 연결하는 장치 (엣지 라우터)
Link  | 연결 매체 (케이블, 광섬유)

```
 Node       Node       Node  
 Host ---- Device ---- Host
      Link        Link
```

**Node**  
- 호스트 : 컴퓨터, 노트북, 핸드폰, 프린터 등
- 네트워크 장치 : 허브, 라우터, 스위치 등

**Link**
- 유선 링크 : 전화선, 케이블
- 무선 링크 : 전파(와이파이, 블루투스), 적외선, 위성 