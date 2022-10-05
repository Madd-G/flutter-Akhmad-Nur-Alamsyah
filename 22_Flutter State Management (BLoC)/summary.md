# **(22) Flutter State Management (BLoC)**

## Nama: Akhmad Nur Alamsyah
&nbsp;

# Declarative UI
Flutter memiliki sifat declarative yang artinya flutter membangun UI nya pada screen untuk mencerminkan keadaan state saat ini.

# State
State merupakan ketika sebuah widget sedang aktif dan widget tersebut menyimpan data di memori. Flutter akan membangun ulang UI nya ketika ada state atau data yang berubah. Ada dua jenis state dalam flutter, ephemeral state dan app state.
* Ephemeral State
    * Digunakan ketika tidak ada bagian lain pada widget tree yang membutuhkan untuk mengakses data widget nya, contohnya PageView, BottomNavigationBar, Switch Button.
    * Tidak perlu state management yang kompleks.
    * Hanya membutuhkan Stateful Widget dengan menggunakan fungsi setState().
* App State
    * Digunakan ketika bagian yang lain suatu aplikasi membutuhkan akses ke data state widget, contohnya login info, pengaturan preferensi pengguna, keranjang belanja, dimana informasi yang pengguna pilih di suatu screen yang mana informasi itu akan muncul di screen yang berbeda.

## Pendekatan State Management
* SetState: Lebih cocok penggunaannya pada ephemeral state.
* Provider: Penggunaan untuk state management yang lebih kompleks seperti app state, pendekatan ini direkomendasikan oleh tim flutter karena mudah dipelajari.
* BLoC: Menggunakan pola stream/observable, untuk memisahkan UI dengan bisnis logic nya.

# BLoC
BLoC (Business Logic Component) memisahkan antara bisnis logic dengan UI.

Alasan menggunakan BLoC:
* Simple
* Powerful
* Testable

Cara kerja BLoC
* Menerima wvwnt sebagai input.
* Dianalisa dan dikelola didalam BLoC.
* Menghasilkan state sebagai output.

## Stream
Stream merupakan rangkaian proses secara asynchronous dan merupakan aktor utama didalam BLoC.