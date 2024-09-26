# Pengantar Bahasa Pemrograman Dart - Bagian 3

```
Nama     : Farid Fitriansah Alfarizi
NIM      : 2241720055
Kelas    : TI-3A
```

# Tugas Praktikum 1
Silakan selesaikan Praktikum 1 sampai 5, lalu dokumentasikan berupa screenshot hasil pekerjaan Anda beserta penjelasannya!

## Praktikum 1: Eksperimen Tipe Data List

### Langkah 1:
Ketik atau salin kode program berikut ke dalam void main().

```Dart
var list = [1, 2, 3];
assert(list.length == 3);
assert(list[1] == 2);
print(list.length);
print(list[1]);
  
list[1] = 1;
assert(list[1] == 1);
print(list[1]);
```

### Langkah 2:
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan!

Output:
```Console
3
2
1
```

Penjelasan Kode:
1. Deklarasi variabel list: \
Variabel list diinisialisasi dengan nilai [1, 2, 3], yaitu sebuah list berisi tiga elemen: 1, 2, dan 3.
2. Pernyataan assert(list.length == 3);: \
Pernyataan ini memeriksa apakah panjang list (list.length) sama dengan 3. Jika kondisinya benar (dan dalam kasus ini benar), program melanjutkan eksekusi. Jika salah, program akan mengeluarkan error.
3. Pernyataan assert(list[1] == 2);: \
Pernyataan ini memeriksa apakah elemen pada indeks ke-1 (list[1]) adalah 2. Ini benar karena list pada awalnya berisi [1, 2, 3].
4. print(list.length);: \
Mencetak panjang list, yaitu 3.
5. print(list[1]);: \
Mencetak elemen pada indeks ke-1, yaitu 2.
6. Modifikasi list list[1] = 1;: \
Elemen pada indeks ke-1 dari list diubah dari 2 menjadi 1.
7. Pernyataan assert(list[1] == 1);: \
Memeriksa apakah elemen pada indeks ke-1 sudah berubah menjadi 1. Ini benar, sehingga program melanjutkan eksekusi.
8. print(list[1]);: \
Mencetak elemen pada indeks ke-1 yang telah diubah, yaitu 1.

### Langkah 3:
Ubah kode pada langkah 1 menjadi variabel final yang mempunyai index = 5 dengan default value = null. Isilah nama dan NIM Anda pada elemen index ke-1 dan ke-2. Lalu print dan capture hasilnya.

Apa yang terjadi ? Jika terjadi error, silakan perbaiki.

Kode:
```Dart
void main() {
  final List<String?> list = List.filled(5, null);

  list[1] = "Farid Fitriansah Alfarizi";
  list[2] = "2241720055";

  print(list);
}
```

Output:
```Console
[null, Farid Fitriansah Alfarizi, 2241720055, null, null]
```

Penjelasan Kode:
1. final List<String?> list = List.filled(5, null);:
+ Membuat sebuah list berukuran 5 elemen menggunakan List.filled(5, null), di mana setiap elemen awalnya diisi dengan null.
+ Tipe data List<String?> menunjukkan bahwa setiap elemen list bisa bertipe String atau null. Tanda ? di sini menunjukkan bahwa elemen-elemen list bisa berisi null.
+ Karena menggunakan final, list itu sendiri tidak bisa diubah (tidak bisa diinisialisasi ulang), tetapi elemen-elemennya tetap bisa diubah.
2. list[1] = "Farid Fitriansah Alfarizi";: \
Mengisi elemen pada indeks ke-1 (indeks dimulai dari 0) dengan nilai "Farid Fitriansah Alfarizi", yaitu nama lengkap kita.
3. list[2] = "2241720055";: \
Mengisi elemen pada indeks ke-2 dengan nilai "2241720055", yang merupakan NIM kita.
4. print(list);:
+ Mencetak seluruh isi dari list. Setelah kedua elemen tersebut diisi, list akan berisi:

  ```Console
  [null, Farid Fitriansah Alfarizi, 2241720055, null, null]
  ```

+ Elemen selain indeks ke-1 dan ke-2 tetap memiliki nilai null.

## Praktikum 2: Eksperimen Tipe Data Set

