---
order: 0.2
title: java
description: 자바 객체 지향 프로그래밍
summary:
keywords:
- java
- java oop
- interface
- 자바 객체 지향
- 자바 상속
- 인터페이스
tags:
- language
- java
created_time: 2024-10-11 08:39
modified_time: 2024-11-06 07:29
---

# Java OOP Programming
: 객체 지향 프로그래밍에서 객체는 독립적으로 존재하고 특정 상태를 유지하는 실체  
: 자바 프로그램은 객체 간 메소드 호출을 통한 의사 소통이며 모든 객체는 특정 타입에 속함  
: 타입은 클래스나 인터페이스로 정의되며 클래스는 상태와 행동으로 구성됨  

```
시스템 구성 = 객체들의 연결

객체
- 외부적 관점 : 객체를 인식하는 방법 = 타입
- 내부적 관점 : 객체의 동작 구현

클래스 = 객체 정의
```

**기본 개념**
- [캡슐화](#encapsulation)
- [은닉화](#hiding)
- [상속](#inheritance)
- [다형성](#polymorphism)
- [추상화](#abstraction)


**클래스 설계**
- 높은 응집도 : 관련된 기능들은 클래스로 구성
- 낮은 결합도 : 클래스 간 의존성을 최소화하여 유지보수를 쉽게 함
- 단일 책임 원칙 준수 : 클래스는 단일 책임만 가지도록 설계
- 불변 객체 설계 : 객체가 생성되면 객체의 상태가 변경되지 않도록 설계해 안정성 보장


**immutable object**  
: 객체 생성 후 객체의 상태가 절대로 변하지 않는 객체  
: 힙 영역에 할당된 후 객체의 모든 필드가 읽기 전용으로 유지되어 외부에서 상태를 변경할 수 없음  
: 여러 스레드에서 동시에 불변 객체에 접근해도 객체의 상태가 불변이므로 동기화가 필요하지 않음  
: 리플렉션을 통해 불변 객체의 상태를 변경할 수는 있음  

```java
// 생성자
public final class Example {

    private final String str;
    private final List<String> list;

    public Example(String str, List<String> list) {
        this.str = str;
        this.list = list != null 
            ? Collections.unmodifiableList(new ArrayList<>(list)) 
            : Collections.emptyList();
    }


    public String getStr() {
        return this.str;
    }

    public List<String> getList() {
        return this.list;
    }
}

// 정적 팩토리 메소드
public final class Example {

    private final String str;
    private final List<String> list;

    private Example(String str, List<String> list) {
        this.str = str;
        this.list = list != null 
            ? Collections.unmodifiableList(new ArrayList<>(list)) 
            : Collections.emptyList();
    }

    public static Example of(String str, List<String> list) {
        return new Example(str, list);
    }

    public String getStr() {
        return this.str;
    }

    public List<String> getList() {
        return this.list;
    }
}

// 빌더 패턴
public final class Example {

    private final String str;
    private final List<String> list;

    private Example(Builder builder) {
        this.str = builder.str;
        this.list = builder.list;
    }

    public static class Builder {
        private String str;
        private List<String> list;

        public Builder setString(String str) {
            this.str = str;
            return this;
        }

        public Builder setList(List<String> list) {
            this.list = list != null ? Collections.unmodifiableList(list) : Collections.emptyList();
            return this;
        }

        public Example build() {
            return new Example(this);
        }
    }

    public String getStr() {
        return this.str;
    }

    public List<String> getList() {
        return this.list;
    }
}
```



## Encapsulation
: 상태와 행동을 하나의 단위로 묶어 관리하는 것  
: 객체는 자신의 데이터를 자신이 관리하고 외부에서 직접 접근하지 못하게 제한함  
: 외부와의 상호 작용은 메소드(인터페이스)를 통해 수행하고 내부 구현은 숨김  
: 캡슐화를 통해 데이터의 무결성이 유지되며 객체가 모듈화되어 재사용과 확장성이 높아짐  

**데이터 할당**  
- 데이터 직접 할당 = 변수에 할당
- 데이터 간접 할당 = 메소드를 통해 변수에 할당


```java
public class Example {

    // 접근 제어자를 통해 상태를 숨김
    private int num;

    // 메소드를 통해 상태에 간접적으로 접근
    public int getNum() {
        return this.num;
    }

    // 메소드를 통해 상태를 변경
    public void setNum(int num) {
        // 데이터 검증 로직을 넣을 수 있음
        if(num < 0)  throw new IllegalArgumentException("");
        this.num = num;
    }

}
```



## Hiding
: 객체의 내부 상태를 숨기고 모든 상호작용은 메소드를 통해 수행하는 것  
: 데이터를 은폐해 객체의 상태가 예기치 않은 방식으로 변경되는 것을 방지함  
: 패키지와 접근 제어자를 통해 상태를 보호할 수 있음  

```java
public class Example {

    // 상태 보호
    private int privateNum;

    // 상속된 클래스만 상태에 접근 가능
    protected int protectedNum;

    // 상태 비보호
    public int publicNum;
    int defaultNum;

}
```



## Inheritance
: 클래스가 다른 클래스를 상속해 그 클래스의 속성과 기능을 물려받아 중복을 줄이는 것  
: 상속을 통해 기존 클래스를 재사용하고 객체가 분류 체계가 생기며며 계층적 구조가 만들어짐  
: 상속 관계인 클래스는 부모-자식 관계를 형성하고 자식 클래스는 상속받은 기능을 확장하거나 변경 할 수 있음  
: 상속 관계는 클래스 간 강한 의존성을 만들며 상위 클래스를 변경하면 하위 클래스에 영향을 미칠 수 있음  
: 상속 관계는 상위 클래스의 구현이 하위 클래스에 노출되므로 캡슐화를 위반함  
: 자바의 모든 클래스는 자동으로 Object 클래스를 상속하며 이외에는 단일 상속만 지원함  

**용어**
```
슈퍼 클래스 = 부모 클래스 = 상위 클래스 = 기반 클래스
서브 클래스 = 자식 클래스 = 하위 클래스 = 파생/확장 클래스

- 조상 클래스
- 부모 클래스 <= 직접 상속 : 바로 위의 상위 클래스 상속
- 자식 클래스 <= 간접 상속 : 상위 클래스를 통해 상속 계층에서 더 상위 클래스를 상속
```


**상속 관계**  
: 상속 관계는 is-a 관계로 클래스 간 상-하위 관계를 이룸  

```java
public class Animal {

    // 데이터 비공개
    private String type;

    // 데이터 상속
    // 공통되는 멤버를 상위 클래스에서 정의
    protected String name;

    // 생성자는 상속되지 않음
    public Animal() {}
    public Animal(String name) {
        this.name = name;
    }

    // 메소드 상속
    public void sound () {}

}

public class Dog extends Animal {

    public Dog() {
        // 부모 생성자를 호출해야 하며 명시하지 않으면 컴파일러에 의해 자동으로 호출함
        super();
    }

    public Dog(String name) {
        super(name);
    }

    // 부모 메소드 재정의
    @Override
    public void sound() {}

}
```


**포함 관계**  
: 포함 관계는 has-a 관계로 다른 객체를 부품처럼 소유한 관계  

- 구성 관계 : 강한 포함 관계를 형성하며 생명주기가 종속됨
- 집합 관계 : 약한 포함 관계를 형성하며 생명주기가 독립적임 

```java
public class Color {
    private String color;
}

// 수직적 관계 (상속 관계)
public class Dog extends Animal {

    // 수평적 관계 (포함 관계)
    private Color color;

    public Dog() {}

    public Dog(String name) {
        super(name);
    }

    public Dog(String name, Color color) {
        super(name);
        this.color = color;
    }

    @Override
    public void sound() {}

    public static void main(String[] args) {
        
        // 레퍼런스 다형성
        Animal dog = new Dog();

    }

}
```


**Delegation**  
: 상속 대신 델리게이션 패턴을 사용할 수 있음  
: 한 객체가 다른 객체에게 특정 작업이나 책임을 위임하는 패턴으로 상속보다 유연하며 결합도가 낮음  

```java
public class ExampleDelegate {
    public void print(String message) {
        System.out.println(message);
    }
}

public class Example {

    private ExampleDelegate delegate;

    public Example() {
        this.delegate = new ExampleDelegate();
    }

    public void print(String message) {
        this.delegate.print(message);
    }

}
```



## Polymorphism
: 레퍼런스 변수가 서로 다른 타입의 객체를 참조할 수 있는 개념  
: 같은 이름을 가진 메소드가 상황에 따라 다르게 동작할 수 있는 개념  
: 클래스 상속, 추상 클래스, 인터페이스를 통해 다형성을 구현함  

**종류**
- 레퍼런스 다형성
- 메소드 다형성
  - 메소드 오버로딩 (컴파일 시점)
  - 메소드 오버라이딩 (런타임 시점)

**특징**
- 확장성
- 코드 재사용성
- 코드 유지보수
- 정적 메소드 바인딩 (메소드 오버로딩) : 컴파일 시점에 호출되는 메소드가 결정
- 동적 메소드 바인딩 (메소드 오버라이딩) : 런타임 시점에 호출되는 메소드가 결정


```java
public class Animal {

    protected String name;

    public Animal() {}
    public Animal(String name) {
        this.name = name;
    }

    protected void sound () {}

}

public class Dog extends Animal {

    // 오버로딩
    // 메소드 이름은 같지만 매개 변수를 다르게 하여 여러 개의 메소드를 정의함
    // 기능은 같지만 매개 변수가 다르므로 처리되는 데이터가 다름
    public Dog() {
        // 부모 클래스의 기본 생성자를 호출
        super();
    }
    public Dog(String name) {
        if(name == null) {
            // 현재 클래스의 기본 생성자를 호출
            this();
        } else {
            super(name);
        }
    }

    // 오버라이딩
    // 부모 클래스의 메소드를 재정의
    // 오버라이딩된 메소드의 접근 제어자는 부모 클래스 메소드보다 넓은 범위여야 함 
    @Override
    public void sound() {}

    public static void main(String[] args) {
        
        // 레퍼런스 다형성
        Animal dog = new Dog();
        
        // 컴파일시에는 Animal 클래스의 메소드를 참조하지만
        // 런타임에는 실제 객체인 Dog 클래스의 메소드가 호출됨
        dog.sound();

    }
}
```



## Abstraction
: 추상화란 핵심적인 정보만을 드러내고 불필요한 세부사항은 숨기는 프로세스  
: OOP에서 추상화란 객체가 나타내려는 특성과 행위를 추상 클래스나 인터페이스로 추상화한 것  
: 추상 클래스나 인터페이스는 클래스를 통해 구현됨

**명세와 구현을 분리**
- 추상적 설계 = 인터페이스, 추상 클래스
- 구체적 설계 = 일반 클래스, 실체 클래스


**상속 및 구현**  

종류 | 키워드 | 설명
---|---|---
interface | extends    | 인터페이스가 다른 인터페이스를 상속함
interface | implements | 클래스가 다른 인터페이스를 구현함
abstract  | extends    | 클래스가 다른 추상 클래스를 상속함
class     | extends    | 클래스가 다른 클래스를 상속함



### interface
: 관련 없는 클래스들이 공통으로 사용하는 명세를 정의  
: 인터페이스는 특정 동작을 수행하기 위한 메소드의 시그니처를 제공하며 클래스를 통해 구현됨  
: 인터페이스는 클래스가 구현할 메소드를 정의만 할 뿐 실제 동작을 상속하지 않음  
: 인터페이스 간 상속은 정의된 메소드 시그니처를 상속함  


**사용에 따라**
- Public Interface : API 형태로 제공되는 공개된 인터페이스
- Internal Interface : 시스템이나 모듈 내부에서만 사용되는 사적인 인터페이스

**구조에 따라**
- Marker Interface : 구현할 메소드가 없는 인터페이스 (ex. java.Serializable)
- Functional Interface : 구현할 추상 메소드가 하나만 있는 인터페이스 (ex. java.Runnable)


```java
public interface InterfaceExample {

    // 인터페이스에 정의되는 데이터는 상수만 가능
    public static final int NUM = 0;

    public static void staticMethod() {}
    
    // 반드시 구현해야 하는 메소드
    public abstract void abstractMethod();

    // 기본 구현이 된 메소드
    public default void defaultMethod() {}
    
    // 인터페이스 내부에서만 사용되는 비공개 메소드
    private void privateMethod() {}

}

// 인터페이스는 다중 구현할 수 있음 = 객체는 다양한 타입에 속할 수 있음
public class Example implements Serializable, InterfaceExample {

    @Override
    public void abstractMethod() {}

}
```



### abstract class
: 일반 클래스와 동일하나 하나 이상 추상 메소드를 포함하고 있는 클래스  
: 추상 클래스는 객체를 생성할 수 없으며 타입으로만 존재  
: 추상 클래스를 상속한 클래스에서 추상 메소드를 필수로 구현해야 함  

```java
public abstract class AbstractExample {

    protected int num;

    public AbstractExample() {}
    public AbstractExample(int num) {
        this.num = num;
    }

    // 반드시 구현해야 하는 메소드
    public abstract void abstractMethod();
    
    // 기본 기능이 구현된 일반 메소드
    public void publicMethod() {}

}

public class Example extends AbstractExample {

    public Example() {}
    public Example(int num) {
        super(num);
    }

    @Override
    public void abstractMethod() {}

}
```