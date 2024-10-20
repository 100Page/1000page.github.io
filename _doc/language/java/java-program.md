---
order: 0.4
title: java
description: 자바 프로그램
summary:
keywords:
- java
- java program
- 자바
- 자바 프로그램
tags:
- language
- java
created_time: 2024-10-07 06:45
modified_time: 2024-10-07 11:35
---

# Java Program 
: 자바 프로그래밍 언어로 만들어지고 자바 컴파일러를 통해 변환되어 JVM에서 실행되는 프로그램  

**종류**
- 콘솔 애플리케이션
- GUI 애플리케이션
- 웹 애플리케이션
- 엔터프라이즈 애플리케이션
- 모바일 애플리케이션

**특징**
- 플랫폼 독립성
- 높은 확장성
- 자동 메모리 관리 (가비지 컬렉션)
- 다중 스레드 지원
- 예외 처리 
- 동적 로딩
- 보안성



## Java Program Execution
: 자바 프로그램은 컴파일 타임과 런타임 단계를 걸쳐 실행  

![java program execution](https://i.ibb.co/9GVCXL2/java-program-execution.jpg)


**실행 과정**
1. 자바 언어로 소스 코드 작성
2. 소스 코드를 컴파일러를 통해 바이트 코드로 변환 = 컴파일 타임
3. 바이트 코드를 실행하면 JVM이 이를 메모리에 로드하고 실행 준비를 함 = 런타임
3-1. 클래스 로더를 통해 참조되는 클래스들을 메모리에 동적으로 로드함
3-2. 로드된 바이트 코드를 검증하고 초기화하는 등 준비 과정이 이루어짐
4. 문제가 없으면 인터프리터가 바이트 코드를 한 줄씩 해석해 운영체제의 머신 코드로 변환
5. 이때 자주 사용되는 바이트 코드는 JIT 컴파일러가 머신 코드로 변환해 메모리에 저장
6. 최종적으로 머신 코드로 변환된 명령어를 CPU가 실행
7. 프로그램이 종료되면 JVM이 사용된 시스템 자원을 해제함



### Java Compiler
: 자바 소스 코드를 바이트 코드로 변환하는 프로그램  
: 변환 과정을 컴파일 타임이라고 하며 이때 문법 오류, 타입 체크, 코드 최적화 등을 수행  

**과정**
```
1. 어휘 분석
2. 구문 분석
3. 의미 분석
4. 중간 코드 생성
5. 코드 최적화
6. 목적 코드 생성 (바이트 코드인)
```

**종류**   
- javac (Java Compiler) 
- ECJ (Eclipse Compiler for Java)
- GCJ (GNU Compiler for Java)
- Jikes 



### Java Interpreter
: 바이트 코드를 머신 코드로 변환하는 프로그램으로 JVM 내부에 존재  
: 변환 과정을 런타임이라고 하며 이때 운영체제에 맞는 머신 코드로 변환함  
: 현대 JVM은 인터프리터만 사용하지 않고 JIT 컴파일러를 혼합해 사용

JVM | Compiler 
---|---
HotSpot  | JIT Compiler(C1), Server Compiler(C2)
GraalVM  | JIT Compiler, GraalVM Compiler, GraalVM Native Image(AOT)
OpenJ9   | JIT Compiler, AOT Compiler


**JIT Compiler**  
: Just in Time Compiler  
: 동적 컴파일러  
: 바이트 코드를 운영체제와 CPU 아키텍처에 최적화된 머신 코드로 변환  


**AOT Compiler**  
: Ahead of Time Compiler  
: 정적 컴파일러  
: 바이트 코드 단계없이 머신 코드를 생성하는 컴파일러  
: 클라우드 네이티브 환경에서 사용하기 적합  
: HotSpotVM의 AOT 컴파일러는 Java 9에서 실험적으로 도입되고 Java 16부터는 제거됨  


**JVMCI**  
: JVM Compiler Interface  
: JVMCI를 통해 JVM에 새로운 컴파일러를 연결함 (ex. HotSpot + Graal)  
: Java 9부터 도입되어 JVM의 컴파일러 교체를 가능하게 함  

```java
System.getProperty("java.vm.version");
System.getProperty("jvmci.Compiler");
```



### Java Bytecode
: 바이트 코드는 JVM이 실행할 수 있는 중간 언어로 피연산자(Operands)와 명령어(Opcode)로 구성  
: 바이트 코드는 모든 JVM에서 실행 가능한데 이 부분이 플랫폼 독립성을 의미함  

**Opcode** (https://docs.oracle.com/javase/specs/jvms/se21/html/jvms-6.html)  
: 바이트 코드 명령어로 약 200개의 명령어가 사용되며 그중 약 50개는 디버깅 용도  
: 스택 조작, 산술 및 논리 연산, 제어 흐름, 메서드 호출 등이 있음  


**invokedynamic**   
: Java 7부터 도입된 Opcode  
: JVM을 런타임으로 사용하는 동적 타입 언어를 위해 도입  

```java
public class Example {
    public void 메소드(){
        클래스 변수 = new 클래스();
    }
}


compiled from "Example.java"
public class Example extends java.lang.Object {
public Example();
    code :
        0 : aload_0
        1 : invokespecial  
        4 : return

public void 메소드();
    code :
        0 : new  
        3 : dup
        4 : invokespecial  
        7 : astore_1
        8 : return
}
```



#### Java Bytecode Manipulation
: 자바 바이트 코드 조작  
: 성능 최적화를 위해 자바 바이트 코드를 조작하고 분석함  

**라이브러리**
- ASM
- Byte Buddy
- Javassist
- Apache BCEL