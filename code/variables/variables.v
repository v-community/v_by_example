fn main() {
    age := 23			// int
    name := 'Alice'		// string
    is_male := false		// bool
    is_adult := age > 21	// bool
    mut email := 'alice@alice-mail.com' //string
    mut num_phone := 2       //int

    // addr = 'abcd'       // error as assignment must be done with :=
    // fn := 1          // error as keyword cannot be identifier (see keywords.md)

    println(age)		// 23
    println(name)		// Alice
    println(is_male)		// false
    println(is_adult)		// true
    println(email)          // alice@alice-mail.com
    println(num_phone)      // 2

    email = 'alice@other.com'   // assigning new value
    num_phone += 2       // shorthand assignment

    println(email)          // alice@other.com
    println(num_phone)      // 4

    // age = 24    // error as it is immutable
    // email = 2   // error as RHS (2) is of different type then LHS (email)

}
