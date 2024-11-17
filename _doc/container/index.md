---
order: 18
title: container
description: 컨테이너 (인덱스)
summary:
keywords:
- container
- 컨테이너
tags:
- index
- container
created_time: 2024-09-09 01:31
modified_time: 2024-11-17 20:40
---

# Container
: 애플리케이션과 애플리케이션이 실행되기 위해 필요한 모든 종속성을 하나의 패키지로 묶는 기술  
: 애플리케이션 실행에 필요한 파일, 라이브러리, 환경 변수 등이 포함되며 이를 컨테이너 이미지라고 함  
: 컨테이너 이미지는 실행 가능한 형태로 패키징되어 컨테이너로 실행됨  
: 컨테이너는 호스트 운영체제의 커널을 공유해 격리된 프로세스와 리소스를 제공함
: 컨테이너는 호스트 운영체제의 보안 메커니즘을 통해 보안을 제공하여 운영체제에 기술에 의존적임  

- [컨테이너의 동작 방식](./container-mechanism.md)
- [컨테이너 기술](./container-core.md)
- [컨테이너 종류](./container-type.md)
- [컨테이너 도구](./container-tool.md)


용어 | 설명
---|---
컨테이너 | 독립된 실행 환경을 제공하고 실행하는 기술
컨테이너 런타임 | 컨테이너 이미지를 실행하고 생명 주기를 관리하는 소프트웨어
컨테이너 이미지 | 애플리케이션 코드, 라이브러리, 환경 변수, 런타임 등을 포함한 정적 파일
컨테이너 도구 | 컨테이너를 설정하고 이미지를 빌드, 배포, 실행하는 관리하는 도구 
컨테이너 저장소 | 컨테이너 이미지를 저장하고 공유하는 저장소


**컨테이너 플랫폼**
- Docker
- Podman


**컨테이너 오케스트레이션 도구**  
: 다수의 컨테이너 생명주기를 관리하는 도구  
: 컨테이너 배포, 스케일링, 로드 밸런싱, 모니터링 등을 자동화된 방식 관리함  

- Docker Swarm
- Kubernetes 
- Nomad
- Apache Mesos


**특징**
- 경량성 : 호스트 운영체제의 커널을 공유해 리소스가 적게 소모됨
- 이식성 : 운영체제와 독립적이기 때문에 컨테이너 이미지로 어디에서든 실행 가능
- 격리성 : 컨테이너는 서로 독립적이며 다른 컨테이너에 영향을 미치지 않음
- 일관성 : 개발 환경과 운영 환경의 차이를 좁혀 일관된 실행 환경을 제공함


**history**
```
1976년 chroot : 시스템의 일부를 격리된 환경에서 실행
2000년 FreeBSD Jails 등장 : 운영체제 수준의 격리된 환경 제공
2001년 Linux VServer 개발 : 리눅스 커널을 통해 격리 환경 제공
2004년 Solaris Containers 출시 : Solaris OS에서 격리된 환경을 제공
2006년 Process Containers 개발
2008년 LXC (LinuX Containers) 첫 릴리스 : cgroups와 namespaces를 활용하여 컨테이너 환경을 제공
2013년 Docker 출시
2014년 Kubernetes 프로젝트 시작
2015년 Open Container Initiative (OCI) 설립
2016년 Windows Containers 출시 : Windows Server 2016에서 Windows 기반 컨테이너 도입
2020년 WebAssembly Containers 등장 : WebAssembly를 이용한 컨테이너화된 실행 환경 지원
```


**OCI**  
: [Open Container Initiative](../foundation/fd-linux/oci.md)  
: 컨테이너 이미지와 런타임을 정의하는 공식 표준 기관  