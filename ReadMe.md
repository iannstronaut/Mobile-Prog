# Pengantar Bahasa Pemrograman Dart - Bagian 3

## Eksperimen Tipe Data List

**Langkah 1**

```dart
    var list = [1, 2, 3];
    assert(list.length == 3);
    assert(list[1] == 2);
    print(list.length);
    print(list[1]);

    list[1] = 1;
    assert(list[1] == 1);
    print(list[1]);
```

**Langkah 2**

```batch
3
2
1
```

Kode ini mengecek panjang list, memastikan bahwa jumlah elemennya adalah 3, dan akan menghentikan program jika tidak sesuai. Setelah itu, kode memverifikasi bahwa elemen kedua adalah 2, dan jika tidak, program akan berhenti. Kemudian, panjang list (3) dan elemen kedua (2) dicetak. Selanjutnya, elemen kedua diubah menjadi 1 dan dicek kembali, jika nilainya bukan 1, program akan berhenti. Terakhir, elemen kedua yang telah diubah (1) dicetak.

**Langkah 3**

```dart
    final List<dynamic> list = List.filled(5, null);
    list[1] = "Al Byan Agung";
    list[2] = 2241729999;
    assert(list.length == 5);
    assert(list[1] == 2);
```

```error
Unhandled exception:
Failed assertion: line 7 pos 10: 'list[1] == 2': is not true.
#0      _AssertionError._doThrowNew (dart:core-patch/errors_patch.dart:50:61)
#1      _AssertionError._throwNew (dart:core-patch/errors_patch.dart:40:5)
#2      main (file://pertemuan_4.dart:7:10) pertemuan_4.dart:7
#3      _delayEntrypointInvocation.<anonymous closure> (dart:isolate-patch/isolate_patch.dart:295:33)
#4      _RawReceivePort._handleMessage (dart:isolate-patch/isolate_patch.dart:184:12)
```

Error tersebut muncul karena pernyataan assert(list[1] == 2), padahal elemen ke-1 di list sudah Anda isi dengan nama "Al Byan Agung". Oleh karena itu, pernyataan tersebut tidak benar dan menyebabkan error exception.

**_Perbaikan_**

```dart
    final List<dynamic> list = List.filled(5, null);
    list[1] = "Al Byan Agung";
    list[2] = 2241729999;
    assert(list.length == 5);
    assert(list[1] == "Al Byan Agung");
    print(list.length);
    print(list[1]);
```

```batch
5
Al Byan Agung
```

## Eksperimen Tipe Data Set

**Langkah 1**

```dart
    var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
    print(halogens);
```

**Langkah 2**

```batch
{fluorine, chlorine, bromine, iodine, astatine}
```

Set adalah struktur data dalam Dart yang menyimpan elemen-elemen unik (tidak ada duplikat) dan tidak memiliki urutan (unordered collection). Tidak seperti list, elemen di dalam set tidak diakses menggunakan indeks, melainkan sebagai kumpulan yang tidak berurutan.

**Langkah 3**

```dart
    var names1 = <String>{};
    Set<String> names2 = {};
    var names3 = {};

    print(names1);
    print(names2);
    print(names3);
```

```batch
{}
{}
{}
```

"var names1 = <String>{};" adalah cara untuk mendeklarasikan sebuah set kosong di Dart dengan tipe yang spesifik (dalam hal ini String). names2 adalah cara lain untuk mendeklarasikan sebuah set kosong yang hanya dapat menyimpan elemen bertipe String. Namun, names3 secara default, jika Dart melihat {} tanpa tipe yang jelas, names3 dianggap sebagai Map kosong.

```dart
    names1.add("Al Byan Agung");
    names1.add("224172XXXX");

    names2.addAll(names1);
```

```batch
    {Al Byan Agung, 224172XXXX}
    {Al Byan Agung, 224172XXXX}
```

Metode .add() akan menambahkan string "Al Byan Agung" dan "224172XXXX" ke dalam set names1 dan Metode .addAll() akan menambahkan semua elemen dari set yang diberikan ke dalam set yang memanggil metode tersebut.

