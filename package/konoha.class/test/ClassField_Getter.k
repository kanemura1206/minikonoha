// writte by kimio kuramitsu

K.import("konoha.class");
K.import("konoha.assign");

class Person {
	String name;
	int age;
	Person(String name, int age) {
		this.name = name;
		this.age = age;
	}
}

void f() {
	Person p = new Person("naruto", 17);
	assert(p.getAge() == 17);
	assert(p.getAge() == p.age);
}

f();

