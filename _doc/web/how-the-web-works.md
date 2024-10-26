---
order: 0.2
title: web
description: 웹 동작 방식과 주요 용어
summary:
keywords:
- web
- how the web works
- 웹 동작 방식
tags:
- web
- glossary
created_time: 2024-08-29 20:27
modified_time: 2024-10-26 22:16
---

# How The Web Works
: 웹 동작 방식

```
# 인터넷으로 연결된 컴퓨터들 존재
  => Client-Server Model
  : 네트워크 통신 모델
  : 서비스를 요청하는 클라이언트와 서비스를 제공하는 서버로 구성


### 클라이언트
# 사용자가 웹 브라우저를 통해 서비스를 요청
  1. URL이나 도메인 네임을 주소창에 입력
  2. IP 주소를 확인하는 과정 진행

    2-1. IP 주소가 로컬에 캐시되었는지 다음 단계를 거쳐 확인함
      a. 로컬 DNS 캐시 확인
      b. 운영체제의 DNS 캐시 확인
      c. 라우터의 DNS 캐시 확인

    2-2. IP 주소가 로컬에 캐시되지 않았다면 DNS 서버에 DNS 쿼리를 보내 IP 주소를 응답 받음

  3. IP 주소가 확인되면 소켓을 통해 TCP 연결 시도 (HTTP/1 ~ HTTP/2 경우)
    => TCP 3 Way Handshake
    : 클라이언트가 서버에 SYN 패킷 전송
    : 서버가 클라이언트에게 SYN-ACK 패킷 응답
    : 클라이언트가 서버에 ACK 패킷 전송
  
  4. 서버에서 TCP 연결을 승인하면 클라이언트가 HTTP 요청 메시지를 생성해 서버에 전송  


### 서버
# 서버가 클라이언트의 요청을 받아 리소스를 응답
  1. 클라이언트가 요청한 HTTP를 분석
  2. 요청된 리소스를 찾고 리소스에 대한 접근 권한을 확인 
  3. 처리 결과에 따라 적절한 HTTP 상태 코드를 결정
  4. 상태 코드와 정책 정보 등을 HTTP 헤더에 담고 리소스는 HTTP 바디에 담아 클라이언트에 전송


### 클라이언트
# 서버로부터 받은 응답을 처리 
  1. 브라우저가 서버로부터 받은 HTTP를 분석
  2. HTTP 헤더의 Content-Type 정보를 통해 렌더링 방식을 결정
  3. HTTP 바디의 리소스를 해석하고 렌더링해 사용자 모니터에 표시
```



**주요 용어**

용어 | 설명
---|---
Internet     | TCP/IP 프로토콜을 기반으로 전 세계적으로 상호 연결된 네트워크
TCP/IP       | 전송 제어 프로토콜과 인터넷 프로토콜
Client       | 서비스를 요청하고 이용하는 컴퓨터나 프로그램
Server       | 서비스를 제공하는 컴퓨터나 프로그램
Web Browser  | 웹 서버와 HTTP 통신을 하고 웹 서버로부터 받은 리소스를 출력하는 소프트웨어
Web Server   | HTTP 요청을 처리하고 리소스를 제공하는 서버
Web Resource | 웹에서 접근 가능한 모든 종류의 콘텐츠나 서비스로 정적 리소스와 동적 리소스가 존재
WAS          | 동적 리소스를 제공하기 위한 애플리케이션 서버
HTTP         | 웹에서 데이터를 전송하기 위한 프로토콜
URL          | 웹에서 리소스 위치를 나타내는 주소
Domain Name  | 웹 사이트의 IP 주소를 사람이 이해하기 쉬운 형태로 표현한 것
DNS          | 도메인 이름을 IP 주소로 변환하는 시스템
DNS Server   | DNS 쿼리에 응답해 도메인 이름에 해당하는 IP 주소를 제공하는 서버


```
Client <--> Web Server <--> WAS <--> DB

Web Server
- Apache
-

WAS (Web Application Server)
: 동적 리소스 생성, DB 연결, 비즈니스 로직 처리 등을 수행하는 서버
: WAS라는 용어는 자바 환경에서 사용하며 다른 환경에서는 일반적으로 애플리케이션 서버로 지칭
: 파이썬은 WSGI Server라고 부르기도 함  

- Java : Tomcat, JBoss, WebLogic, WebSphere
- Python : Gunicorn, uWSGI
- Ruby : Puma, Unicorn, Passenger
- PHP : PHP-FPM, HHVM
```