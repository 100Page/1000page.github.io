---
order: 0.21
title: java
description: 자바 클래스
summary:
keywords:
- java
- java class
- java object
- 자바 클래스
- 자바 객체
tags:
- language
- java
created_time: 2024-10-09 09:31
modified_time: 2024-10-22 10:40
---

# Java Class
: 자바 프로그램을 구성하는 기본 단위  
: 자바 프로그램은 하나 이상 클래스로 구성되고 클래스는 다양한 요소로 정의됨  

- [Class Component](#class-component)
- [Object](#object)


**class declaration**  
: 클래스 이름을 선언하고 클래스 구성 요소를 선언함  

```java
public class Example {
    int num;

    void setNum(int num) {}
}
```

**class definition**  
: 클래스 이름을 선언하고 클래스 구성 요소를 선언하고 구체적으로 정의함 

```java
public class Example {
    int num = 10;

    void setNum(int num) {
        this.num = num;
    }
}
```



## Class Component
: 클래스는 데이터를 담는 변수와 데이터를 처리하는 메소드로 구성됨  
: 변수와 메소드는 클래스를 구성하는 특별한 요소로 해당 클래스의 특성(상태)을 나타냄  

**구성 요소**
- member : 멤버란 클래스의 데이터와 기능을 나타내는 특정 요소를 의미
  - [variable](./java-variable.md) = 상태, 특성, 필드, 속성
  - [method](./java-method.md) = 기능, 행위, 행동, 동작
  - [member class](./java-class-type.md#inner-class) 
- [block statement](#block-statement)
- [constructor](#constructor)


```java
// class definition 
public class Example {

    // member variable
    private int num;

    // block statement;
    {
        this.num = 0;
    }

    // constructor
    public Example() {}

    // member method
    public int getNum() {
        return this.num;
    }

    // member class 
    private class InnerClass {}

}
```



### class definition 
: 클래스는 class 키워드를 사용해 선언하고 클래스 이름은 명명 규칙을 기준으로 작성  
: [접근 제어자](./java-modifiers.md)를 통해 다른 클래스나 패키지에서 접근 여부와 범위를 지정  
: 접근 제어자 지정은 필수가 아니며 지정하지 않을 경우 자동으로 default로 지정됨  

**명명 규칙**
- 클래스 이름은 대문자로 시작
- 여러 단어일 경우 각 단어의 첫 글자를 대문자로 작성
- 일반적으로 명사를 사용하며 숫자, 언더스코어, 달러 기호는 사용 가능하나 지양
- 예약어는 클래스 이름으로 사용 불가


```java
// 자바 파일에는 하나의 public 클래스만 존재해야 함 
// 파일 명과 public 키워드를 지정한 클래스 명은 일치해야 함
// 최상위에 선언되는 클래스의 접근 제어자는 public과 (default)만 가능
public class PublicExample {

    // protected와 private 접근 제어자는 내부 클래스만 지정 가능
    protected class ProtectedExample {}
    private class PrivateExample {}

}

// default
class DefaultExample {}
```



### block statement
= initializer block  
: 객체 생성시 실행되는 코드 영역으로 초기화를 목적으로 사용되는 구문  
: 초기화 블록문에 static 키워드가 붙으면 클래스가 로드될 때 한 번만 실행됨  
: 블록 문은 특정 코드 영역으로 다양한 블록 문이 존재하나 여기에서는 초기화에 한정  

```java
public class Example {

    // 정적 초기화 블록, 클래스 초기화 블록
    // 클래스가 로드되는 시점에 한 번만 실행되는 영역
    // 정적 변수 초기화나 초기 설정을 위해 사용
    static {}

    // 인스턴스 초기화 블록
    // 객체가 생성되는 과정에서 생성자가 실행되기 전에 호출되는 영역
    // 멤버 변수 초기화나 생성자 호출 전 실행되어야 할 기능을 정의하기 위해 사용
    {}

}
```



### constructor 
: 클래스의 인스턴스를 생성할 때 호출되는 특수한 메소드  
: 생성자를 통해 객체의 필드를 초기화해 객체의 초기 상태를 설정할 수 있음  
: 생성자 이름은 클래스 이름과 동일해야 하며 반환 타입을 명시하지 않음  
: 객체 생성시 객체 상태를 초기화를 위해 한 번만 호출됨  
: 접근 제어자를 통해 생성자가 호출하는 범위를 지정할 수 있음  

**종류**
- 기본 생성자
- 사용자 정의 생성자 (명시적 생성자)

```java
public class Example {

    private int num;
    private String str;

    // 기본 생성자
    // 매개 변수가 없으며 구현부가 비어있는 생성자
    // 클래스는 최소 하나 이상의 생성자를 필수로 함
    // 사용자가 생성자를 정의하지 않으면 컴파일러에 의해 자동으로 생성됨
    // 사용자가 생성자를 정의하면 기본 생성자는 생성되지 않음
    public Example() {}

    // 사용자 정의 생성자 (명시적 생성자)
    // 매개 변수가 있으며 구현부를 통해 특정 로직을 실행하거나 메소드를 호출함
    // 객체 생성시 필수 데이터를 주입하게 제약을 걸 수 있음
    public Example(int num) {
        // this는 현재 객체를 가르키는 키워드
        // 생성자에서 다른 생성자 호출이 가능한데 이를 생성자 체이닝이라고 함
        this(num, "default");
    }

    // 생성자 오버로딩 
    // 오버 로딩을 통해 생성자를 여러 개 정의할 수 있음
    public Example(int num, String str) {
        // 매개 변수와 인스턴스 필드명이 같은 경우 구별하기 위해 this 키워드 사용
        this.num = num;
        this.str = str;
    }

    public static void main(String[] args) {
        
        // JVM이 new 키워드를 만나면
        // new 키워드를 통해 생성자를 호출하고 객체를 생성
        // 객체가 생성되면 인스턴스 주소가 반환되고 이를 참조 변수에 저장
        Example ex = new Example(100);

    }

}
```



## Object
: 클래스란 객체를 생성하기 위해 상태와 기능을 정의한 템플릿  
: 객체는 클래스를 기반으로 생성된 실체(instance)로 객체는 해당 클래스에 속함  
: 하나의 클래스로부터 여러 객체가 생성될 수 있으며 각 객체는 독립적인 상태(데이터)를 갖음  
: 객체는 생성자에 의해 생성되며 더 이상 참조되지 않으면 [GC](../jvm-gc.md)에 의해 자동으로 제거됨  

```
(구조)                   (실체)
클래스 ==> 인스턴스화 ==> 객체 
```

**인스턴스화**  
: 클래스로부터 실제 객체를 생성하는 과정  
: new 키워드를 사용해 객체를 생성하면 클래스의 생성자가 호출되어 객체가 초기화 됨  
: 특정 클래스로부터 만들어진 객체를 인스턴스라고 함  
: 메모리 차원에서 인스턴스는 인스턴스 변수들만 저장하고 클래스 변수나 메소드는 클래스를 참조해 사용

  
```java
public class Example {

    class User {
        String name;
        int age;

        public User(String name, int age) {
            this.name = name;
            this.age = age;
        }
    }

    public static void main(String[] args) {

        // u1 = 객체 참조 변수로 객체가 위치하는 주소 값 (레퍼런스)
        User u1 = new User("유저1", "20");
        User u2 = new User("유저2", "25");
        User u3 = new User("유저3", "30");

    }

}
```


**레퍼런스**  
: 특정 메모리 주소를 가리키는 값  


**new 연산자**  
1. 힙 메모리에 객체를 생성하기 위해 JVM이 필요한 크기의 메모리를 할당
2. 할당된 메모리 영역의 비트를 0으로 설정해 클래스 필드가 기본값으로 초기화됨
3. 필드에 초기값이 명시되어있으면 이를 할당하고 초기화 블록이 있으면 실행함
3. 클래스의 생성자를 호출하고 초기화 구문이 있으면 필드를 다시 초기화함
4. 생성자 실행이 종료되면 객체의 메모리 주소가 반환되고 참조 변수에 저장됨


**JVM 메모리 영역**  

영역 | 설명 
---|---
Stack Memory | 메소드 호출 (객체 참조 변수, 지역 변수)
Heap Memory  | 객체 (객체의 데이터)
Metaspace    | 클래스 메타데이터, 메소드 메타데이터, 클래스 변수