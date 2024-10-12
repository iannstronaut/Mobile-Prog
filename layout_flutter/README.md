# Layout dan Navigasi

## Membangun Layout di Flutter

1. Ubah lib/main.dart menjadi seperti dibawah ini:

```dart
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout: Al Byan A.S 224172XXXX',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
```

Hasilnya:
![P1S1](img/P1S1.png)

2. Implementasikan Title Row
   > Tambahkan kode berikut diatas Build():

```dart
Widget titleSection = Container(
  padding: const EdgeInsets.all(...),
  child: Row(
    children: [
      Expanded(
        /* soal 1*/
        child: Column(
          crossAxisAlignment: ...,
          children: [
            /* soal 2*/
            Container(
              padding: const EdgeInsets.only(bottom: ...),
              child: const Text(
                'Wisata Gunung di Batu',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'Batu, Malang, Indonesia',
              style: TextStyle(...),
            ),
          ],
        ),
      ),
      /* soal 3*/
      Icon(
       ...,
        color: ...,
      ),
      const Text(...),
    ],
  ),
);
```

> **Soal 1** Letakkan widget Column di dalam widget Expanded agar menyesuaikan ruang yang tersisa di dalam widget Row. Tambahkan properti crossAxisAlignment ke CrossAxisAlignment.start sehingga posisi kolom berada di awal baris.

> **Soal 2** Letakkan baris pertama teks di dalam Container sehingga memungkinkan Anda untuk menambahkan padding = 8. Teks ‘Batu, Malang, Indonesia' di dalam Column, set warna menjadi abu-abu.

```dart
Expanded(
  /* soal 1*/
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      /* soal 2*/
      Container(
        padding: const EdgeInsets.only(bottom: 8),
        child: const Text(
          'Wisata Gunung di Batu',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      const Text(
        'Batu, Malang, Indonesia',
        style: TextStyle(color: Colors.grey),
      ),
    ],
  ),
),
```

> **Soal 3** Dua item terakhir di baris judul adalah ikon bintang, set dengan warna merah, dan teks "41". Seluruh baris ada di dalam Container dan beri padding di sepanjang setiap tepinya sebesar 32 piksel. Kemudian ganti isi body text ‘Hello World' dengan variabel titleSection seperti berikut:

```dart
const Icon(
  Icons.star_rate,
  color: Colors.red,
),
const Text('41'),
```

```dart
body: Column(
          children: [titleSection],
    )
```

Hasilnya:
![P1S2](img/P1S2.png)

## Implementasi Button Row

1. Buat method Column \_buildButtonColumn
   > buatlah metode pembantu pribadi bernama buildButtonColumn(), yang mempunyai parameter warna, Icon dan Text, sehingga dapat mengembalikan kolom dengan widgetnya sesuai dengan warna tertentu.

```dart
Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
```

2. Buat Widget buttonSection
   > Bangun baris yang berisi kolom-kolom ini dengan memanggil fungsi dan set warna, Icon, dan teks khusus melalui parameter ke kolom tersebut. Sejajarkan kolom di sepanjang sumbu utama menggunakan MainAxisAlignment.spaceEvenly untuk mengatur ruang kosong secara merata sebelum, di antara, dan setelah setiap kolom. Tambahkan kode berikut tepat di bawah deklarasi titleSection di dalam metode build():

```dart
Color color = Theme.of(context).primaryColor;

Widget buttonSection = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    _buildButtonColumn(color, Icons.call, 'CALL'),
    _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
    _buildButtonColumn(color, Icons.share, 'SHARE'),
  ],
);
```

3. Tambahkan buttonSection kedalam body

```dart
body: Column(
          children: [titleSection, buttonSection],
    )
```

Hasilnya:
![P2S1](img/P2S1.png)

## Implementasi Text Section

1. Buat widget textSection
   > Tentukan bagian teks sebagai variabel. Masukkan teks ke dalam Container dan tambahkan padding di sepanjang setiap tepinya. Tambahkan kode berikut tepat di bawah deklarasi buttonSection:

```dart
Widget textSection = Container(
  padding: const EdgeInsets.all(32),
  child: const Text(
    'Carilah teks di internet yang sesuai '
    'dengan foto atau tempat wisata yang ingin '
    'Anda tampilkan. '
    'Tambahkan nama dan NIM Anda sebagai '
    'identitas hasil pekerjaan Anda. '
    'Selamat mengerjakan 🙂.',
    softWrap: true,
  ),
);
```

2. Tambahkan textSection kedalam Body

```dart
body: Column(
        children: [titleSection, buttonSection, textSection],
    )
```

Hasilnya:
![P2S2](img/P2S2.png)

## Implementasi Image Section

1. Siapkan aset gambar

```batch
assets:
    - images/rainbow.png
```

2. Tambahkan gambar kedalam body

```dart
body: Column(
        children: [
            Image.asset(
              'images/rainbow.png',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection
        ],
    )
```

3. Ubah menjadi listView

```dart
body: ListView(
        children: [
            Image.asset(
              'images/rainbow.png',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection
        ],
    )
```

Hasilnya:
![P3S1](img/P3S1.png)

## Tugas 1
> Silakan implementasikan di project baru "basic_layout_flutter" dengan mengakses sumber ini: https://docs.flutter.dev/codelabs/layout-basics