## Eksperimen Tipe Data Maps

**Langkah 1**

```dart
var gifts = {'first': 'partridge', 'second': 'turtledoves', 'fifth': 1};

var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
};

print(gifts);
print(nobleGases);
```

**Langkah 2**

```batch
{first: partridge, second: turtledoves, fifth: 1}
{2: helium, 10: neon, 18: 2}
```

Kode tersebut mendefinisikan dua map di Dart, yaitu _gifts_ dan _nobleGases_, yang masing-masing menyimpan pasangan key-value. Map adalah struktur data dalam pemrograman yang menyimpan pasangan key-value. Setiap elemen dalam map terdiri dari dua bagian: kunci (key) dan nilai (value).

**Langkah 3**

```dart
  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  print(gifts);
  print(nobleGases);
```

```batch
{first: partridge, second: turtledoves, fifth: golden rings}
{2: helium, 10: neon, 18: argon}
```

_"var mhs1 = Map<String, String>();"_ Mendeklarasikan sebuah map bernama mhs1 yang hanya dapat menyimpan pasangan key-value, di mana key dan value keduanya bertipe String.
_"gifts['first'] = 'partridge';"_ adalah cara menambahkan/mengubah pasangan key-value dengan key 'first' dan value 'partridge'.

```dart
    gifts['third'] = "Al Byan Agung";
    gifts['forth'] = "224172XXXX";

    nobleGases[3] = "Al Byan Agung";
    nobleGases[4] = "224172XXXX";

    mhs1['nama'] = "Al Byan Agung";
    mhs1['nim'] = "224172XXXX";

    mhs2[1] = "Al Byan Agung";
    mhs2[2] = "224172XXXX";
```

```batch
{first: partridge, second: turtledoves, fifth: golden rings, third: Al Byan Agung, forth: 224172XXXX}
{2: helium, 10: neon, 18: argon, 3: Al Byan Agung, 4: 224172XXXX}
{nama: Al Byan Agung, nim: 224172XXXX}
{1: Al Byan Agung, 2: 224172XXXX}
```

## Eksperimen Tipe Data List: Spread dan Control-flow Operators

**Langkah 1**

```dart
    var list1 = [1, 2, 3];
    var list2 = [0, ...list1];
    print(list1);
    print(list2);
    print(list2.length);
```

**Langkah 2**

```batch
[1, 2, 3]
[0, 1, 2, 3]
4
```

Spread operator ... digunakan untuk menyisipkan semua elemen dari list1 ke dalam list2, Hasilnya, list2 akan berisi: 0, 1, 2, 3.

**Langkah 3**

```dart
    list1 = [1, 2, null];
    print(list1);
    var list3 = [0, ...?list1];
    print(list3.length);
```

```error
bin/pertemuan_4.dart:78:18: Error: The value 'null' can't be assigned to a variable of type 'int' because 'int' is not nullable.
  list1 = [1, 2, null];
```

Kesalahan dalam kode ini berkaitan dengan penanganan nilai null dalam list dan tipe data yang digunakan. spread operator ...? untuk menambahkan elemen dari list1 ke dalam list3. Operator ini mengizinkan penggunaan list yang mungkin null, namun hal ini tidak akan mempengaruhi kesalahan sebelumnya.

```dart
    var list4 = ["Al Byan Agung", "224172XXXX"];
    print(list1);
    var list3 = [0, ...?list4];
    print(list3);
    print(list3.length);
```

```batch
    [Al Byan Agung, 224172XXXX]
    [0, Al Byan Agung, 224172XXXX]
    3
```

**Langkah 4**

```dart
    var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
    print(nav);
```

```error
bin/pertemuan_4.dart:84:49: Error: Undefined name 'promoActive'.
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
```

Error terjadi dikarnakan variabel promoActive belum di inisialisasi dan tidak memiliki value.

**_true_**

```dart
    bool promoActive = true;
    var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
    print(nav);
```

```batch
[Home, Furniture, Plants, Outlet]
```

**_false_**

```dart
    bool promoActive = false;
    var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
    print(nav);
```

