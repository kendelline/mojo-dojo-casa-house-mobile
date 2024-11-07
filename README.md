# Mojo Dojo Casa House Mobile 🕺🏻💃🏻

## Tugas 7
<details>

### Stateless Widget vs Stateful Widget

- **Stateless Widget**: Widget yang tidak memiliki "state" atau kondisi yang dapat berubah. Digunakan ketika UI tidak berubah setelah widget pertama kali dirender. Contoh: `Text`, `Icon`.
- **Stateful Widget**: Widget yang memiliki "state" dan bisa berubah selama aplikasi berjalan. Memungkinkan interaksi atau perubahan data yang memengaruhi tampilan UI. Contoh: `Checkbox`, `TextField`.

### Widget yang Digunakan dalam Proyek

- **Scaffold**: Struktur dasar halaman yang menyediakan struktur untuk AppBar, Body, dan berbagai widget lainnya di halaman.
- **AppBar**: Menampilkan header atau judul di bagian atas halaman.
- **Center**: Memposisikan widget di tengah layar.
- **Column**: Menyusun widget secara vertikal di layar.
- **ElevatedButton**: Tombol interaktif yang dapat ditekan dan menampilkan aksi tertentu, dalam hal ini menampilkan pesan di Snackbar.
- **Icon**: Menampilkan ikon di samping teks pada tombol.
- **Text**: Menampilkan teks statis pada gilayar.
- **SnackBar**: Menampilkan pesan singkat di bagian bawah layar sebagai respons terhadap interaksi pengguna.
- **ScaffoldMessenger**: Digunakan untuk menampilkan Snackbar di dalam `Scaffold`.

### Fungsi `setState()`

- **setState()**: Digunakan di dalam Stateful Widget untuk memberitahu Flutter bahwa ada perubahan pada state, sehingga widget perlu dirender ulang. Variabel yang berada di dalam state (contoh: `int counter`, `String text`) akan diperbarui melalui `setState()`.

### Perbedaan `const` dengan `final`

- **const**: Digunakan untuk mendefinisikan nilai konstan yang ditentukan pada saat kompilasi, dan tidak akan pernah berubah. Biasanya untuk objek yang tidak berubah.
- **final**: Digunakan untuk nilai yang tetap setelah pertama kali diinisialisasi, tetapi inisialisasi bisa dilakukan saat runtime.

### Implementasi Checklist Flutter
1. Membuat Proyek Flutter Baru
Buka terminal atau command prompt dan buat proyek Flutter baru dengan nama `mojo_dojo_casa_house`:

    ```bash
    flutter create mojo_dojo_casa_house
    cd mojo_dojo_casa_house
    ```
2. Menyiapkan File `menu.dart` dan Menghubungkannya dengan `main.dart`
3. Memodifikasi `main.dart` untuk menampilkan `MenuPage` sebagai halaman utama aplikasi.
4. Menjalankan aplikasi dengan command:
    ```bash
    flutter run
    ```
</details>

## Tugas 8
<details>

### Kegunaan `const` di Flutter
`const` digunakan di Flutter untuk mendeklarasikan nilai yang bersifat konstan dan ditentukan saat kompilasi (compile-time constant). Ini berarti nilai atau widget tersebut tidak akan berubah selama runtime aplikasi.

1. Keuntungan menggunakan `const`:
- `const` memungkinkan Flutter untuk menggunakan instance yang sama dari widget, sehingga meningkatkan performa aplikasi dan membuat kode lebih mudah dipahami karena menandakan bahwa nilai tersebut bersifat tetap.

2. Kapan sebaiknya menggunakan `const`:
- Pada saat ada widget atau nilai yang tidak berubah, seperti teks statis, ikon, dekorasi statis, atau widget yang tidak memerlukan data dinamis dan interaksi pengguna.

3. Kapan tidak sebaiknya menggunakan `const`:
- Untuk nilai atau widget yang akan berubah atau menerima input data saat runtime, serta ketika widget memerlukan data dinamis atau harus merespon perubahan.

