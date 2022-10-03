# **(21) Flutter Global State Management**

## Nama: Akhmad Nur Alamsyah
&nbsp;

# State
State merupakan data yang dapat dibaca saat pembuatan widget. State dapat berubah saat widget sedang aktif dan state hanya dimiliki oleh StatefulWidget. 

## Global State
Global state berfungsi agar antara widget dapat memanfaatkan state yang sama dengan mudah.

## Memanfaatkan State
Dibuat sebagai property dari class dan digunakan pada widget saat build.
```
// property
var number = 0;

// build
Text('$number');
```

## Mengubah State
Menggunakan method setState.
```
setState(() {
    number = number + 1;
});
```

# Global State
Global state merupakan state biasa yang dapat digunakan pada seluruh widget.

## Provider
Provider merupakan state management dan perlu di-install agar dapat digunakan.

## Instalasi Provider
* Tambahkan package provider pada bagian dependencies dalam file pubspec.yaml. Kemudian jalankan perintah <code>flutter pub get</code>.
    ```
    dependencies:
      provider:
    ```

* Buat file bernama contact.dart dan definisikan state dalam bentuk class.
    ```
    class Contact with ChangeNotifier {
        List<Map<String, String>> _contact = [];

        List<Map<String, String>> get contacts => _contact;
        void add(Map<String, String> contact) {
            _contacts.add(contact);
            notifyListener();
        }
    }
    ```

* Daftarkan pada runApp dengan MultiProvider.
    ```
    void main() {
        runApp(
            MultiProvider(
                providers: [
                    ChangeNotifierProvider(create: (_) => contact_store.Contact())
                    ];
                    child: MyWidget(),
            ),
        );
    }
    ```

* Simpan provider dalam variable dan ambil data dari provider melalui getter.
    ```
    // build
    final contactProvider = provider.of<contact_store.Contact>(context);

    // return
    ListView.builder(
        itemCount: contactProvider.contact.length,
        itemBuilder: (context, index) {
            return ListTile(
                title: Text(contactProvider.contacts[index]['name'] ?? ''),
                subtitle: Text(contactProvider.contacts[index]['phone'] ?? ''),
            );
        },
    );
    ```