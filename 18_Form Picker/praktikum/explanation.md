# **(18) Form Picker (Practical Explanation)**

## Nama: Akhmad Nur Alamsyah
&nbsp;

# Class HomePage
Class HomePage meng-extend StatefulWidget. Memiliki beberapa attribut seperti:

&nbsp;

<img src='screenshot/attribut-home-page.png' height=200>

attribut result, pickedFile, dan fileToDisplay untuk mengambi file (gambar), attribut dateInput untuk mengambil tanggal (date picker), _currentColor untuk mengambil warna (color picker), dan textArea untuk mengambil teks (string). 

&nbsp;

<img src='screenshot/pick-file.png' height=200>

Fungsi pickFile digunakan untuk mengambil gambar yang memanfaatkan fungsi pickFiles dari dependency file_picker. Fungsi ini akan dijalankan ketika user menekan tombol 'Pilih File'.

&nbsp;

<img src='screenshot/pilih-file-button.png' height=200>

Tombol untuk memilih gambar menggunakan ElevatedButton. Ketika ditekan akan memanggil fungsi pickFile.

&nbsp;

<img src='screenshot/date-picker-button.png' height=300>

Berfungsi untuk menginputkan tanggal memanfaatkan dependency intl dan menggunakan TextField. Memiliki batas tahun 1950 sampai tahun 2100. 

&nbsp;

<img src='screenshot/color-picker-button.png' height=350>

Memanfaatkan dependency flutter_colorpicker dan menggunakan TextField yang ketika ditekan akan menampilkan pilihan warna yang dapat dipilih. 

&nbsp;

<img src='screenshot/text-area.png' height=200>

TextField yang memiliki maxLines 9 dan TextInputType.multiline sehingga memiliki bentuk lebih tinggi (height bukan hanya satu baris).  

&nbsp;

<img src='screenshot/simpan-button.png' height=250>

Tombol yang ketika ditekan akan menuju halaman NewScreen (class NewScreen) menggunakan Navigator puchAndRemoveUntil dan juga akan mengirimkan argument data berisi data dari attribut pickedFile, dateInput, _currentColor, dan textarea.

# NewScreen

<img src='screenshot/new-screen-attributes.png' height=200>

Pada class NewScreen memiliki constructor dan empat attribut yang value-nya akan diterima dari argument dari class HomePage.

&nbsp

<img src='screenshot/new-screen.png' height=500>

Pada class NewScreen ini hanya akan menampilkan data yang diterima dari class HomePage. Memiliki layout sebagai berikut:

<img src='screenshot/layout.png'>

&nbsp;

# Hasil