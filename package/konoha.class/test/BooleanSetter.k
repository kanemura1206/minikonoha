// writte by kimio kuramitsu

K.import("konoha.class");
K.import("konoha.assign");

class Person {
	String name;
	int age;
	boolean child;
	Person(String name, int age) {
		this.name = name;
		this.age = age;
	}
	boolean isChild() {
		return child;
	}
}

void f() {
	Person p = new Person("naruto", 17);
	p.setChild(true);
	assert(p.getChild());
	assert(p.isChild());
}

f();

