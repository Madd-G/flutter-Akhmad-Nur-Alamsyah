# **(28) UI Testing**

## Nama: Akhmad Nur Alamsyah
&nbsp;

# UI Testing
UI Testing merupakan pengujian yang dilakukan pada tampilan suatu aplikasi untuk memastikan aplikasi dapat menerima interaksi dan memberi respon kepada pengguna. Di flutter, disebut juga widget testing sehingga pengujian dilakukan pada widgets dengan menuliskan script yang dapat dijalankan secara otomatis.

## Keuntungan UI Testing
* Memastikan seluruh widget memberi tampilan yang sesuai.
* Memastikan seluruh interaksi dapat diterima dengan baik.
* Menjadi ketentuan yang harus diikuti saat diperlukan perubahan pada widget.

## Melakukan UI Testing
* Instalasi package testing
    Umumnya, package testing sudah terinstall sejak project pertama kali dibuat. Tetapi, cara ii dapat dilakukan, jika ingin menginstall secara manual.
    ```
    dev_dependencies:
        flutter_test:
            sdk: flutter
    ```
* Penulisan script testing
    * Dilakukan pada folder <code>test</code>.
    * Nama file harus diikuti <code>_test.dart</code>, contoh contact_test.dart.
    * Tiap file berisi fungsi <code>main()</code> yang didalamnya dapat dituliskan script testing.
    * Tiap skenario pengujian disebut <code>test case</code>.
        ```
        void main() {
            testWidgets('Judul halaman harus ...', (WidgetTester tester) async {
                // ...
            });

            testWidgets('Tombol harus ...', (WidgetTester tester) async {
                // ...
            });
        }
        ```
* Script testing
    1. Test case diawali dengan <code>testWidgets</code> dan diberi judul.
    2. Simulasi proses mengaktifkan halaman AboutScreen.
    3. Memeriksa apakah di halaman tersebut terdapat teks "About Screen".
        ```
        // 1
        testWidgets('Judul halaman harus About Screen', (WidgetTester tester) async {
            // 2
            await tester.pumpWidget(
                const MaterialApp(
                    home: AboutScreen(),
                ),
            );

            // 3
            expect(find.text('About Screen'), findsOneWidget);
        });
        ```
* Menjalankan testing
    * Perintah <code>flutter test</code> akan menjalankan seluruh file test yang dibuat.
    * Hasil dari perintah ini adalah lamanya waktu pengujian, total pengujian yang dilakukan, dan pesan bahwa pengujian berhasil.
        ```
        $ flutter test
        ```
* Jika gagal, maka akan ditampilkan penyebab gagalnya pengujian.