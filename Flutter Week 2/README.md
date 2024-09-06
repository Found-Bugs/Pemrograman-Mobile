# Pengantar Bahasa Pemrograman Dart - Bagian 1

```
Nama: Farid Fitriansah Alfarizi
NIM: 2241720055
Kelas: TI-3A
```

## Tugas Praktikum

### Soal 1
Modifikasilah kode pada baris 3 di VS Code atau Editor Code favorit Anda berikut ini agar mendapatkan keluaran (output) sesuai yang diminta!

```Dart
void main() { 
   for (int i = 0; i < 5; i++) { 
     print('hello ${i + 1}'); 
   } 
}
```

Output yang diminta:

```Console
Nama saya adalah Fulan, sekarang berumur 18
Nama saya adalah Fulan, sekarang berumur 17
Nama saya adalah Fulan, sekarang berumur 16
Nama saya adalah Fulan, sekarang berumur 15
Nama saya adalah Fulan, sekarang berumur 14
Nama saya adalah Fulan, sekarang berumur 13
Nama saya adalah Fulan, sekarang berumur 12
Nama saya adalah Fulan, sekarang berumur 11
Nama saya adalah Fulan, sekarang berumur 10
Nama saya adalah Fulan, sekarang berumur 9
```

### Jawaban

Kode:

```Dart
void main() { 
   for (int i = 18; i > 8; i--) { 
     print('Nama saya adalah Farid, sekarang berumur ${i}'); 
   } 
}
```

Hasil:

```Console
Nama saya adalah Farid, sekarang berumur 18
Nama saya adalah Farid, sekarang berumur 17
Nama saya adalah Farid, sekarang berumur 16
Nama saya adalah Farid, sekarang berumur 15
Nama saya adalah Farid, sekarang berumur 14
Nama saya adalah Farid, sekarang berumur 13
Nama saya adalah Farid, sekarang berumur 12
Nama saya adalah Farid, sekarang berumur 11
Nama saya adalah Farid, sekarang berumur 10
Nama saya adalah Farid, sekarang berumur 9
```

### Soal 2
Mengapa sangat penting untuk memahami bahasa pemrograman Dart sebelum kita menggunakan framework Flutter ? Jelaskan!

### Jawaban

Memahami bahasa pemrograman Dart sangat penting sebelum menggunakan framework Flutter karena alasan berikut:

1. **Pondasi Utama Flutter**: Flutter dibangun di atas Dart, sehingga segala hal yang dilakukan di Flutter (seperti UI, state management, animasi) menggunakan Dart sebagai bahasa pemrogramannya. Dengan memahami Dart, kita akan lebih mudah memahami konsep dan fitur yang ditawarkan oleh Flutter.

2. **Pemahaman Mendalam tentang Sintaks dan Struktur**: Dart memiliki sintaks dan aturan khusus yang berbeda dari bahasa pemrograman lainnya. Memahami bagaimana Dart mengelola variabel, tipe data, fungsi, dan OOP (Object-Oriented Programming) akan mempermudah kita menulis kode Flutter dengan baik.

3. **Asynchronous Programming**: Dart mendukung fitur asynchronous programming dengan `Future`, `async`, dan `await`. Fitur ini penting dalam Flutter untuk menangani operasi yang berjalan di latar belakang seperti pengambilan data dari API, dan memahami cara kerjanya akan membantu kita membuat aplikasi yang responsif.

4. **Optimasi Kinerja**: Dart dirancang untuk performa yang tinggi, baik dalam mode kompilasi just-in-time (JIT) untuk pengembangan maupun ahead-of-time (AOT) untuk produksi. Memahami mekanisme optimasi ini dapat membantu kita menulis kode yang lebih efisien dan cepat.

5. **Penerapan Konsep-konsep Object-Oriented**: Dart adalah bahasa berorientasi objek. Flutter menggunakan banyak konsep OOP seperti class, inheritance, dan polymorphism. Memahami konsep-konsep ini dalam Dart akan membuat kita lebih mudah memahami bagaimana widget dan layout bekerja di Flutter.

6. **Pengembangan dan Debugging Lebih Efisien**: Dengan pemahaman yang baik tentang Dart, debugging dan pengembangan aplikasi Flutter akan menjadi lebih efisien. Kita akan tahu cara melacak error dengan lebih cepat dan menulis kode yang lebih bersih dan terstruktur.

Jadi, belajar Dart terlebih dahulu akan membuat proses pengembangan menggunakan Flutter lebih lancar dan efisien, serta meminimalkan kesalahan dan hambatan selama coding.

### Soal 3
Rangkumlah materi dari codelab ini menjadi poin-poin penting yang dapat Anda gunakan untuk membantu proses pengembangan aplikasi mobile menggunakan framework Flutter.

### Jawaban

Berikut rangkuman dari materi mengenai Dart yang dapat membantu dalam pengembangan aplikasi mobile menggunakan Flutter:

1. **Fitur Utama Dart**:
   - **Productive tooling**: Tersedia alat analisis kode, plugin IDE, dan ekosistem paket besar.
   - **Garbage collection**: Otomatis mengelola memori objek yang tidak terpakai.
   - **Type annotations**: Opsional, tetapi berguna untuk keamanan dan konsistensi data.
   - **Statically typed**: Dart aman dengan type-safe dan type inference.
   - **Portability**: Dart mendukung pengembangan lintas platform (web, ARM, x86).

2. **Evolusi Dart**:
   - Diluncurkan pada 2011, awalnya berfokus pada web, lalu beralih ke mobile dengan **Flutter**.
   - Menawarkan performa optimal dan alat modern untuk proyek berskala besar.

3. **Cara Kerja Dart**:
   - Eksekusi dengan **Dart VM** atau **kompilasi JavaScript**.
   - Mendukung dua mode: **Just-In-Time (JIT)** dan **Ahead-Of-Time (AOT)**.
   - **Hot reload**: Fitur Flutter yang didukung oleh JIT untuk feedback cepat saat pengembangan.

4. **Struktur Bahasa Dart**:
   - Mirip dengan bahasa C dan JavaScript.
   - Mengikuti prinsip **Object-Oriented Programming (OOP)** dengan fitur seperti encapsulation, inheritance, polymorphism, dll.

5. **Operator Dart**:
   - Mendukung operator aritmatika (+, -, *, /, ~/), increment (++), decrement (--), persamaan (==, !=), relasional (> , < , >=, <=), dan logika (||, &&).

6. **Alat Pembelajaran Dart**:
   - **DartPad**: Alat online untuk eksperimen dan belajar bahasa Dart secara interaktif.

7. **Kode Dart Sederhana**:
   ```dart
   void main() { 
      for (int i = 0; i < 5; i++) { 
        print('hello ${i + 1}'); 
      } 
   }
   ```

   - **Function `main()`**: Titik awal eksekusi program Dart.

Dengan memahami dasar-dasar ini, pengembangan aplikasi Flutter akan menjadi lebih efisien dan lancar karena Flutter sangat bergantung pada bahasa Dart.