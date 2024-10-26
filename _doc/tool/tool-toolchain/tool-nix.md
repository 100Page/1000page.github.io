---
order: 0
title: tool
description: 툴체인 - Nix
summary:
keywords:
- tool
- toolchain
- nix
tags:
- tool
created_time: 2024-10-26 01:08
modified_time: 2024-10-26 11:08
---

# Nix
: 순수 함수 방식으로 동작하는 패키지 관리 및 시스템 구성 관리 도구 
: C, Python, Java, Go, Rust 등 다양한 프로그래밍 언어와 도구 지원  

구성 요소 | 설명
---|---
Nix Language | 패키지와 시스템 구성을 정의하기 위한 도메인 특화 언어
Nixpkgs | Nix 패키지 레포지토리


**옵션**

구성 요소 | 설명
---|---
NixOS     | Nix를 기반으로 하는 리눅스 배포판
NixOps    | NixOS 배포 및 관리하기 위한 도구
Nix Shell | 특정 패키지 환경을 임시로 생성하는 도구
Hydra     | Nix 기반 CI/CD 시스템
Nix GUI Tools | Nixpkgs를 탐색하는 GUI기반 도구


**install**
```bash
sh <(curl -L https://nixos.org/nix/install) --daemon
```


**Nixpkgs**
```bash
# 패키지 검색
nix-env -qaP <패키지명>

# 패키지 설치
nix-env -iA nixpkgs.<패키지명>

# 패키지 제거
nix-env -e <패키지명>

# 설치된 패키지 목록 확인
nix-env -q

# 패키지 업데이트
nix-env -u '*'
or
nix-channel --update
```