### Perbandingan Column dan Row di Flutter
Column menyusun anak-anaknya secara vertikal (atas ke bawah). Row menyusun anak-anaknya secara horizontal (kiri ke kanan). Kedua widget memiliki properti `mainAxisAlignment` dan `crossAxisAlignment` untuk mengatur posisi elemen di sepanjang sumbu utama dan sumbu silang.

Implementasi Column:
```dart
Column(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: const [
    Text('Item 1'),
    Text('Item 2'),
    Text('Item 3'),
  ],
)
```

Implementasi Row:
```dart
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: const [
    Icon(Icons.star),
    Icon(Icons.favorite),
    Icon(Icons.person),
  ],
)
```
### Elemen Input yang Digunakan di Halaman Form
Pada halaman form `productentry_form.dart`, elemen input yang digunakan adalah sebagai berikut:
- `TextFormField`: Digunakan untuk input teks seperti nama produk dan deskripsi.
- `ElevatedButton`: Digunakan untuk tombol "Save" yang berfungsi sebagai tombol submit untuk form.

Elemen input Flutter lain yang tidak digunakan pada tugas ini:
- `DropdownButton`: Untuk memilih satu opsi dari daftar pilihan.
- `Checkbox` dan `Switch`: Untuk pilihan biner (benar/salah atau aktif/nonaktif).
- `Radio`: Untuk memilih satu opsi dari beberapa pilihan.
- `Slider`: Untuk memilih nilai dalam rentang tertentu.

### Pengaturan Tema di Aplikasi Flutter
Saya mengatur tema aplikasi Flutter di file `main.dart` dengan mendefinisikan `ThemeData` di dalam kelas `MyApp`. Dengan `ThemeData`, saya dapat menentukan font, palet warna utama, dan skema warna sekunder yang akan berlaku secara konsisten di seluruh aplikasi.

Implementasi Pengaturan Tema:
```dart
...
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Poppins', // Menggunakan font Poppins secara global
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.pink,
        ).copyWith(
          secondary: const Color.fromARGB(255, 243, 75, 131), // Warna sekunder khusus
          surface: const Color.fromARGB(255, 255, 243, 247),  // Warna background ringan
        ),
        useMaterial3: true, // Menggunakan Material Design 3 untuk gaya komponen terbaru
      ),
      home: MyHomePage(),
    );
  }
```

### Penanganan Navigasi dalam Aplikasi Flutter dengan Banyak Halaman
Navigasi dalam aplikasi Flutter dengan banyak halaman dapat dilakukan menggunakan `Navigator` dan `MaterialPageRoute`. Pada aplikasi ini, saya menggunakan metode `Navigator.push` untuk membuka halaman baru dan `Navigator.pop` untuk kembali ke halaman sebelumnya.

Implementasi Navigasi Antar Halaman:
```dart
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => ProductEntryFormPage()),
);
```
Kode di atas akan memuat halaman `ProductEntryFormPage` sebagai halaman baru yang ditumpuk di atas halaman saat ini. 

### Implementasi Checklist Flutter
1. Membuat file baru bernama `productentry_form.dart` di dalam folder `screens`. Di dalam file ini, saya memiliki halaman form untuk menambah item baru dengan elemen input _name_, _amount_, dan _description_.
2. Menambahkan tombol `Save` menggunakan `ElevatedButton` pada file `productentry_form.dart`. Jika input tidak valid, akan muncul sebuah pop-up dengan `AlertDialog`.
3. Melakukan validasi pada setiap elemen input sesuai dengan ketentuan pada `productentry_form.dart` juga.
4. Pada `menu.dart`, menambahkan navigasi dari tombol `Tambah Item` dengan `Navigator.push` di halaman utama yang jika di klik akan membawa tampilan ke halaman form tambah item.
5. Membuat drawer dengan dua opsi yaitu Halaman Utama (`menu.dart`) dan Tambah Item (`productentry_form.dart`).
6. Menambahkan font Poppins ke dalam `pubspec.yaml` dan melakukan konfigurasi pada `main.dart` untuk mengatur tema aplikasi dengan font Poppins sebagai font default.

</details>