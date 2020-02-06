# Formatted Print

_Print_ ditangani oleh berbagai fungsi _I/O stream_. Kamu harus tahu di mana harus menggunakannya.

- `print`: untuk mencetak teks ke _output stream_ tanpa baris baru.

- `println`: sama seperti `print` tetapi baris baru ditambahkan secara otomatis.

- `eprint`: sama seperti `print` tetapi _output_ menuju ke _error stream_(stderr).

- `eprintln`: sama dengan `println` tetapi _output_ menuju _error stream_(stderr).

- `panic`: mencetak teks ke _output_ dan keluar dari program.

```v
print('Hello World')
print('Hello V')
```

Ini akan mencetak `Hello WorldHello V`

Jika kamu ingin mencetak teks berikutnya pada baris baru, kamu harus melakukan dengan menambahkan `\n`.

```v
print('Hello World \n')
print('Hello V ')
```

Jika kamu tidak ingin menggunakan `\n` maka kamu dapat menggunakan `println`.

## Komentar

V mendukung komentar baris tunggal `//` dan komentar multi-baris `/ * * /`.
Mereka biasanya digunakan untuk mendokumentasikan kode untuk membiarkan pengguna lain tahu cara kerja kode tersebut.
Ini juga dapat digunakan untuk mengomentari sementara kode yang akan digunakan nantinya.

```v
// Ini adalah komentar satu baris

/* Ini adalah sebuah
* komentar multi-baris
* / * Ini bisa disarangkan juga * /
* /
```

## Latihan

Coba hapuslah komentar pada kode di `hello.v` dan lihat apa yang terjadi.