### Langkah 1:
Ketik atau salin kode program berikut ke dalam fungsi main().

```Dart
var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
print(halogens);
```

### Langkah 2:
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

Kode:
```Dart
void main() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);
}
```

Output:
```Console
{fluorine, chlorine, bromine, iodine, astatine}
```

Penjelasan Kode:
1. Deklarasi var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};:
+ Kode ini mendeklarasikan sebuah variabel halogens dengan tipe Set. Tipe data Set di Dart adalah kumpulan elemen unik, di mana urutan elemen tidak penting, dan setiap elemen hanya muncul sekali.
+ Di sini, halogens berisi nama-nama unsur halogen: "fluorine", "chlorine", "bromine", "iodine", dan "astatine".
2. print(halogens);: \
Mencetak isi dari Set halogens. Hasilnya akan berupa daftar elemen dari set tersebut, tetapi urutan elemen mungkin tidak sama seperti yang didefinisikan, karena set tidak menjamin urutan yang tetap.

### Langkah 3:
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

```Dart
var names1 = <String>{};
Set<String> names2 = {}; // This works, too.
var names3 = {}; // Creates a map, not a set.

print(names1);
print(names2);
print(names3);
```

Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan ketiga variabel tersebut. Tambahkan elemen nama dan NIM Anda pada kedua variabel Set tersebut dengan dua fungsi berbeda yaitu .add() dan .addAll(). Untuk variabel Map dihapus, nanti kita coba di praktikum selanjutnya.

Kode:
```Dart
void main() {
  var names1 = <String>{};
  Set<String> names2 = {};

  names1.add("Farid Fitriansah Alfarizi");
  names1.add("2241720055");

  names2.addAll({"Farid Fitriansah Alfarizi", "2241720055"});
  
  print(names1);
  print(names2);
}
```

Output:
```Console
{Farid Fitriansah Alfarizi, 2241720055}
{Farid Fitriansah Alfarizi, 2241720055}
```

Penjelasan Kode:
1. names1.add(...): \
Digunakan untuk menambahkan satu elemen ke Set names1. Dalam kasus ini, kita menambahkan nama dan NIM satu per satu.
2. names2.addAll({...}): \
Digunakan untuk menambahkan beberapa elemen sekaligus ke Set names2. Di sini, kita menggunakan addAll() untuk menambahkan nama dan NIM dalam satu langkah.

## Praktikum 3: Eksperimen Tipe Data Maps

### Langkah 1:
Ketik atau salin kode program berikut ke dalam fungsi main().

```Dart
var gifts = {
  // Key:    Value
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 1
  };
  
var nobleGases = {
  2: 'helium',
  10: 'neon',
  18: 2,
  };
  
print(gifts);
print(nobleGases);
```

### Langkah 2:
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

Kode:
```Dart
void main() {
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
  };
  
  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };
  
  print(gifts);
  print(nobleGases);
}
```

Output:
```Console
{first: partridge, second: turtledoves, fifth: 1}
{2: helium, 10: neon, 18: 2}
```

Penjelasan Kode:
1. gifts:
+ Variabel gifts adalah sebuah Map di Dart yang berisi pasangan key-value.
+ Keys-nya berupa string ('first', 'second', 'fifth'), sementara values-nya adalah string ('partridge', 'turtledoves') atau angka (1).
2. nobleGases: \
Variabel nobleGases juga merupakan Map, tetapi keys-nya adalah angka (2, 10, 18), dan values-nya adalah string ('helium', 'neon') atau angka (2).
3. print(gifts) dan print(nobleGases): \
Mencetak isi dari kedua map.

### Langkah 3:
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

```Dart
var mhs1 = Map<String, String>();
gifts['first'] = 'partridge';
gifts['second'] = 'turtledoves';
gifts['fifth'] = 'golden rings';
  
var mhs2 = Map<int, String>();
nobleGases[2] = 'helium';
nobleGases[10] = 'neon';
nobleGases[18] = 'argon';
```

Apa yang terjadi ? Jika terjadi error, silakan perbaiki.

Tambahkan elemen nama dan NIM Anda pada tiap variabel di atas (gifts, nobleGases, mhs1, dan mhs2).

