---
order: 0.9
title: data structure
description: 자료구조 - 그래프
summary:
keywords:
- data
- data structure
- graph
- 그래프
tags:
- data
created_time: 2024-10-06 03:23
modified_time: 2024-11-16 22:59
---

# Graph
: 데이터의 관계를 [그래프](../../mathematics/discrete-mathematics/graph.md) 구조로 표현한 자료구조  
: 다른 자료구조가 데이터 저장에 사용된다면 그래프는 데이터 간 연결 관계와 구조를 파악하는데 초점을 둠  
: 일대일, 다대다 관계를 그래프로 표현해 데이터의 흐름, 연결성, 경로를 분석하고 이를 탐색함  
 
용어 | 설명
---|---
정점 (노드) | 데이터 또는 객체
간선 (엣지) | 객체를 연결하는 선으로 정점 간 관계를 표현
차수 | 하나의 정점을 연결하는 간선의 개수
가중치 | 간선에 부여된 값 (비용, 거리, 시간 등)
경로 | 정점들을 간선으로 연결한 순서


> G = (V, E)

그래프는 정점 집합 V(Vertex Set)와 간선 집합 E(Edge Set)로 구성됨


**정점**  
: 그래프를 구성하는 데이터로 하나 이상 정점으로 구성됨  
: 정점과 정점은 연결되지만 상황에 따라 연결되지 않은 상태로 존재할 수 있음  

**간선**  
: 그래프에서 두 정점 간 관계를 나타내며 정점이 없다면 간선도 존재할 수 없음  
: 관계는 방향성을 가질 수 있으며 진입 차수와 진출 차수로 분류됨

**그래프 종류**  

종류 | 설명
---|---
유한 그래프 | 정점과 간선이 유한한 개수로 존재하는 그래프
무한 그래프 | 정점과 간선이 무한히 많은 그래프로 수학적/이론적 개념
완전 그래프 | 모든 정점이 서로 연결된 그래프
연결 그래프 | 모든 정점이 하나의 경로를 통해 연결된 그래프
비연결 그래프 | 정점 간의 연결이 없거나 모두 연결되지 않은 그래프로 빈 그래프를 포함함
빈 그래프 | 정점은 존재하지만 간선이 없는 그래프
방향 그래프 | 간선에 방향이 있는 그래프로 들어오는 간선(진입 차수)과 나가는 간선(진출 차수)로 구분
무방향 그래프 | 간선에 방향이 없는 그래프 (정점 간 양방향 연결을 의미)
가중치 그래프 | 간선에 가중치가 있는 그래프
비가중 그래프 | 간선에 가중치가 없는 그래프

=> 방향 그래프는 방향에 따라 단방향 이동만 가능하고 무방향 그래프는 양방향 이동이 가능함


**그래프 특성**

특성 | 설명
---|---
사이클 | 정점들이 서로 연결되어 시작한 정점으로 다시 되돌아 오는 경로를 의미
연결성 | 정점들 간의 연결 여부를 나타내며 연결 그래프와 비연결 그래프로 분류됨
강한 연결 요소 | 방향 그래프에서 모든 정점들이 서로 도달할 수 있는 부분 그래프를 의미

=> 사이클을 통해 그래프가 트리인지 여부를 확인할 수 있음  
트리는 그래프의 특수한 형태로 연결 그래프이며 사이클이 없고 정점간 경로가 유일함  


**구현체**
- 인접 행렬
- 인접 리스트
- 간선 리스트
- 부속 행렬