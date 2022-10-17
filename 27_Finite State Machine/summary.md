# **(27) Finite State Machine & Unit Test**

## Nama: Akhmad Nur Alamsyah
&nbsp;

# Finite State Machine
Mesin yang memiliki sejumlah state dan tiap state menunjukkan apa yang terjadi sebelumnya.

## Implementasi pada View-Model

* Menambah Enum
    
    Membuat enum untuk masing-masing state:
    * none saat IDDLE
    * loading saat RUNNING
    * error saat ERROR

        ```
        enum ContactViewState {
            none,
            loading,
            error,
        }
        ```

* Menambah Getter-Setter

    Membuat getter-setter untuk menyimpan state dari widget
    ```
    class ContactViewModel with ChangeNotifier {

        ContactViewState _state = ContactViewState.none;
        ContactViewState get state => _state;

        changeState(ContactViewState s) {
            _state = s;
            notifyListeners();
        }
    }
    ```

* Gunakan State

    Tiap proses yang perlu state tersebut, dapat memanfaatkannya.
    ```
    class ContactViewModel with ChangeNotifier {

        getAllContact() async {
            changeState(ContactViewState.loading);

            try {
                final c = await ContactAPI.getAllContacts();
                _contacts = c;
                notifyListeners();
                changeState(ContactViewState.none);
            } catch (e) {
                changeState(ContactViewState.error);
            }
        }
    }
    ```

## Implementasi pada Widget

### Perbedaan Tampilan Tiap State
Informasi finite state dapat berguna untuk menentukan seperti apa tampilan yang dimunculkan
```
widget body(ContactViewModel viewModel) {
    final isLoading = viewModel.state == ContactViewState.loading;
    final isError = viewModel.state == ContactViewState.error;

    if (isLoading) {
        return const Center(child: CircularProgressIndicator());
    }

    if (isError) {
        return const Center(child: Text('Gagal mengambil data.'));
    }

    return listView(viewModel);
}
```

# Unit Test
Unit testing merupakan salah satu jenis pengujian pada perangkat lunak. pengujian dilakukan pada unit dalam perangkat lunak. Unit yang dimaksud umumnya adalah fungsi atau method.

## Tujuan Unit tesing
* Memastikan fungsi dapat mengolah berbagai jenis input.
* Memastikan hasil dari suatu fungsi atau method sudah sesuai.
* Menjadi dokumentasi.

## Cara Melakukan Unit Test
* Manual

    Unit dijalankan dan dicek hasilnya secara manual.

* Automated

    Menulis script yang dapat dijalankan berkali-kali menggunakan test runner.

## Cara Unit Testing
* Menambah dependencies
    * Tambahkan test, pada bagian dev_dependencies dalam file pubspec.yaml
    * Jalankan <code>flutter pub get</code> pada terminal.

* Membuat file test
    * pada folder test, tambahkan folder baru <code>model/api.</code>.
    * Dalam folder tersebut, tambahkan file baru <code>contact_api_test.dart</code>.

* Menulis test script
    * Import package test.
    * Membuat test case.
    * Menjalankan fungsi.
    * Cek hasil dengan expect.
        ```
        void main() {
            test('get all contacts returns data', () async {
                var contacts = await ContactAPI.getAllContacts();
                expect(contacts.isNotEmpty, true);
            });
        }
        ```
* Menjalankan test
    * Menggunakan perintah <code>flutter test</code>.

* Mengelompokkan test
    * Beberapa test dengan subjek yang sama diletakkan dalam sebuah kelompok.
    * Dilakukan dengan menggunakan Group.
        ```
        void main() {
            group('ContactAPI', () {
                test('get all contacts returns data', () async {
                    var contacts = await ContactAPI.getAllContacts();
                    expect(contacts.isNotEmpty, true);
                });
            });
        }
        ```

# Mocking
Proses yang terikat dengan sistem eksternal dapat mempengaruhi berjalannya pengujian. Pengaruh tersebut dapat mengganggu proses pengujian. Maka dilakukan mocking untuk menghindari masalah-masalah tersebut.

## Cara Kerja Mocking
* Suatu objek dibuat bentuk tiruannya. Bentuk tiruan tersebut memiliki input dan output yang sama dengan yang asli. Bentuk tiruan menghilangkan ketergantungan pada sistem eksternal.
* Menambah dependencies
    * Tambahkan <code>mockito</code> dan <code>build_runner</code>, pada bagian <code>dev_dependencies</code> dalam file pubspec.yaml.
    * Jalankan <code>flutter pub get</code> pada terminal.

* Melakukan mocking.
    * mengubah kode agar dapat melakukan mocking
        ```
        // Awal
        class contactAPI {
            static Future<List<Contact>> getAllContacts() async {
                final response = ...;
                List<Contact> contacts = ...;
                return contacts;
            }
        }

        // Ubah menjadi
            class contactAPI {
            Future<List<Contact>> getAllContacts() async {
                final response = ...;
                List<Contact> contacts = ...;
                return contacts;
            }
        }
        ```

    * Memasang annotation untuk membuat mock
        ```
        import 'package:test/test.dart';
        import 'package:mockito/mockito.dart';
        import 'package:mockito/annotations.dart';

        @GenerateMocks([ContactAPI])
        void main() {
            group('ContactAPI', () {
                test('get all contacts returns data', () async{
                    var contacts = await ContactAPI.getAllContacts();
                    expect(contacts.isNotEmpty, true);
                });
            });
        }
        ```

    * Membuat file mock dengan menjalankan perintah <code>flutter pub run build_runner build</code>

    * menggunakan mock yang telah dibuat
        ```
        import 'package:test/test.dart';
        import 'package:mockito/mockito.dart';
        import 'package:mockito/annotations.dart';
        import 'contact_api_test.mocks.dart';

        @GenerateMocks([ContactAPI])
        void main() {
            group('ContactAPI', () {

                // Membuat objek mock
                ContactAPI contactAPI = MockContactAPI();

                test('get all contacts returns data', () async{
                    when(contactAPI.getAllContacts()).thenAnswer(
                        (_) async => <Contact>[
                            Contact(id: 1, name: 'a', phone: '0'),
                        ],
                    );
                    var contacts = await ContactAPI.getAllContacts();
                    expect(contacts.isNotEmpty, true);
                });
            });
        }
        ```

* Menjalankan test

    Dengan mocking, test berjalan lebih cepat.