Kode:
```Dart
void main() {
  var gifts = {
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': '1'
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 'argon'
  };

  var mhs1 = Map<String, String>();
  var mhs2 = Map<int, String>();

  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  gifts['name'] = 'Farid Fitriansah Alfarizi';
  gifts['NIM'] = '2241720055';

  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';
  
  nobleGases[20] = 'Farid Fitriansah Alfarizi';
  nobleGases[30] = '2241720055';

  mhs1['name'] = 'Farid Fitriansah Alfarizi';
  mhs1['NIM'] = '2241720055';

  mhs2[1] = 'Farid Fitriansah Alfarizi';
  mhs2[2] = '2241720055';

  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);
}
```

Output:
```Console
{first: partridge, second: turtledoves, fifth: golden rings, name: Farid Fitriansah Alfarizi, NIM: 2241720055}
{2: helium, 10: neon, 18: argon, 20: Farid Fitriansah Alfarizi, 30: 2241720055}
{name: Farid Fitriansah Alfarizi, NIM: 2241720055}
{1: Farid Fitriansah Alfarizi, 2: 2241720055}
```

Penjelasan Kode:
1. Deklarasi map gifts dan nobleGases:
+ gifts adalah Map dengan String sebagai key dan values berisi kombinasi string dan angka yang telah diubah agar semuanya menjadi String.
+ nobleGases adalah Map dengan int sebagai key dan String sebagai value.
2. Deklarasi map mhs1 dan mhs2:
+ mhs1 adalah Map dengan String sebagai key dan value. Map ini akan menyimpan nama dan NIM kita.
+ mhs2 adalah Map dengan int sebagai key dan String sebagai value. Ini juga akan menyimpan nama dan NIM kita.
3. Penambahan elemen: \
Elemen-elemen baru ditambahkan ke masing-masing map, termasuk penambahan nama dan NIM kita pada variabel gifts, nobleGases, mhs1, dan mhs2.
4. Pencetakan isi map: \
print() digunakan untuk mencetak isi dari setiap map (gifts, nobleGases, mhs1, dan mhs2).

## Praktikum 4: Eksperimen Tipe Data List: Spread dan Control-flow Operators

### Langkah 1:
Ketik atau salin kode program berikut ke dalam fungsi main().

```Dart
var list = [1, 2, 3];
var list2 = [0, ...list];
print(list1);
print(list2);
print(list2.length);
```

### Langkah 2:
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

Perbaikan Kode:
```Dart
void main() {
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  print(list);
  print(list2);
  print(list2.length);
}
```

Output:
```Console
[1, 2, 3]
[0, 1, 2, 3]
4
```

Penjelasan Kode:
1. var list = [1, 2, 3];: \
Membuat sebuah list (list) yang berisi angka [1, 2, 3].
2. var list2 = [0, ...list];: \
Ini adalah cara untuk menggabungkan list dengan elemen lain di Dart. Tanda ... disebut spread operator, yang memungkinkan kita untuk menyisipkan semua elemen dari list ke dalam list lain. Jadi, list2 akan berisi [0, 1, 2, 3].
3. print(list);: \
Mencetak [1, 2, 3], yaitu isi dari list.
4. print(list2);: \
Ini akan mencetak isi dari list2, yang merupakan [0, 1, 2, 3].
5. print(list2.length);: \
Ini mencetak panjang (length) dari list2, yang adalah 4 karena list2 berisi empat elemen [0, 1, 2, 3].

### Langkah 3:
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

```Dart
list1 = [1, 2, null];
print(list1);
var list3 = [0, ...?list1];
print(list3.length);
```

Apa yang terjadi ? Jika terjadi error, silakan perbaiki.

Tambahkan variabel list berisi NIM Anda menggunakan Spread Operators.

Perbaikan Kode:
```Dart
void main() {
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  print(list);
  print(list2);
  print(list2.length);

  var list1 = [1, 2, null];
  print(list1);
  var list3 = [0, ...?list1];
  print(list3);
  print(list3.length);
  
  var nim = ['2241720055'];
  var listWithNim = [0, ...nim];
  print(listWithNim);
}
```

