---
order: 0.3
title: tool
description: 버전 제어 시스템 (VSC)
tags:
- tool
- vsc
created_time: 2024-09-24 00:09
modified_time: 2024-10-01 01:07
---

# Version Control System 
≒ SCM (Software Configuration Management)  
: 버전 제어/소스 제어 관리 시스템 (= Source Code Management)  
: 파일(이진 파일, 소스 코드, 데이터 파일 등)의 변경 사항을 추적하고 관리하는 프로세스  
: 파일을 특정 시점으로 되돌리거나 삭제된 파일을 복구하는 기능 지원  
: 협업시 파일을 분기해 작업을 분리하고 작업이 완료되면 파일을 병합  

**Software Configuration Management**
```
소프트웨어 구성 관리  
- 설정, 개발, 배포, 버그 추적 등 소프트웨어의 모든 변경 사항을 관리하는 개념  
- 버전 관리 시스템은 소프트웨어 구성 관리의 구성 요소 (SCM > VCS)  
```

**특징**  
- 가역성 : 파일을 특정 버전으로 되돌려 이전 상태로 복구
- 동시성 : 파일을 동시에 수정 가능 
- 주석 : 변경 사항에 대한 기록 


**분류**
- 1세대 : [Local VCS](#local-vcs)
  - SCCS (Source Code Control System)
  - RCS (Revision Control System)
  - DSEE (Domain Software Engineering Environment)
- 2세대 : [Centralized VCS](#centralized-vcs)
  - CVS (Concurrent Versions System)
  - SVN (Apache Subversion)
  - Perforce
- 3세대 : [Distributed VCS](#distributed-vcs)
  - Monotone  
  - Git
  - Mercurial
  - Bazaar
  - Darcs



## Local VCS 
: 로컬 버전 관리 시스템  
: 1960년대 메인 프레임에 사용된 변경 관리 시스템에서 파생  
: 파일 변경시 번호를 부여해 이를 로컬 데이터베이스에 저장  
: 로컬에서만 지원하여 협업이 어려움  


### SCCS
: 1973년 Marc Rochkind 개발      
: 중앙 집중식, 파일 기반, 파일 잠금 기능  


### RCS 
: 1982년 Walter F. Tichy 개발       
: 중앙 집중식, 파일 기반, 파일 잠금 기능   



## Centralized VCS
: 중앙 집중식 버전 관리 시스템  
: Client-Server 모델 기반 관리  
: 하나의 중앙 서버에 파일이 존재하고 이를 클라이언트가 받아 사용하고 변경 사항을 중앙에 요청해 병합  
: 파일의 변경 사항을 중앙에서 관리해 클라이언트가 모든 변경 사항을 파악할 수 있음  
: 중앙 서버에 문제가 생기거나 네트워크 문제시 버전 관리 및 협업 진행이 불가능  

기본 용어 | 설명
---|---
repository  | 파일 및 변경 사항들이 존재하는 공간으로 네트워크를 통해 접근  
checkout    | 저장소에 접근해 파일을 받아 저장소와 클라이언트의 파일을 동기화 시킴  
commit      | 체크아웃한 파일을 사용해 변경 사항 발생시 이를 저장소 반영  
update      | 최신 버전 파일로 업데이트
revision    | 파일 커밋시 새로 생성되는 상태로 커밋마다 1씩 증가해 고유 숫자를 갖음   
tag         | 특정 시점에 태그를 부여해 쉽게 체크아웃 함



## Distributed VCS
: 분산 버전 관리 시스템  
: Peer-to-Peer 모델 기반 관리  
: 하나의 중앙 서버에 파일이 존재하고 클라이언트가 파일을 로컬에 사본으로 관리  
: 변경 사항을 통합할 준비가 되면 중앙에 요청해 병합  
: 파일을 로컬에서 관리하므로 서버 문제와 네트워크 연결 문제 보완  