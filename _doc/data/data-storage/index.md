---
order: 0.3
title: data storage
description: 데이터 저장 방법
summary:
keywords:
- data
- data storage
- 데이터 저장
tags:
- data
created_time: 2024-09-28 10:55
modified_time: 2024-11-16 02:21
---

# Data Storage
: 수집한 데이터를 장기간 저장하고 효율적으로 관리하기 위한 저장소  
: 원시 데이터와 전처리된 데이터 모두 저장하며 데이터 무결성을 위해 암호화를 사용할 수 있음  
: 데이터 손실을 예방하기 위해 백업 및 복구 시스템을 적용할 수 있음  
: 장기간 사용하지 않는 데이터는 아카이빙을 통해 데이터를 효율적으로 보관할 수 있음  

> 파일 시스템 > 데이터베이스 > 분산 저장 시스템 > 클라우드

**history**
```
1890년대 천공 카드 
1920년대 자기 드럼, 자기 테이프
1930년대 광학 데이터 저장 개념 제안 (에드윈 랜드)
1940년대 최초 1024 비트 정보 저장소 개발
1950년대 자기 디스크
1960년대 DRAM 셀
1970년대 버블 메모리, 최초 휴대용 저장 장치인 플로피 디스크 개발
1980년대 하드 디스크 대중화, CD-ROM
1990년대 플래시 메모리, DVD, NAS
2000년대 USB, SSD 대중화, 클라우드 스토리지 
```


**Storage Layer**  
: 데이터 저장 계층 또는 데이터 저장 기술로 데이터를 물리적으로 저장하고 접근하는 방식  

종류 | 설명
---|---
File Storage   | 데이터를 파일과 폴더 구조로 저장하고 접근함
Block Storage  | 데이터를 고정 크기의 블록으로 나누어 저장하고 블록은 고유한 주소를 갖음
Object Storage | 데이터를 객체 단위로 저장하며 객체는 데이터, 메타데이터, 고유 식별자를 갖음


**Storage System**  
: 데이터를 저장하는 기술이나 시스템  

- [File System](./file-system.md)
- [Database](./database/index.md)
- [Data Warehouse](./data-warehouse.md)
- [Data Lake](./data-lake.md)


**Storage Architecture**

종류 | 설명
---|---
Centralized Storage | 데이터를 중앙에 모아 관리하는 구조
Distributed Storage | 데이터를 여러 위치에 분산시켜 관리하는 구조
Hybrid Storage | 중앙 집중화 저장소와 분산형 저장소를 혼합한 구조
Cloud Storage  | 클라우드 환경에서 데이터를 관리하는 구조



## Data Storage Management 
: 데이터 저장 및 관리를 최적화하고 효율성을 높이는 다양한 기법들  


**Storage Tiering**  
: 저장소 계층화
: 자주 사용되는 데이터는 빠른 스토리지에 저장하고 덜 사용되는 데이터는 저렴한 스토리지로 이동하는 방식  


**Data Caching**  
: 자주 사용되는 데이터를 메모리에 저장해 반복적인 데이터 요청에 대해 빠른 응답을 제공하는 기법


**Data Sharding**  
: 대규모 데이터를 여러 파티션으로 나누어 각각 다른 서버나 데이터베이스에 저장하는 기법


**Data Replication**  
: 데이터 손실을 방지하기 위해 동일한 데이터를 여러 장소에 복제하는 방식  

방식 | 설명
---|---
Synchronous Replication  | 데이터가 한 서버에 저장될 때 동시에 다른 서버에도 저장되는 방식
Asynchronous Replication | 데이터가 저장된 후 일정 시간 간격으로 다른 서버에 복제되는 방식


**Data Archiving**  
: 장기간 사용하지 않는 데이터를 저렴한 스토리지로 이동해 보관하는 기술 및 과정   
: 데이터를 보관하는 기준이나 규칙, 데이터 접근 정책, 법적 요구 사항 준수 등이 포함됨   
: 아카이빙된 데이터는 검색이 가능해야 하며 필요시 복구가 가능해야 함  
: 데이터 아카이빙은 일반적으로 자동화되어 관리되며 아카이빙 소프트웨어를 활용할 수 있음  

```
       (데이터 이동)
활성 스토리지 => 아카이빙 스토리지
```