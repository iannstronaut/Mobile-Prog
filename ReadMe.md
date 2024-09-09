# Pengantar Bahasa Pemrograman Dart - Bagian 2

## Menerapkan Control Flows ("if/else")

**Langkah 1**
Penerapan if else yang sesuai

```dart
  String test = "test2";
  if (test == "test1") {
    print("Test1");
  } else if (test == "test2") {
    print("Test2");
  } else {
    print("Something else");
  }

  if (test == "test2") print("Test2 again");
```

```batch
Test2
Test2 again
```
Variabel String akan dicek melalui if else, jika hasilnya sama dengan 'test1' maka output yang dihasilkan adalah 'Test1', jika sama dengan 'test2' maka outputnya adalah 'Test2', jika tidak keduanya output yang dihasilkan berupa 'Something else'.

if juga bisa dibuat 1 line tanpa '{}' seperti contoh ke 2


**Langkah 2 & 3**

```dart
  String test = "true";
  if (test) {
    print("Kebenaran");
  }
```

Terjadi error dikarnakan dengan if tidak menerima kondisi alias menggantung disebabkan oleh test bertipe String dan bukan Boolean

```dart
  bool test2 = true;
  if (test2) {
    print("Kebenaran");
  }
```

```batch
Kebenaran
```

## Menerapkan Perulangan "while" dan "do-while"

**Langkah 1**

```dart
while (counter < 33) {
  print(counter);
  counter++;
}
```

Terjadi error dikarnakan variable counter belum di inisialisasi
**Langkah 2**

```dart
  int counter = 0;
  while (counter < 33) {
    print(counter);
    counter++;
  }
```

```batch
1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32
```
While akan mengecek kondisi perulangan terlebih dahulu, jika kondisi cocok, maka perulangan dilakukan, jika tidak perulangan tidak berjalan atau diberhentikan

**Langkah 3**

```dart
  do {
    print(counter);
    counter++;
  } while (counter < 77);
```

```batch
32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76
```

Kode berjalan normal, perbedaan antara while dan do-while adalah pengecekan kondisinya, ‘while’ melakukan pengecekan kondisi diawal lalu melakukan perintah, sedangkan ‘do-while’ melakukan perintah terlebih dahulu lalu mengecek kondisi nya

## Menerapkan Perulangan "for" dan "break-continue"

**Langkah 1**

```dart
  for (Index = 10; index < 27; index) {
    print(Index);
  }
```

Kondisi kondisi perulangan ‘for’ yang tidak lengkap. Dikarnakan inisialisasi Variabel salah atau tidak tepat dan Ekspresi perulangan yang belum lengkap

```dart
  for (var index = 10; index < 27; index) {
    print(index);
  }
```

```batch
10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26
```
Perulangan 'for' memiliki 3 parameter yaitu Inisialisasi variabel, Kondisi, dan Ekspresi perulangan.

**Langkah 2**
Tambahkan kode program berikut di dalam for-loop

```dart
for (var index = 1; index < 27; index++) {
    print(index);
    if (Index == 21)
      break;
    else if (index > 1 || index < 7) continue;
    print("Oke");
  }
```

Variabel Index Tidak ditemukan atau belum di inisialisasi

```dart
for (var index = 1; index < 27; index++) {
    print(index);
    if (index == 21)
      break;
    else if (index > 1 || index < 7) continue;
    print("Oke");
  }
```

```batch
1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21
```
Perintah ‘Break;’ akan menghentikan perulangan walaupun kondisi pada perulangan belum terpenuhi, sedangkan ‘continue;’ akan melanjutkan perulangan tetapi melangkahi perintah yang ada dibawahnya
## Bilangan Prima hingga 201

```dart
  for (int i = 2; i <= 201; i++) {
    bool cek = true;
    for (int j = 2; j < i ; j++) {
      if (i % j == 0) {
        cek = false;
        break;
      }
    }

    if (cek) {
      print(i);
    }
  }
```

- Loop pertama Dimulai dari i = 2 hingga i = 201. Setiap nilai i mewakili angka yang akan dicek apakah itu bilangan prima atau bukan.
- Sebuah variabel cek diinisialisasi dengan nilai true. Asumsinya, setiap angka dianggap prima pada awalnya.
- Loop kedua Pengecekan dimulai dari j = 2 hingga j < i. Artinya, setiap angka j adalah kandidat pembagi dari i.
- if (i % j == 0): Jika i habis dibagi oleh j (tidak ada sisa), berarti i bukan bilangan prima karena memiliki pembagi selain 1 dan i sendiri.
- cek = false;: Jika kondisi ini benar, maka variabel cek diubah menjadi false karena i tidak lagi dianggap bilangan prima.
- break;: Setelah ditemukan satu pembagi, proses pengecekan dihentikan karena kita tahu i bukan bilangan prima.
- Setelah loop kedua selesai, jika cek tetap true (artinya i tidak memiliki pembagi selain 1 dan i), maka angka tersebut adalah bilangan prima, dan dicetak menggunakan print(i).
