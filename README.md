# Tugas 7

## Stateless Widget vs Stateful Widget

- **Stateless Widget**: Widget yang tidak memiliki "state" atau kondisi yang dapat berubah. Digunakan ketika UI tidak berubah setelah widget pertama kali dirender. Contoh: `Text`, `Icon`.
- **Stateful Widget**: Widget yang memiliki "state" dan bisa berubah selama aplikasi berjalan. Memungkinkan interaksi atau perubahan data yang memengaruhi tampilan UI. Contoh: `Checkbox`, `TextField`.

## Widget yang Digunakan dalam Proyek

- **Scaffold**: Struktur dasar halaman yang menyediakan struktur untuk AppBar, Body, dan berbagai widget lainnya di halaman.
- **AppBar**: Menampilkan header atau judul di bagian atas halaman.
- **Center**: Memposisikan widget di tengah layar.
- **Column**: Menyusun widget secara vertikal di layar.
- **ElevatedButton**: Tombol interaktif yang dapat ditekan dan menampilkan aksi tertentu, dalam hal ini menampilkan pesan di Snackbar.
- **Icon**: Menampilkan ikon di samping teks pada tombol.
- **Text**: Menampilkan teks statis pada layar.
- **SnackBar**: Menampilkan pesan singkat di bagian bawah layar sebagai respons terhadap interaksi pengguna.
- **ScaffoldMessenger**: Digunakan untuk menampilkan Snackbar di dalam `Scaffold`.


## Fungsi `setState()`

- **setState()**: Digunakan di dalam Stateful Widget untuk memberitahu Flutter bahwa ada perubahan pada state, sehingga widget perlu dirender ulang. Variabel yang berada di dalam state (contoh: `int counter`, `String text`) akan diperbarui melalui `setState()`.

## Perbedaan `const` dengan `final`

- **const**: Digunakan untuk mendefinisikan nilai konstan yang ditentukan pada saat kompilasi, dan tidak akan pernah berubah. Biasanya untuk objek yang tidak berubah.
- **final**: Digunakan untuk nilai yang tetap setelah pertama kali diinisialisasi, tetapi inisialisasi bisa dilakukan saat runtime.

# Implementasi Checklist Flutter
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