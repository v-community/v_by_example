struct User {
	name string
	email string
mut:
	age int
}

fn (u User) can_register() bool {
	return u.age > 15
}

fn (mut u User) has_birthday() { // mut needed to change fields
	u.age++
}

// Below function gives error as field email is immutable
// fn (mut u User) change_email() {
// 	u.email = 'abcd@efgh.com'
// }

fn main() {
	mut bob := User {
		name: 'Bob'
		email: 'bob@bob.com'
		age: 15
	}
	alice := User {
		name: 'Alice'
		email: 'alice@alice-mail.com'
		age: 17
	}
	println(bob.can_register())												// false
	println('Bob needs to be 16 to register, but he only is ${bob.age}.')   // Bob needs to be 16 to register, but he only is 15.
	println(alice.can_register())											// true
	bob.has_birthday()
	println(bob.age)														// 16
	// alice.has_birthday()													// Gives error as alice is immutable
}
