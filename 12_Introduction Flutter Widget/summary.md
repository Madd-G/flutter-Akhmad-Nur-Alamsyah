# (12) Introduction Flutter Widget

## Nama: Akhmad Nur Alamsyah
&nbsp;

<code>Flutter merupakan alat pengembangan antarmuka pengguna yang digunakan untuk membuat aplikasi mobile, desktop, dan web.</code>

## Keunggulan Flutter
* Mudah digunakan dan dipelajari
* Produktivitas tinggi
* Dokumentasi lengkap
* Komunitas yang berkembang

## Bagian dari Flutter
1. Software Development Kit (SDK)
    #### Software Development Kit merupakan alat-alat untuk membantu proses pengembangan aplikasi.
2. Framework
    #### Framework merupakan perlengkapan untuk membentuk aplikasi yang dapat dikustomisasi.

## Membuat Project Flutter
Dilakukan dengan menjalankan perintah: <code>flutter create <nama_project></code>.

## Menjalankan Project Flutter
Masuk ke directori project dan jalankan perintah <code>flutter run</code>.

## Widget
Widget berupa class dan digunakan untuk membentuk antarmuka (UI). Widget dapat terdiri dari beberapa widget lainnya.

### Jenis Widget
1. Stateless Widget
    #### Stateless widget tidak bergantung pada perubahan data dan hanya fokus pada tampilan. Stateless widget dibuat dengan extends pada class StatelessWidget.
    ```
    class MyWidget extends StatelessWidget {
        const MyWidget({Key? key}) : super(key: key);

        @override
        Widget build(BuildContext context) {
            return const MaterialApp(
                home: Scaffold(
                    body: Container();
                )
            );
        }
    }
    ```
2. Stateful Widget
    #### Stateful widget mementingkan pada perubahan data dan dibuat dengan extends pada class StatefulWidget. Pada stateful widget 1 widget menggunakan 2 class (widget dan state).
    ```
    class MyWidget extends StatefulWidget {
        const MyWidget({Key? key}) : super(key: key);

        @override
        State<MyWidget> createState() => _MyWidgetState();
    }

    class _MyWidgetState extends State<MyWidget> {
        @override
        Widget build(BuildContext context) {
            return MaterialApp(
                home: Scaffold(
                    body: Container(),
                ),
            );
        }
    }
    ```

### Built-in Widgets
Built-in widget merupakan widget yang dapat langsung digunakan dan sudah ter-install bersama flutter.

1. MaterialApp
    #### Membangun aplikasi dengan desain material.
    ```
    const MaterialApp();
    ```
2. Scaffold
    #### Membentuk sebuah halaman pada aplikasi.
    ```
    const Scaffold();
    ```
3. AppBar
    #### Membentuk application bar yang terletak pada bagian atas halaman aplikasi.
    ```
    AppBar();
    ```
4. Text
    #### Menampilkan teks pada aplikasi.
    ```
    const Text('teks');
    ```