Output:
```Console
[1, 2, 3]
[0, 1, 2, 3]
4
[1, 2, null]
[0, 1, 2, null]
4
[0, 2241720055]
```

Penjelasan Kode:
1. var list1 = [1, 2, null];: \
Mendeklarasikan list1 menggunakan var untuk memperbaiki error yang terjadi karena tidak adanya deklarasi.
2. var list3 = [0, ...?list1];: \
Menggunakan null-aware spread operator (...?) untuk menangani situasi di mana list1 berisi nilai null. Ini mencegah error ketika mencoba menyebarkan elemen null.
3. Penambahan variabel nim: \
Menambahkan variabel nim yang berisi NIM Anda dan menggunakan spread operator untuk menambahkannya ke listWithNim.

### Langkah 4:
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

```Dart
var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
print(nav);
```

Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Tunjukkan hasilnya jika variabel promoActive ketika true dan false.

Perbaikan Kode (promoActive = true):
```Dart
void main() {
  bool promoActive = true;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);
}
```

Output:
```Console
[Home, Furniture, Plants, Outlet]
```

Perbaikan Kode (promoActive = false):
```Dart
void main() {
  bool promoActive = false;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);
}
```

Output:
```Console
[Home, Furniture, Plants]
```

Penjelasan Kode:
1. Conditional Element in List: \
Dart memungkinkan kita menambahkan elemen ke dalam list secara kondisional dengan menggunakan sintaks if. Pada contoh ini, 'Outlet' hanya akan ditambahkan ke nav jika promoActive bernilai true.

### Langkah 5:
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

```Dart
var nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
print(nav2);
```

Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Tunjukkan hasilnya jika variabel login mempunyai kondisi lain.

Perbaikan Kode (login = 'Manager'):
```Dart
void main() {
  var login = 'Manager';

  var nav2 = ['Home', 'Furniture', 'Plants', if (login == 'Manager') 'Inventory'];
  print(nav2);
}
```

Output:
```Console
[Home, Furniture, Plants, Inventory]
```

Perbaikan Kode (login = 'User'):
```Dart
void main() {
  var login = 'User';

  var nav2 = ['Home', 'Furniture', 'Plants', if (login == 'Manager') 'Inventory'];
  print(nav2);
}
```

Output:
```Console
[Home, Furniture, Plants]
```

Penyebab Error:
1. Terdapat dua masalah utama:
+ login tidak dideklarasikan: Variabel login belum dideklarasikan, menyebabkan error.
+ Sintaks case tidak valid di Dart: Dart tidak menggunakan case seperti yang ditulis dalam kondisi. Dart mendukung perbandingan nilai menggunakan if, switch, atau operator logika lainnya.

### Langkah 6:
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

```Dart
var listOfInts = [1, 2, 3];
var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
assert(listOfStrings[1] == '#1');
print(listOfStrings);
```

Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Jelaskan manfaat Collection For dan dokumentasikan hasilnya.

Output:
```Console
['#0', '#1', '#2', '#3']
```

Manfaat Collection For:
1. Menyederhanakan Kode: \
Collection For memungkinkan Anda untuk membuat atau memodifikasi list secara dinamis berdasarkan elemen-elemen dari koleksi lain, seperti list, set, atau iterable lainnya. Ini menyederhanakan penulisan kode yang biasanya memerlukan loop terpisah.
2. Mudah Dipahami dan Dibaca: \
Dengan Collection For, kode menjadi lebih ringkas dan lebih mudah dipahami karena iterasi terjadi langsung di dalam definisi list, tanpa perlu menulis loop di luar.
3. Efisiensi Waktu dan Ruang: \
Dart mengoptimalkan list comprehension atau Collection For, yang membuat proses iterasi dan pembuatan list lebih efisien dalam hal waktu dan penggunaan memori dibandingkan dengan cara tradisional.

## Praktikum 5: Eksperimen Tipe Data Records

### Langkah 1:
Ketik atau salin kode program berikut ke dalam fungsi main().

```Dart
var record = ('first', a: 2, b: true, 'last');
print(record);
```

### Langkah 2:
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

Output:
```Console
('first', a: 2, b: true, 'last')
```

