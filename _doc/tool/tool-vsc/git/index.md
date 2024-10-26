---
order: 0.1
title: git
description: 버전 관리 시스템 - git
summary:
keywords:
- tool
- vsc
- git
- 버전 제어 시스템
tags:
- tool
created_time: 2024-10-01 01:10
modified_time: 2024-10-01 05:45
---

# Git
: 2005년 Linus Torvalds 개발한 분산 버전 관리 시스템  

- [Git Install](#install)
- [Git Basic](./#git-basic)
  - [Git Concept](./git-concept.md)
    - Git Workflow
  - [Git Repository](./git-repository.md)
  - [Git Ignore](./git-ignore.md) 
- Git Command 
  - git config
  - git status & diff  
  - git log 
  - git remote 
  - git reflog
  - git reset
- Git Branching Model
  - Git Flow
  - Trunk Based Development
- Git Tool
  - TortoiseGit
  - SourceTree
  - GitKraken
- Git Hosting
  - GitHub
  - GitLab
  - BitBucket
  - RocketGit
  - Gitea



## Git Install

```bash 
# linux 
sudo yum install git 
sudo apt install git

# windows 
choco install git.install
```

**git version**     
https://mirrors.edge.kernel.org/pub/software/scm/git/



## Git Basic

```bash
# 로컬 저장소 생성
git init

# 파일 생성
vi README.md

# 상태 확인
## untracked file -- 파일이 존재하나 관리되지 않은 파일  
git status

# 파일 추적
git add README.md

# 상태 확인
## tracked file - staged -- 스냅샷에 포함된 상태  
git status -s

# 파일 수정
vi README.md

# 상태 확인
## tracked file - modified, unstaged  -- 파일이 수정되어
git status -s

# 파일 추적
git add README.md

# 커밋
git commit -m "메시지"

git commit -m "
[제목]

[설명]
"

# 로그 확인
git log
```