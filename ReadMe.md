# Pengantar Bahasa Pemrograman Dart - Bagian 1

## Soal 1

Dengan Memodifikasi baris kode seperti dibawah ini akan menghasilkan hasil yang sesuai dengan yang diminta

```dart
for (int i = 18; i > 8; i--) {
    print('Nama saya Fulan, sekarang berumur ${i}');
  }
```

## Soal 2

**Mengapa sangat penting untuk memahami bahasa pemrograman Dart sebelum kita menggunakan framework Flutter ? Jelaskan!**

Flutter pada dasarnya dibangun menggunakan bahasa pemrograman Dart. Sehingga semua kode yang ditulis dalam aplikasi Flutter adalah kode Dart. Memahami sintaks dasar Dart seperti deklarasi variabel, fungsi, pengendalian alur (if-else, loop), dan fitur kelas akan mempermudah dalam menulis kode aplikasi Flutter dengan lebih efektif dan efisien.

## Soal 3

**Rangkumlah materi dari codelab**

- Dart menggabungkan kelebihan-kelebihan dari bahasa tingkat tinggi dengan fitur-fitur bahasa pemrograman terkini, Seperti Productive tooling, Garbage collection, Type annotations, Statically typed dan Portability
- Diluncurkan pada tahun 2011, Dart telah berkembang sejak saat itu dan pada tahun 2013 diluncurkan versi Stabilnya.
- Awalnya berfokus pada pengembangan web, dengan tujuan utama menggantikan JavaScript, sekarang telah fokus pada mobile development, termasuk framework Flutter.
- Mencoba memecahkan masalah pada JavaScript, Menawarkan performa terbaik dan alat yang lebih baik untuk proyek berskala besar, dan Dibentuk agar kuat dan fleksibel
- Kode Dart dapat dieksekusi pada lingkungan yang mendukung bahasa Dart.
- Eksekusi kode Dart dapat beroperasi dalam dua mode — kompilasi Just-In-Time (JIT) atau Kompilasi Ahead-Of-Time (AOT)
- Kompilasi JIT adalah tempat kode sumber dikompilasi sesuai kebutuhan—Just in time. Dart VM memuat dan mengkompilasi kode sumber ke kode mesin asli (native).
- Kompilasi AOT adalah dimana Dart VM dan kode Anda dikompilasi sebelumnya, VM bekerja lebih seperti sistem runtime Dart, yang menyediakan garbage collector dan metode-metode native dari Dart software development kit (SDK) pada aplikasi.

## Soal 4

**Penjelasan dan contoh eksekusi kode tentang perbedaan Null Safety dan Late variabel**

```dart
  String? nama; //variabel Nama Bisa tidak diisi
  String nama2 = "Fulan"; //variabel nama 2 harus diisi terlebih dahulu karna bukan nullable
  print('${nama} ${nama2}'); //null Fulan

  late int umur; //late berfungsi agar mengizinkan variabel tidak diisi terlebih dahulu
  umur = 18; //namun jika ingin digunakan maka variabel harus diisi sebelum digunakan
  print(umur); //jika tidak diisi maka akan menghasilkan error
```

Null Safety berfungsi agar variable boleh tidak memiliki nilai, jika digunakan maka akan menghasilkan null, Late variable berfungsi agar variable boleh tidak diberi nilai terlebih dahulu, namun jika ingin digunakan maka variable harus diberi nilai terlebih dahulu, bila tidak maka akan menghasilkan error