Penjelasan Kode:
1. Penggunaan Record di Dart: \
Records adalah fitur baru di Dart versi 3.0 yang memungkinkan Anda membuat koleksi data heterogen tanpa perlu mendefinisikan class. Dalam contoh ini, record berisi dua elemen posisi ('first' dan 'last'), serta dua elemen bernama (a: 2 dan b: true).

### Langkah 3:
Tambahkan kode program berikut di luar scope void main(), lalu coba eksekusi (Run) kode Anda.

```Dart
(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
```

Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Gunakan fungsi tukar() di dalam main() sehingga tampak jelas proses pertukaran value field di dalam Records.

Kode:
```Dart
(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}

void main() {
  var record = (5, 10);
  print('Sebelum tukar: $record');
  var result = tukar(record);
  print('Sesudah tukar: $result');
}
```

Output:
```Console
Sebelum tukar: (5, 10)
Sesudah tukar: (10, 5)
```

Penjelasan Kode:
1. Records dan Fungsi tukar:
+ Kode ini mendefinisikan fungsi bernama tukar yang menerima Record berisi dua elemen integer (int, int) dan mengembalikannya dalam urutan terbalik.
+ Di dalam fungsi, Dart menggunakan destructuring untuk memecah elemen-elemen record menjadi variabel a dan b, lalu mengembalikan Record dengan nilai terbalik (b, a).

### Langkah 4:
Tambahkan kode program berikut di dalam scope void main(), lalu coba eksekusi (Run) kode Anda.

```Dart
// Record type annotation in a variable declaration:
(String, int) mahasiswa;
print(mahasiswa);
```

Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Inisialisasi field nama dan NIM Anda pada variabel record mahasiswa di atas.

Kode:
```Dart
void main() {
  // Record type annotation in a variable declaration:
  (String, int) mahasiswa = ('Farid Fitriansah Alfarizi', 2241720055);
  print(mahasiswa);
}
```

Output:
```Console
(Farid Fitriansah Alfarizi, 2241720055)
```

Penjelasan Kode:
1. Record mahasiswa diinisialisasi dengan dua field: nama (String) dan NIM (int).
2. Setelah inisialisasi, mahasiswa dicetak sebagai record yang berisi nilai ('Farid Fitriansah Alfarizi', 2241720055).

### Langkah 5:
Tambahkan kode program berikut di dalam scope void main(), lalu coba eksekusi (Run) kode Anda.

```Dart
var mahasiswa2 = ('first', a: 2, b: true, 'last');

print(mahasiswa2.$1); // Prints 'first'
print(mahasiswa2.a); // Prints 2
print(mahasiswa2.b); // Prints true
print(mahasiswa2.$2); // Prints 'last'
```

Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Gantilah salah satu isi record dengan nama dan NIM Anda.

Kode:
```Dart
void main() {
  var mahasiswa2 = ('Farid Fitriansah Alfarizi', a: 2241720055, b: true, 'last');

  print(mahasiswa2.$1); // Prints 'Farid Fitriansah Alfarizi'
  print(mahasiswa2.a);  // Prints 2241720055
  print(mahasiswa2.b);  // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}
```

Output:
```Console
Farid Fitriansah Alfarizi
2241720055
true
last
```

Penjelasan Kode:
1. Records di Dart:
+ Dart mendukung Records yang memungkinkan penyimpanan data heterogen tanpa perlu membuat class. Dalam record, Anda dapat memiliki elemen posisional dan elemen bernama.
+ Pada kode ini:
  + Elemen mahasiswa2.$1 merujuk ke elemen posisional pertama, yaitu 'Farid Fitriansah Alfarizi'.
  + Elemen mahasiswa2.a merujuk ke elemen bernama a, yang bernilai 2241720055.
  + Elemen mahasiswa2.b merujuk ke elemen bernama b, yang bernilai true.
  + Elemen mahasiswa2.$2 merujuk ke elemen posisional kedua, yaitu 'last'.

# Tugas Praktikum 2
1. Jelaskan yang dimaksud Functions dalam bahasa Dart! \
Function di Dart adalah blok kode yang melakukan tugas tertentu dan dapat dipanggil berulang kali di berbagai tempat dalam program. Dart mendukung berbagai jenis fungsi termasuk fungsi yang mengembalikan nilai dan fungsi tanpa pengembalian nilai.