```batch
[Home, Furniture, Plants]
```

**Langkah 5**

```dart
    var login = "Manager";
    var nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager')'Inventory'];
    print(nav2);
```

```batch
[Home, Furniture, Plants, Inventory]
```

Kode ini menggunakan fitur collection if di Dart untuk menambahkan elemen ke dalam list berdasarkan kondisi tertentu. Jika kondisinya benar, maka elemen 'Inventory' akan ditambahkan ke dalam list nav2.

**_Alternatif_**

```dart
    var login = "Staff";
    var nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager')'Inventory'];
    print(nav2);
```

```batch
[Home, Furniture, Plants]
```

**Langkah 6**

```dart
    var listOfInts = [1, 2, 3];
    var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
    assert(listOfStrings[1] == '#1');
    print(listOfStrings);
```

```batch
[#0, #1, #2, #3]
```

Kode ini menunjukkan cara menggunakan collection for di Dart untuk membuat list baru berdasarkan elemen dari list lain. collection for digunakan untuk iterasi melalui setiap elemen dalam listOfInts. Untuk setiap elemen i, string baru dibentuk dengan format '#\$i', yang berarti nilai dari i akan dimasukkan ke dalam string.

## Eksperimen Tipe Data Records

**Langkah 1**

```dart
    var record = ('first', a: 2, b: true, 'last');
    print(record);
```

**Langkah 2**

```batch
(first, last, a: 2, b: true)
```

Tipe data records adalah struktur data yang memungkinkan pengelompokan beberapa nilai dengan berbagai tipe data di bawah satu entitas. Records sering digunakan untuk menyimpan informasi yang berbeda namun terkait dalam satu kesatuan.

**Langkah 3**

```dart
    (int, int) tukar((int, int) record) {
    var (a, b) = record;
    return (b, a);
    }
```

Fungsi yang Anda berikan merupakan contoh fungsi untuk menukar dua nilai dalam sebuah tuple (record) di Dart.

```dart
    var og = (1, 2);
    print(tukar(og));
```

```batch
    (2, 1)
```

**Langkah 4**

```dart
    (String, int) mahasiswa = ("Al Byan Agung", 2241729999);
    print(mahasiswa);
```

```batch
    (Al Byan Agung, 2241729999)
```

Kode ini mendeklarasikan sebuah Record di Dart yang berisi dua nilai: sebuah string dan sebuah integer.

**Langkah 5**

```dart
    var mahasiswa2 = ('first', a: 2, b: true, 'last');

    print(mahasiswa2.$1);
    print(mahasiswa2.a);
    print(mahasiswa2.b);
    print(mahasiswa2.$2);
```

```batch
first
2
true
last
```

Kode ini mencoba menunjukan cara menggunakan records untuk menyimpan beberapa nilai dengan tipe yang berbeda dan mengaksesnya dengan cara tertentu.

```dart
    var mahasiswa2 = ('Al Byan Agung', a: 2241729999, b: true, 'last');

    print(mahasiswa2.$1);
    print(mahasiswa2.a);
    print(mahasiswa2.b);
    print(mahasiswa2.$2);
```

```batch
Al Byan Agung
2241729999
true
last
```

## Tugas

1. **Jelaskan yang dimaksud Functions dalam bahasa Dart!**

   Fungsi di Dart adalah blok kode yang dapat dipanggil untuk melakukan tugas tertentu. Fungsi membantu dalam pengorganisasian kode dan memudahkan pemeliharaan. Fungsi dapat memiliki parameter dan mengembalikan nilai.

   **_Contoh FUngsi_**

   ```dart
       int tambah(int a, int b) {
           return a + b;
       }

       void main() {
           var hasil = tambah(2, 3);
           print(hasil);
       }

   ```

