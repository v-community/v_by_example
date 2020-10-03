fn main() {
	a:=byte(10)
	b:=u16(10000)
	c:=u32(1000000)
	d:=u64(10000000000)
	// e:=u128(10000000000000000000000) // soon

	println(typeof(a))	// byte
	println(typeof(b))	// u16
	println(typeof(c))	// u32
	println(typeof(d))	// u64

	f := i8(-1)
	g := i16(-1000)
	h := int(-100000)
	i := i64(-1000000000)
	// j := i128(-10000000000000000000000000000) // soon
	println(typeof(f))	// i8
	println(typeof(g))	// i16
	println(typeof(h))	// int
	println(typeof(i))	// i64
	mut k := 100 
	mut m := byte(10032)

	println(typeof(k))	// int
	println(typeof(m))	// byte
	println(int(m))		// 48
	println(m)			// 0 (character represented by byte(48))

	k = 1000000000000000000 // overflow

	println(typeof(k))	// int
	println(k)			// -1486618624

	n := f32(2)
	p := f64(2)
	mut q := 2.0

	println(typeof(n))	// f32
	println(typeof(p))	// f64
	println(typeof(q))	// f64
	println(q)			// 2.

	q = 1

	println(q)			// 1.

	q = 1.2

	println(q)			// 1.2
}