2. Jelaskan jenis-jenis parameter di Functions beserta contoh sintaksnya! \
Dart mendukung beberapa jenis parameter dalam function:
    1. Positional Parameters (Parameter Posisi):
        + Parameter yang diisi berdasarkan urutan posisi saat fungsi dipanggil.
        + Contoh:

          ```Dart
          void greet(String name, int age) {
            print('Hello $name, you are $age years old.');
          }
          ```

    2. Optional Positional Parameters (Parameter Posisi Opsional):
        + Ditandai dengan kurung siku []. Parameter ini opsional, dan jika tidak diberikan, nilainya null atau nilai default (jika diberikan).
        + Contoh:

          ```Dart
          void greet(String name, [int? age]) {
            print('Hello $name, age: $age');
          }
          ```

    3. Named Parameters (Parameter Bernama):
        + Parameter ini diberi nama saat fungsi dipanggil dan ditandai dengan {}.
        + Contoh:

          ```Dart
          void greet({required String name, int age = 18}) {
            print('Hello $name, you are $age years old.');
          }
          
          // Memanggil fungsi
          greet(name: 'Farid');
          ```

    4. Optional Named Parameters (Parameter Bernama Opsional):
        + Bisa ditentukan dengan nilai default atau dibiarkan kosong.
        + Contoh:

          ```Dart
          void greet({String name = 'Guest', int? age}) {
            print('Hello $name, you are $age years old.');
          }
          ```

3. Jelaskan maksud Functions sebagai first-class objects beserta contoh sintaknya! \
Di Dart, functions adalah first-class objects, yang berarti function bisa disimpan dalam variabel, dikirim sebagai parameter, atau dikembalikan dari fungsi lain.

    ```Dart
    // Function as first-class object
    void printMessage(String message) {
      print(message);
    }

    void main() {
      // Assign function to a variable
      var messagePrinter = printMessage;
      
      // Call the function through the variable
      messagePrinter('Hello, Dart!');
    }
    ```

4. Apa itu Anonymous Functions? Jelaskan dan berikan contohnya! \
Anonymous Functions adalah fungsi yang tidak diberi nama. Biasanya digunakan di tempat di mana fungsi didefinisikan secara langsung, seperti dalam pengulangan atau pemetaan.

    ```Dart
    void main() {
      // Anonymous function as a callback
      var list = ['apple', 'banana', 'cherry'];
      list.forEach((item) {
        print(item);
      });
    }
    ```

5. Jelaskan perbedaan Lexical scope dan Lexical closures! Berikan contohnya!
    1. Lexical Scope: Menunjukkan bahwa variabel hanya dapat diakses di dalam ruang lingkup (scope) di mana variabel tersebut didefinisikan.

        ```Dart
        void outerFunction() {
          int x = 10;
          
          void innerFunction() {
            print(x);  // Bisa mengakses x karena ada dalam lingkup
          }
          
          innerFunction();
        }
        ```
    
    2. Lexical Closure: Closure adalah fungsi yang "menutup" lingkup di mana ia didefinisikan. Dengan closure, fungsi internal dapat mengakses variabel di lingkup luarnya bahkan setelah lingkup luar tersebut dieksekusi.

        ```Dart
        Function makeMultiplier(num multiplier) {
          return (num i) => i * multiplier;  // Lexical Closure
        }

        void main() {
          var triple = makeMultiplier(3);
          print(triple(4));  // Output: 12
        }
        ```

6. Jelaskan dengan contoh cara membuat return multiple value di Functions!
    1. Contoh menggunakan Record:

        ```Dart
        // Menggunakan Record untuk mengembalikan banyak nilai
        (String, int) getMahasiswa() {
          return ('Farid', 2241720055);
        }

        void main() {
          var (nama, nim) = getMahasiswa();
          print('Nama: $nama, NIM: $nim');
        }
        ```
    
    2. Contoh menggunakan List:
    
        ```Dart
        List<dynamic> getMahasiswa() {
          return ['Farid', 2241720055];
        }

        void main() {
          var result = getMahasiswa();
          print('Nama: ${result[0]}, NIM: ${result[1]}');
        }
        ```