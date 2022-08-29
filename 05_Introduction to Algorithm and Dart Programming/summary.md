# (05) Introduction to Algorithm and Dart Programming

## Data Diri:
### Nama: Akhmad Nur Alamsyah
### No urut:
&nbsp;

<code>Dart adalah bahasa pemrograman <i>open source</i> dan dirancang untuk membangun aplikasi agar dapat berjalan dengan cepat di berbagai <i>platorm</i></code>
&nbsp;

## Kenapa Dart?
1. Type safe
   
   menjamin konsistensi tipe data.

2. Null safety 

   memberi keamanan dari data bernilai kosong (null). 

3. Rich standard library 

   memiliki banyak dukungan *library* internal.

4. Multiplatform 

   mampu berjalan pada berbagai jenis perangkat.

&nbsp;
## **Dasar Pemrograman Dart**
### Menampilkan teks
perintah **print** untuk menampilkan teks ke layar.
```
print('Hai, nama saya Akhmad Nur Alamsyah');
```
### Komentar
Baris kode yang tidak dijalankan dengan tujuan memberi catatan pada kode dan menjegah perintah dijalankan.
```
// Komentar satu baris

/*
Komentar
Banyak baris
*/

print('Hai, nama saya Akhmad Nur Alamsyah');
```

&nbsp;
### **Variabel**
Variabel memiliki nama, tipe data, dan digunakan untuk menyimpan data.
* Pembuatan variabel dengan menentukan tipe data dan nama.
  ```
  int usia;
  ```
* Menggunakan **var** dan diikuti nama variabel secara otomatis tipe variable tersebut adalah *null*.
  ```
  var usia;
  ```
* Memberi nilai variable menggunakan tanda sama dengan (=).
  ```
  var usia
  usia = 21;
  ```
* Deklarasi dan memberi nilai variabel secara bersamaan.
  ```
  var usia = 21;
  ```
&nbsp;
### **Konstanta**
Konstanta memiliki nama, tipe data, dan digunakan untuk menyimpan data akan tetapi tidak dapat diubah (nilai tetap).
* Menggunakan **final**, diikuti nama. Nilai variable dapat di *set* secara langsung atau pun tidak. Nilai variable **final** tidak dapat diubah setelah di *set*.
  ```
  // set nilai langsung
  final usia = 21'

  // set nilai tidak langsung
  final usia;
  usia = 21;
  ```
* Menggunakan **const**, diikuti nama. Nilai variable di *set* langsung dan tidak dapat diubah.
  ```
  const usia = 21;
  ```
&nbsp;
### **Tipe data**
1. int: bilangan bulat.
2. double: bilangan pecahan.
3. bool: true/false.
4. string: teks.


### int
Menggantikan var dengan int dan data harus bilangan bulat.
```
int usia = 21;
``` 
### double
Menggantikan var dengan double dan data harus bilangan pecahan. Penulisan pecahan menggunakan tanda titik.
```
double beratBadan = 49.6;
```
### bool
Menggantikan var dengan bool dan data harus *true* atau *false*.
```
bool pria = false;
```
### string
Menggantikan var dengan string dan data berupa teks. Penulisan teks diawali dan diakhiri dengan tanda kutip ("").
```
String nama = "Alamsyah";
```
&nbsp;
### **Operator**
Operator digunakan untuk operasi pengolahan data. Data yang dikelola disebut operand.
### Arithmetic
Untuk perhitungan matematis (+, -, *, /, %).
```
print(1 + 9);
```
### Assignment
Memberi nilai pada variable (=, +=, -=, *=, /=, %=).
```
var usia = 18;
usia = 21;
```
### Comparison
Membandingkan kesetaraan nilai (==, <, <=, >, >=).
```
print(1 == 2);
```
### Logical
Menggabungkan beberapa kondisi (&&, ||, !).
```
print(1 == 2 && 2 == 1);
```



