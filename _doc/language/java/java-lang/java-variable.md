---
order: 0.23
title: java
description: 자바 변수
summary:
keywords:
- java
- java variable
- 자바 변수
tags:
- language
- java
created_time: 2024-10-11 08:45
modified_time: 2024-10-22 10:40
---

# Java Variable
: 데이터가 저장될 메모리 위치를 가르키는 이름(기호)  
: 변수를 통해 메모리에 접근해 데이터를 저장하고 핸들링함  
: 프로그램 실제 실행시 변수는 메모리 주소로 변환됨

**범위**
- [클래스 변수](#static-variable)
- [인스터턴스 변수](#instance-variable)
- [지역 변수](#local-variable)
- [매개 변수](#parameter-variable)
- [익명 변수](#unnamed-variable)
- [전역 변수](#global-variable)

**특성**
- final 변수
- transient 변수
- volatile 변수

```java
// declaration = 변수 선언 
// 1. 데이터 타입 지정 : 타입에 따라 데이터가 저장될 메모리 공간 크기 확보   
// 2. 변수명 지정 : 변수명과 메모리 위치가 연결됨 
int num;

// 3. 식별자를 통해 메모리에 접근하고 할당 연산자를 통해 데이터를 저장 
num = 0;

// definition = 변수 선언 및 초기화 
int num = 0;
```


**수식어**  
: [수식어](./java-modifiers.md)를 통해 변수의 속성이나 동작을 변경할 수 있음  


**스코프**  
: 변수가 선언되는 영역으로 이에 따라 저장될 메모리 위치가 달라지고 생애 주기가 결정됨  
: 변수는 스코프에 따라 접근 가능한 범위가 한정됨  

스코프 | 변수 유형 | 설명 
---|---|---
Global | 클래스 변수 | 클래스 레벨에서 선언된 변수로 프로그램이 종료되면 제거됨
Class  | 인스턴스 변수 | 클래스 내부에 선언된 변수로 객체가 제거되면 제거됨
Method | 지역 변수 | 메소드 내에 선언된 변수로 메소드 실행이 끝나면 제거됨
Block  | - | 조건문이나 반복문같은 특정 블록 내에서 선언된 변수로 블록 실행이 끝나면 제거됨


**JVM 메모리 영역**  

영역 | 설명 
---|---
Stack Memory | 메소드의 지역 변수와 매개 변수가 저장되는 영역
Heap Memory  | 인스턴스 변수가 저장되는 영역
Metaspace    | 클래스 변수가 저장되는 영역
Thread-Local Areas | 스레드 로컬 변수가 저장되는 영역 



## static variable
= 클래스 변수, 정적 변수  
: static 키워드로 선언된 변수  
: 클래스가 메모리에 로드될 때 생성되며 클래스가 제거되면 함께 제거됨  
: 항상 값이 있는 상태로 초기화하지 않을 경우 컴파일러에 의해 기본 값이 할당됨  
: 클래스에 속하는 변수로 클래스의 인스턴스들이 공유하는 변수  
: 클래스 명을 통해 참조하며 접근 제어자를 지정해 접근 수준을 명시할 수 있음    

```java
public class Example {

    // 비공개 정적 변수로 클래스 내부에서만 접근 가능
    private static int privateStaticVar;

    // 기본 정적 변수로 동일 패키지 내에서만 접근 가능
    static int defaultStaticVar;

    // 보호된 정적 변수로 동일 패키지이거나 상속 관계에서만 접근 가능
    protected static int protectedStaticVar;

    // 공개된 정적 변수로 어디서든 접근 가능
    public static int publicStaticVar;

}
```



## instance variable
= 인스턴스 변수, 멤버 변수, 필드, 속성  
: 클래스 내부에 메소드 외부에 선언된 변수  
: 클래스의 객체 생성마다 생성되며 객체가 제거되면 함께 제거됨  
: 객체의 상태를 나타내며 필드, 속성이라고 부르기도 함  
: 항상 값이 있는 상태로 초기화하지 않을 경우 컴파일러에 의해 기본 값이 할당됨  
: 클래스의 객체를 통해 참조하며 접근 제어자를 지정해 접근 수준을 명시할 수 있음  

```java
public class Example {

    // 비공개 변수로 클래스 내부에서만 접근 가능
    private int privateVar;

    // 기본 인스턴스 변수로 동일 패키지 내에서만 접근 가능 
    int num;

    // 보호된 변수로 동일 패키지이거나 상속 관계에서만 접근 가능
    protected int protectedVar;

    // 공개된 변수로 어디서든 접근 가능
    public int publicVal;

} 
```



## local variable
= 로컬 변수, 지역 변수  
: 생성자나 메소드 내에서 선언된 변수  
: 생성자나 메소드가 실행될 때마다 생성되며 생성자나 메소드가 제거되면 함께 제거  
: 초기화하지 않으면 컴파일 오류가 발생하므로 초기화 필수  
: 선언된 범위 내에서만 참조 가능   
: Java 10부터 var 키워드를 통해 데이터 타입을 지정하지 않는 변수 지원   

```java
public class Example {
    public void method() {
        int num = 0;
    }
}
```


**로컬 변수 타입 추론**  
: 로컬 변수 경우 데이터 타입을 명시하지 않음  
: 컴파일러가 변수의 데이터 타입을 추론해 컴파일 타임에 변수의 타입이 결정됨  
: 컴파일 타임에 데이터 타입이 결정되므로 타입 안정성이 유지됨  
: 변수의 타입이 두 개 이상으로 추론되는 경우 오류 발생  

```java
public class Example {
    public void method() {
        var num = 0;
    }
}
```



## parameter variable   
= 매개 변수, 형식 매개 변수  
: 생성자나 메소드의 시그니처에 선언된 변수   
: 생성자나 메소드가 실행될 때 생성되며 생성자나 메소드가 제거되면 함께 제거됨  
: 매개 변수는 메소드 호출시 전달되는 인자에 의해 초기화됨  
: 선언된 범위 내에서만 참조 가능  

```java
public class Example {

    // parameter = 매개 변수, 형식 매개 변수
    public void method(int num) {
        System.out.println(num);
    }

    public static void main(String[] args) {
        // argument = 인자, 인수, 실제 매개 변수
        method(0);
    }
}
```



## unnamed variable
: Java 21부터 지원하는 이름없는 변수  
: 사용하지 않는 변수를 선언하지 않고 언더스코어 기호를 사용  

```java
int[] arr = {1,2,3};
int count = 0;

for(int _ : arr) {
    count++;
}
```



## global variable
: 자바에서는 전역 변수를 직접 지원하지 않지만 static 키워드와 final 키워드를 통해 유사한 방식을 지원  

```java
public class Example {
    public static final int NUM = 0;
}