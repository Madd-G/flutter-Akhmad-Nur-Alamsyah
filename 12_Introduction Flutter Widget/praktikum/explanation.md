# (12) Introduction Flutter Widget (Practical Explanation)

## Nama: Akhmad Nur Alamsyah
&nbsp;

### Class Controller
<img src='screenshot/controller.png'>
Pada praktikum kali ini saya menggunakan state management GetX. Class Controller meng-extends GetxController. Terdapat method onInit yang berfungsi akan langsung menjalankan method yang ada dalamnya pada kasus ini akan langsung menjalankan method startTimer. Kemudian membuat objek Timer dan membuat beberapa variable reaktif bertipe RxInt yang observable. Method counter yang akan menghitung detik, menit, dan jam yang didalamnya terdapat beberapa conditional statement untuk menambah menit dan jam dan akan mengembalikan list yang didalamnya terdapat _hours (jam), _minutes (menit), dan _seconds (detik) dan bertipe RxInt. Kemudian terdapat method startTimer yang akan dijalankan langsung (didalam method onInit) yang akan menjalankan method counter setiap 1 detik (menggunakan Timer periodic).

&nbsp;     
### class Counter (widget yang dipisah (no 2))
<img src='screenshot/counter.png'>
Class Counter meng-extends StatelessWidget. Didalamnya terdapat variable controller yang bertipe Controller dan di required pada constructor. Class Counter me-return widget Text yang di wrap dengan Obx (reactive widget pada GetX) sehingga memungkinkan widget Text untuk di rebuild tanpa me-rebuild widget lainnya dan tidak memerlukan statefulwidget dan setState. 

&nbsp;
### main
<img src='screenshot/main.png'>
Pada main.dart terdapat method main yang akan dijalankan pertama kali oleh flutter/dart dan memanggil class MyApp yang mereturn GetMaterialApp dan didalamnya terdapat properti home yang akan memanggil class MyHomePage. Class MyHomePage me-extends StatelessWidget dan didalam class MyHomePage membuat objek controller dari class Controller yang di-instansiasi menggunakan dependency management get.put sehingga dapat digunakan untuk seluruh child route. Class MyHomepage me-return class Scaffold yang menyediakan berbagai macam widget pada hal ini AppBar dan Body pada properti appBar dan body. Widget Center memiliki child class Counter yang akan berubah secara dinamis (seperti yang dijelaskan pada bagian class Counter).

&nbsp;
### Hasil
<img src='screenshot/hasil.png' height=350 width=150>