2. **Jelaskan jenis-jenis parameter di Functions beserta contoh sintaksnya!**

   Dart memiliki beberapa jenis parameter:

   - Positional Parameters: Parameter yang didefinisikan dalam urutan tertentu.
   - Named Parameters: Parameter yang didefinisikan dengan nama, sehingga urutannya tidak penting. Dapat bersifat wajib atau opsional.
   - Optional Parameters: Parameter yang tidak perlu diisi ketika memanggil fungsi.

   **_Contoh Sintaks_**

   _Positional Parameters_

   ```dart
       void greet(String name, String greeting) {
           print('$greeting, $name!');
       }
   ```

   _Named Parameters_

   ```dart
       void greetNamed({required String name, String greeting = 'Hello'}) {
           print('$greeting, $name!');
       }
   ```

   _Optional Parameters_

   ```dart
       void greetOptional(String name, [String greeting = 'Hello']) {
           print('$greeting, $name!');
       }
   ```

   **Cara Penggunaan**

   ```dart
       void main() {
           greet('Alice', 'Hi');
           greetNamed(name: 'Bob', greeting: 'Welcome');
           greetOptional('Charlie');
       }
   ```

3. **Jelaskan maksud Functions sebagai first-class objects beserta contoh sintaknya!**

   Di Dart, fungsi dianggap sebagai first-class objects, yang berarti fungsi dapat:

   - Didefinisikan sebagai variabel.
   - Dikirim sebagai argumen ke fungsi lain.
   - Dikembalikan dari fungsi lain.

   **_Contoh Sintaks_**

   ```dart
       void main() {
           // Menyimpan fungsi dalam variabel
           var fungsi = () => print('Hello, Dart!');

           // Memanggil fungsi
           fungsi();

           // Mengirim fungsi sebagai argumen
           void panggilFungsi(Function f) {
               f();
           }

           panggilFungsi(fungsi);
       }
   ```

4. **Apa itu Anonymous Functions? Jelaskan dan berikan contohnya!**

   Anonymous functions (atau lambda) adalah fungsi tanpa nama yang biasanya digunakan sebagai parameter fungsi lain.

   **_Contoh Sintaks_**

   ````dart
        void main() {
            var list = [1, 2, 3];
            var doubleList = list.map((item) => item * 2); // Anonymous function
            ```

            print(doubleList.toList()); // Output: [2, 4, 6]
        }
   ````

5. **Jelaskan perbedaan Lexical scope dan Lexical closures! Berikan contohnya!**

   - Lexical Scope: Merujuk pada cara variabel dapat diakses berdasarkan lokasi di mana fungsi didefinisikan. Variabel yang didefinisikan di dalam fungsi hanya dapat diakses di dalam fungsi tersebut.
   - Lexical Closures: Adalah fungsi yang "menyimpan" lingkungan di mana ia didefinisikan, termasuk variabel lokal yang dapat diakses meskipun fungsi tersebut dipanggil di luar lingkungannya.

   **_Contoh Sintaks_**

   _Lexical Scope_

   ```dart
       void main() {
           var x = 10; // Variabel global
           void fungsi() {
               var y = 5; // Variabel lokal
               print(x + y); // x diakses dari luar
           }
           fungsi(); // Output: 15
       }
   ```

   _Lexical Closures_

   ```dart
       void main() {
           Function createCounter() {
               var count = 0;
               return () => count++;
           }

           var counter = createCounter();
           print(counter());
           print(counter());
       }
   ```

6. **Jelaskan dengan contoh cara membuat return multiple value di Functions!**

   Cara membuat return multiple value di dart bisa dengan menggunakan List atau Map.

   **_Contoh Sintaks_**

   _List_

   ```dart
   List<int> hitung(int a, int b) {
       return [a + b, a - b];
   }
   ```

   _Map_

   ```dart
   Map<String, int> hitung(int a, int b) {
       return {
           'jumlah': a + b,
           'selisih': a - b,
       };
   }
   ```

   **Cara Penggunaan**

   ```dart
   void main() {
        //List
        var hasil = hitung(5, 3);
        print('Jumlah: ${hasil[0]}, Selisih: ${hasil[1]}');
        //Map
        var hasil = hitung(5, 3);
        print('Jumlah: ${hasil['jumlah']}, Selisih: ${hasil['selisih']}');
    }
   ```
