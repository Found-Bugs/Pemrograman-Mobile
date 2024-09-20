# Pengantar Bahasa Pemrograman Dart - Bagian 2

```
Nama     : Farid Fitriansah Alfarizi
NIM      : 2241720055
Kelas    : TI-3A
```

# Tugas Praktikum 1
Silakan selesaikan Praktikum 1 sampai 3, lalu dokumentasikan berupa screenshot hasil pekerjaan beserta penjelasannya!

## Praktikum 1: Menerapkan Control Flows ("if/else")

### Langkah 1:
Ketik atau salin kode program berikut ke dalam fungsi main().

```Dart
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

### Langkah 2:
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan!

Output:
```Console
Test2
Test2 again
```

Penjelasan Kode:
1. if (test == "test1"): Program memeriksa apakah nilai variabel test adalah "test1". Karena nilai test adalah "test2", bagian ini tidak dijalankan.
2. else if (test == "test2"): Program kemudian memeriksa apakah nilai test adalah "test2". Karena benar, program mencetak "Test2".
3. else: Bagian ini akan dijalankan jika kondisi di atas salah, tapi karena kondisi "test2" sudah benar, bagian ini dilewati.
4. if (test == "test2") print("Test2 again");: Program kembali memeriksa apakah nilai test adalah "test2". Karena benar, program mencetak "Test2 again".

### Langkah 3:
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

```Dart
String test = "true";
if (test) {
 print("Kebenaran");
}
```

Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan if/else.

Penyebab Error:
1. Duplikasi deklarasi variabel test: \
Pada bagian awal, variabel test sudah dideklarasikan sebagai String test = "test2";. Kemudian, pada bagian bawah kode, kita mencoba mendeklarasikan ulang variabel test dengan nilai "true". Dalam satu blok kode, kita tidak dapat mendeklarasikan ulang variabel dengan nama yang sama.
2. Penggunaan tipe data yang salah pada if (test): \
Dalam bahasa pemrograman seperti Dart, kondisi di dalam pernyataan if harus berupa tipe data boolean (true atau false). Namun, kita mencoba menggunakan tipe data String dalam kondisi if. String tidak bisa langsung digunakan sebagai kondisi dalam if.

Perbaikan Kode:
```Dart
void main() {
  String test = "test2";
  if (test == "test1") {
    print("Test1");
  } else if (test == "test2") {
    print("Test2");
  } else {
    print("Something else");
  }

  if (test == "test2") print("Test2 again");

  bool isTrue = true;
  if (isTrue) {
    print("Kebenaran");
  }
}
```

Output:
```Console
Test2
Test2 again
Kebenaran
```

## Praktikum 2: Menerapkan Perulangan "while" dan "do-while"

### Langkah 1:
Ketik atau salin kode program berikut ke dalam fungsi main().

```Dart
while (counter < 33) {
 print(counter);
 counter++;
}
```

### Langkah 2:
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

Penyebab Error:
1. Variabel counter belum dideklarasikan: \
Anda mencoba menggunakan variabel counter tanpa mendefinisikannya terlebih dahulu.

Perbaikan Kode:
```Dart
void main() {
  int counter = 0;
  while (counter < 33) {
    print(counter);
    counter++;
  }
}
```

Output:
```Console
0
1
2
3
...
32
```

### Langkah 3:
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

```Dart
do {
 print(counter);
 counter++;
} while (counter < 77);
```

Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan do-while.

Penjelasan Kode:
1. Pada awal loop do-while, nilai counter adalah 33.
2. Karena do-while selalu menjalankan setidaknya satu kali sebelum memeriksa kondisi, program akan mencetak nilai counter dari 33 hingga 76.
3. Loop akan terus berjalan hingga counter mencapai 77, setelah itu loop berhenti karena kondisi while (counter < 77) menjadi salah.

Output:
```Console
0
1
2
3
...
32
33
34
35
...
76
```

## Praktikum 3: Menerapkan Perulangan "for" dan "break-continue"

### Langkah 1:
Ketik atau salin kode program berikut ke dalam fungsi main().

```Dart
for (Index = 10; index < 27; index) {
 print(Index);
}
```

### Langkah 2:
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

Penyebab Error:
1. Penulisan variabel yang tidak konsisten (Index vs index): \
Dalam loop for, variabel Index digunakan untuk deklarasi dan pencetakan, tetapi pada kondisi index < 27 dan increment, variabel ditulis dengan huruf kecil (index). Dart bersifat case-sensitive, sehingga variabel Index dan index dianggap berbeda.
2. Tidak ada increment (index++) dalam loop for: \
Dalam loop for, setelah kondisi diperiksa, seharusnya ada bagian untuk menaikkan nilai variabel (index++). Tanpa increment, loop akan berjalan tanpa batas (infinite loop) karena nilai variabel tidak berubah.
3. Deklarasi variabel yang tidak jelas: \
Variabel Index tidak dideklarasikan dengan tipe data yang jelas (misalnya, int). Dalam Dart, variabel harus dideklarasikan terlebih dahulu sebelum digunakan.

Perbaikan Kode:
```Dart
void main() {
  for (int index = 10; index < 27; index++) {
    print(index);
  }
}
```

Output:
```Console
10
11
12
...
26
```

### Langkah 3:
Tambahkan kode program berikut di dalam for-loop, lalu coba eksekusi (Run) kode Anda.

```Dart
If (Index == 21) break;
Else If (index > 1 || index < 7) continue;
print(index);
```

Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan for dan break-continue.

Penyebab Error:
1. Penulisan huruf besar/kecil tidak konsisten: \
Kata kunci If dan Else If ditulis dengan huruf besar. Dalam Dart, harus ditulis dengan huruf kecil sebagai if dan else if.
2. Variabel Index tidak dideklarasikan: \
Anda menggunakan variabel Index (dengan huruf besar) di dalam kondisi If (Index == 21), tetapi variabel yang digunakan dalam loop adalah index (huruf kecil). Dart bersifat case-sensitive, jadi Index dan index dianggap sebagai dua variabel yang berbeda.

Perbaikan Kode:
```Dart
void main() {
  for (int index = 10; index < 27; index++) {
    if (index == 21) {
      break;
    } else if (index > 1 && index < 7) {
      continue;
    }
    print(index);
  }
}
```

Output:
```Console
10
11
12
13
14
15
16
17
18
19
20
```

# Tugas Praktikum 2
Buatlah sebuah program yang dapat menampilkan bilangan prima dari angka 0 sampai 201 menggunakan Dart. Ketika bilangan prima ditemukan, maka tampilkan nama lengkap dan NIM Anda.

Kode:
```Dart
void main() {
  String namaLengkap = "Farid Fitriansah Alfarizi";
  String NIM = "2241720055";
  
  bool isPrime(int number) {
    if (number < 2) {
      return false;
    }
    for (int i = 2; i <= number ~/ 2; i++) {
      if (number % i == 0) {
        return false;
      }
    }
    return true;
  }
  
  for (int num = 0; num <= 201; num++) {
    if (isPrime(num)) {
      print("$num adalah bilangan prima.");
      print("Nama: $namaLengkap");
      print("NIM: $NIM");
    }
  }
}
```

Output:
```Console
2 adalah bilangan prima.
Nama: Farid Fitriansah Alfarizi
NIM: 2241720055
3 adalah bilangan prima.
Nama: Farid Fitriansah Alfarizi
NIM: 2241720055
...
```