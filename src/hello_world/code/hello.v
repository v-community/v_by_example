// Single line comments

/* This is a multiline comment.
 * /* It can also be nested. */
 *
*/

struct foo {
    name string
    number int
}

fn main() {

    print('Hello V\n')
    print('Hello World')

    // This will print on a new line automatically
 //   println('Hello V by Example')
 //   eprintln('Hello V by Example')

    /*println('I am Bob and I am $age old') */  // This won't print because `age` isn't defined.
   /* println(foo) */ // Also wouldn't work because custom str func not defined .

    //panic('Exiting from the program')
    
}
