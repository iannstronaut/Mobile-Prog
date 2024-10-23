# UTS Clone Link Aja

## Struktur Folder

```txt
lib/
├── main.dart
├── ui/
│   ├── pages/
│   │   ├── account_page.dart
│   │   ├── history_page.dart
│   │   ├── home_page.dart
│   │   └── inbox_page.dart
│   ├── components/
│   │   ├── balance_menu.dart
│   │   ├── carosel_main.dart
│   │   └── main_menu.dart
│   └── widget/
│       ├── account_items.dart
│       ├── balance_card.dart
│       └── icons_button.dart
└── shared/
    └── theme.dart
```

## Deskripsi File & Folder

- **`main.dart`**: Titik masuk awal aplikasi Flutter
- **`ui`**: Tempat semua kebutuhan User Interface seperti pages, components, dan widget
- **`pages`**: Tempat semua page berada
- **`components`**: Tempan semua components berada (components berisi kumpulan widget yang disatukan)
- **`widget`**: Tempat widget berada (widget adalah item terkecil dalam suatu ui)

## Deskripsi Pages

- Halaman Akun (**`account_page.dart`**): Menampilkan informasi akun pengguna dan opsi pengaturan.
- Halaman Riwayat (**`history_page.dart`**): Menampilkan riwayat transaksi pengguna.
- Halaman Utama (**`home_page.dart`**): Halaman utama yang menampilkan konten utama dan navigasi.
- Halaman Inbox (**`inbox_page.dart`**): Menampilkan pesan masuk dan notifikasi.

## Deskripsi Components & Widget

### Komponen:

- **`balance_menu.dart`**: Komponen yang menampilkan menu saldo.
- **`carosel_main.dart`**: Komponen carousel untuk menampilkan gambar atau konten interaktif.
- **`main_menu.dart`**: Menu utama aplikasi.

### Widget:

- **`account_items.dart`**: Kumpulan Widget untuk menampilkan item-item terkait akun.
- **`balance_card.dart`**: Kumpulan Widget kartu untuk membentuk Components balance.
- **`icons_button.dart`**: Kumpulan Widget tombol dengan ikon yang dapat digunakan di berbagai tempat dalam aplikasi.

## Tema

File **`theme.dart`** di folder **shared/** berisi pengaturan tema global yang digunakan di seluruh aplikasi. yang berisi warna.

## Cara Menjalankan

1. Clone Repo ini
2. jalankan _get pub_
   ```bash
   flutter pub get
   ```
3. Jalankan Aplikasi
   ```bash
   flutter run
   ```

## Preview

![hasil](hasil.gif)
