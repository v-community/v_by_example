fn main() {
	numbers := create_even_numbers_to_fifty()
	println('Creating an array just containing even numbers from 0 to 50:\n$numbers\n')
	println('The maximum of the given array is: ' + max_val(numbers).str())

	red_col := Color.red
	green_col := Color.green
	grey_col := Color.grey
	println('The color $green_col is red or blue: ' + is_red_or_blue(green_col).str())
	println('The color $red_col is red or blue: ' + is_red_or_blue(red_col).str())
	println('The color $grey_col is red or blue: ' + is_red_or_blue(grey_col).str())

	println(num_str(2)) // 'two'
	println(num_str(5)) // 'many'
}

fn num_str(num int) string {
	return match num {
    	1 { 'one' }
    	2 { 'two' }
   		else {
        	'many'
    	}
	}
}

fn create_even_numbers_to_fifty() []int {
	mut numbers := []int
	for i := 0; i <= 50; i++ {
		match i % 2 {
			0  { numbers << i }
			else {
				continue
			}
		}
	}
	return numbers
}

fn max_val(numbers []int) int {
	mut maximum := 0
	for num in numbers {
		match num > maximum {
			true { 
					//println('current number: ' + num.str())
					maximum = num
				}
			else { continue }
		}
	}
	return maximum
}

enum Color {
	red
	blue
	green
	violet
	pink
	black
	white
	gray
	grey
	purple
	yellow
}

fn is_red_or_blue(c Color) bool {
	return match c { 
		.red { true }
		.blue { true }
		else { false }
	}
}


