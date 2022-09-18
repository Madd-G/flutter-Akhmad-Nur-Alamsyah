# **(14) Flutter Command Line Interface & Flutter Package Management**

## Nama: Akhmad Nur Alamsyah
&nbsp;

# Flutter CLI

Flutter CLI adalah alat yang digunakan untuk berinteraksi dengan Flutter SDK dan perintah dijalankan dalam terminal.

## Important CLI Commands
* Flutter Doctor
    
    Perintah untuk menampilkan informasi software yang dibutuhkan flutter. Menggunakan command <code>flutter doctor</code>.

* Flutter Create

    Perintah untuk membuat project aplikasi flutter baru di directory tertentu. Menggunakan command <code>flutter create <APP_NAME></code>.

* Flutter Run

    Perintah untuk menjalankan project aplikasi di device yang tersedia. Menggunakan command <code>flutter run <DART_FILE></code>.

* Flutter Emulator

    Perintah untuk menampilkan daftar emulator yang terinstall dan menampilkan option untuk membuka emulator atau membuat emulator baru. Menggunakan command: 
    - <code>flutter emulators</code>
    - <code>flutter emulators --launch <EMULATOR_ID></code>
    - <code>flutter emulators --create [--name xyz]</code>

* Flutter Channel

    Perintah untuk menampilkan daftar flutter channel yang tersedia dan menunjukkan channel yang digunakan saat ini. Menggunakan command <code>flutter channel</code>.

* Flutter Pub 

    Ada dua syntax yang dapat digunakan, yaitu: 
    
    - Flutter pub add untuk menambahkan packages ke dependencies yang ada di pubspec.yaml. Menggunakan command <code>flutter pub add <PACKAGE_NAME></code>.
    - Flutter pub get untuk mendownload semua packages atau dependencies yang ada di pubspec.yaml. Menggunakan command <code>flutter pug get</code>.

* Flutter Build

    Perintah untuk memproduksi sebuah file aplikasi untuk keperluan deploy atau publish ke AppStore, PlayStore, dan lainnya. Menggunakan command <code>flutter build <DIRECTORY_NAME></code>.

* Flutter Clean

    Perintah untuk menghapus folder build serta file lainnya yang dihasilkan saat kita menjalankan aplikasi di emulator. Menggunakan command <code>flutter clean</code>, perintah ini akan memperkecil ukuran project tersebut.
&nbsp;

# Packages Management

Flutter mendukung sharing packages. Package dibuat oleh developers lain. Package dapat mempercepat pengembangan aplikasi karena tidak perlu membuat semuanya dari awal (scratch). Package dapat dilihat di website pub.dev.

## Cara Menambahkan Package
* Cari package di pub.dev.
* Copy baris dependencies yang ada di bagian installing.
* Buka pubspec.yaml.
* Paste barisnya dibawah dependencies pubspec.yaml.
* Run flutter pub get di terminal.
* Import package di file dart agar bisa digunakan.
* Stop atau restart aplikasi jika dibutuhkan.
