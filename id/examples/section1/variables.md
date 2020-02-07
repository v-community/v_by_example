# Variabel

Variabel pada V dapat dinyatakan dan diinisialisasi dengan operator `:=`. Variabel hanya dapat dideklarasikan dengan cara ini, ini berarti semua variabel memiliki nilai awal. Jenis variabel disimpulkan dari nilai di sisi kanan. Secara _default_ variabel dalam V tidak dapat diubah(_immutable_).

```go
umur := 23                  // int
nama := 'Alice'             // string
sudah_dewasa := age > 21    // bool

println(umur)               // 23
println(nama)               // Alice
println(sudah_dewasa)       // true
```

> Catatan: Variabel hanya dapat didefinisikan di dalam suatu fungsi. Tidak ada variabel global dan tidak ada variabel global di V.

Untuk mengubah nilai variabel, kita harus membuatnya _mutable_. Ini dapat dilakukan dengan menggunakan _keyword_ `mut` ketika mendeklarasikan variabel. Untuk menetapkan nilai baru ke variabel, gunakanlah operator `=`

```go
mut umur := 20       // mendeklarasikan umur variabel yang bisa berubah dan menetapkannya ke nilai 20.
println(umur)        // 20
umur = 21            // tetapkan nilai baru ke variabel umur
println(umur)        // 21
```

Meninggalkan kata kunci `mut` di sini akan menghasilkan _error_ karena nilai variabel yang _immutable_ tidak dapat diubah.

```go
fn main() {
    umur = 20
    println(umur)
}
```

Kode di atas akan menghasilkan _error_ selama kompilasi karena variabel `umur` tidak dideklarasikan,

```go
fn main() {
    mut umur := 20       // mendeklarasikan variabel yang immutable umur dan berikan nilai 20.
    println(umur)        // 20
    umur := 21           // ERROR
}
```

di sini `age: = 21` akan menghasilkan _error_ lain ketika dikompile karena variabel `umur` sudah didefinisikan dalam ruang lingkup. Sangat mudah diingat, cukup nyatakan nilai dengan `:=` dan tetapkan nilai dengan `=`.

Seperti Go, Kamu juga dapat menggunakan `_` untuk mengabaikan nilai saat tidak diperlukan. Biasanya cara ini digunakan dalam fungsi _multi return_.

```go
_ := "Saya tidak membutuhkan nilai ini"
println(_) // ERROR: Cannot use `_` as value
```

## Aturan Penamaan

Berikut ini adalah aturan-aturan yang harus diingat saat menamai variabel.

- Nama tidak boleh mengandung huruf besar seperti `AlphaTest`
- Gunakan garis bawah sebagai pemisah seperti `hello_world`
- Nama harus sejelas mungkin
- Nama tidak boleh mengandung `__`
- Nama tidak boleh mengandung spasi apa pun
- Jika nama lebih panjang dari 11 maka harus menggunakan `_` sebagai pemisah

Aturan-aturan ini berasal dari [`Snake_Case`](https://en.wikipedia.org/wiki/Snake_case). V menggunakan Snake Case dan memilihnya karena lebih mudah dibaca, ditulis, dan dimengerti.

### Nama yang Valid

```go
boby
ayah_jhon
nomor_keluargaku
```

### Nama yang tidak Valid

```go
SayaTidakValid
new Buat
```
