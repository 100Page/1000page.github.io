---
order: 0.11
title: aws
description: 아마존 웹 서비스 용어
tags:
- cloud
- aws
- aws terminology
created_time: 2024-09-29 16:16
modified_time: 2024-09-30 18:48
---

# AWS Terminology
: 주요 용어와 개념  

- [Region](#region)
  - [Availability Zone](#availability-zone)
  - [Edge Location](#edge-location)


용어 | 설명
---|---
EC2  | 가상 서버 관리 서비스
ECS  | 컨테이너 오케스트레이션 서비스
S3   | 객체(데이터) 스토리지 서비스
RDS  | 관계형 데이터베이스 관리 서비스
Lambda | 서버리스 컴퓨팅 서비스
CloudFront     | CDN 서비스
CloudWatch     | 모니터링 서비스
CloudFormation | AWS 리소스를 프로그래밍 방식으로 정의하고 배포하는 서비스
Route 53 | DNS 서비스
VPC  | 사용자가 정의한 가상 네트워크
IAM  | AWS 리소스에 대한 접근 권한 관리 서비스



## Region
: 데이터 센터가 존재하는 물리적 장소로 전 세계에 22개 리전 존재  
: 리전을 기준으로 Availability Zone과 Edge Location이 존재  
: 각 리전은 독립적이며 하나의 리전에 두 개 이상 가용 영역 존재하고 가용 영역은 연결되어 있음  
: 리전에 따라 속도와 요금이 달라짐  

**주요 리전**

코드 | 리전
---|---
us-east-1      | 미국 동부
us-west-1      | 미국 서부
ca-central-1   | 캐나다 중부
ap-east-1      | 아시아 - 홍콩
ap-northeast-1 | 아시아 - 도쿄
ap-northeast-2 | 아시아 - 서울
ap-northeast-3 | 아시아 - 오사카
ap-southeast-1 | 아시아 - 싱가포르
ap-southeast-2 | 아시아 - 시드니
ap-south-1	   | 아시아 - 뭄바이
ap-south-2     | 아시아 - 호주


**region latency check**      
- http://awsspeedtest.xvf.dk
- https://www.cloudping.info



### Availability Zone
: 리전 내의 독립적인 데이터센터로 현재 69개 가용 영역 존재  
: 각 가용 영역은 떨어져 있으며 링크를 통해 연결  
: 가용 영역 안에서 통신할 경우 개인 IP 주소 사용은 별도 비용 없음  
: 가용 영역 간의 통신은 글로벌 IP 주소를 사용하므로 비용 발생  

**Multi AZ**  
: 부하 분산, 복구 시스템 구성을 위해 여러 AZ으로 구성하는 것  



### Edge Location
: CloudFront나 Route 53에서 사용하는 서버의 위치  
: CDN이나 DNS 서비스를 위한 캐시 서버로 현재 약 180개 엣지 로케이션 존재  
: 정적 리소스, 미디어 콘텐츠 등을 배포하여 캐싱이나 대역폭 최적화함  
: Health Check가 엣지 로케이션에서 애플리케이션을 모니터링하고 장애시 트래픽을 다른 경로로 라우팅할 수 있음  

**CloudFront**  
: 웹 콘텐츠나 정적 리소스를 엣지 로케이션에 캐싱  

**Route 53**  
: 엣지 로케이션을 활용해 DNS 쿼리 처리