---
order: 2.5
title: algorithm
description: 그래프 알고리즘
summary:
keywords:
- algorithm
- graph algorithm
tags:
- algorithm
- data structure
created_time: 2024-11-17 23:21
modified_time: 2025-02-19 02:21
---

# Graph Algorithm
: [그래프](../../data/data-structure/ds-graph.md) 자료구조를 다루거나 그래프와 관련된 문제를 해결하는 알고리즘  

- [탐색 알고리즘](#traversal-algorithms)
- [사이클 탐지 알고리즘](#cycle-detection-algorithms)
- [최단 경로 알고리즘](#shortest-path-algorithms)
- [최소 신장 트리 알고리즘](#minimum-spanning-tree-algorithms)
- [위상 정렬 알고리즘](#topological-sorting-algorithms)
- [순회 경로 탐색 알고리즘](#traversal-path-search-algorithms)
- [강한 연결 요소 알고리즘](#strongly-connected-components-algorithms)
- [그래프 매칭 알고리즘](#graph-matching-algorithms)
- [네트워크 흐름 알고리즘](#network-flow-algorithms)



## Traversal Algorithms
탐색 알고리즘  
: 그래프의 모든 정점을 체계적으로 방문하고 탐색하는 알고리즘  
: 그래프를 탐색해 정점 간 관계를 분석하거나 특정 정점이나 경로를 찾을 수 있음  

- 깊이 우선 탐색
- 너비 우선 탐색
- 양방향 탐색
- A* 탐색 알고리즘



## Cycle Detection Algorithms
사이클 탐지 알고리즘  
: 그래프 내의 사이클(순환)을 탐지하는 알고리즘  

- 깊이 우선 탐색 기반 사이클 탐지
- 유니온-파인드 기반 사이클 탐지
- 색칠 기법을 이용한 사이클 탐지



## Shortest Path Algorithms
최단 경로 알고리즘  
: 그래프에서 두 정점 사이의 최소 비용 경로를 찾는 알고리즘  

**단일 출발점 최단 경로**
- 다익스트라 알고리즘
- 벨만-포드 알고리즘

**모든 쌍 최단 경로**
- 플로이드-워셜 알고리즘
- 존슨 알고리즘



## Minimum Spanning Tree Algorithms
최소 신장 트리 알고리즘  
: 그래프에서 모든 정점을 연결하면서 간선 가중치의 합이 최소인 그래프를 찾는 알고리즘  

- 크루스칼 알고리즘
- 프림 알고리즘
- 보루브카 알고리즘



## Topological Sorting Algorithms
위상 정렬 알고리즘  
: 방향 비순환 그래프에서 정점을 종속성에 따라 선형적으로 정렬하는 알고리즘  

- 깊이 우선 탐색 기반 위상 정렬
- 카른 알고리즘



## Traversal Path Search Algorithms
순회 경로 탐색 알고리즘  
: 그래프에서 특정 조건을 만족하는 순회 경로를 찾는 알고리즘  

- 해밀턴 경로 알고리즘
- 오일러 경로 알고리즘
- 외판원 순회 알고리즘



## Strongly Connected Components Algorithms
강한 연결 요소 알고리즘  
: 방향 그래프에서 모든 정점 쌍에 대해 경로가 존재하는 강한 연결 정점을 찾는 알고리즘  

- 코사라주 알고리즘
- 타잔 알고리즘



## Graph Matching Algorithms
그래프 매칭 알고리즘  
: 그래프에서 간선들을 서로 겹치지 않게 선택하여 특정 조건을 만족하는 매칭을 찾는 알고리즘  

- 이분 매칭 알고리즘
- 헝가리안 알고리즘
- 호프크로프트-카프 알고리즘
- 블로섬 알고리즘



## Network Flow Algorithms
네트워크 흐름 알고리즘  
: 네트워크에서 간선의 용량 제한을 고려하여 최적의 자원의 흐름을 찾는 알고리즘  

- [최대 유량](#maximum-flow)
- [최소 비용 최대 유량](#minimum-cost-maximum-flow)



### Maximum Flow
: 네트워크에서 출발점에서 도착점으로 흐를 수 있는 최대 유량을 계산하는 알고리즘  

- 포드-풀커슨 알고리즘
- 에드몬드-카프 알고리즘
- 푸시-릴레이블 알고리즘
- 디닉 알고리즘



### Minimum Cost Maximum Flow
: 네트워크에서 최대 유량을 보내면서 동시에 총 비용을 최소화하는 알고리즘  

- 벨만-포드 기반 최소 비용 경로 알고리즘
- 최단 경로 우선 탐색 알고리즘 
- 음수 사이클 제거 알고리즘 
- 연속 최단 경로 알고리즘