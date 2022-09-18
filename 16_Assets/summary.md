# **(16) Assets**

## Nama: Akhmad Nur Alamsyah
&nbsp;

# Assets
Assets merupakan file yang di bundled dan di deployed bersamaan dengan aplikasi. Tipe-tipe assets, seperti: static data (JSON files), icons, images, dan font file (ttf). 

## Menentukan Assets
* Flutter menggunakan pubspec.yaml.
* Pubspec.yaml terletak pada root project, untuk mengidentifikasi assets yang dibutuhkan aplikasi.
* Gunakan karakter "/" untuk memasukkan semua assets dibawah satu directory name. 

## Image
Image atau gambar akan membuat tampilan aplikasi menjadi lebih menarik. Flutter mendukung format gambar seperti JPEG, WebP, GIF, Animated Web/GIF, PNG, BMP, dan WBMP. Menampilkan gambar dari project asset dan internet.
### Loading images:
```
Column(
    children: const [
        Image(image: AssetImage('assets/background.jpg'),),
        Image.asset('assets/background.jpg'),
        Image.network('https://picsum.photos/id/1/200/300'),
    ],
)
```

## Font
Flutter dapat menggunakan font yang berbeda baik yang disediakan oleh flutter maupun dari package.
### Cara menggunakan custom font:
1. Cari dan download font.
2. Import file .ttf.
3. Daftarkan font di pubspec.yaml.
    ```
    fonts:
      - family: Rowdies
        fonts:
          - asset: fonts/Rowdies-Bold.ttf
          - asset: fonts/Rowdies-Light.ttf
          - asset: fonts/Rowdies-Regular.ttf
    ```
4. Mengatur font sebagai default.
    ```
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Flutter Assets',
            theme: ThemeData(fontFamily: 'Rowdies'),
            home: const HomePage(),
        );
    }
    ```
5. Gunakan font di spesifik widget.
    ```
    Text(
        'Star Hill',
        style: TextStyle(
            fontSize: 30,
            fontFamily: 'Rowdies',
        ),
    ),
    ```
&nbsp;
### Font dari package
1. Tambahkan package google_fonts di dependencies.
    ```
    dependencies:
      flutter:
        sdk: flutter
      google_fonts: ^2.2.0
    ```
2. Import package di file dart.
3. Gunakan font dengan memanggil GoogleFonts.namaFont()
    ```
    import 'package:google_fonts/google_fonts.dart';

    Text(
        'Star Hill',
        style: GoogleFonts.rowdies(fontSize: 30),
    ),
    ```