# **(19) Flutter Navigation**

## Nama: Akhmad Nur Alamsyah
&nbsp;

# Flutter Navigation
Navigation/navigasi adalah berpindah dari suatu halaman menuju halaman lain.

## Navigation Dasar
Berpindah halaman menggunakan <code>Navigator.push()</code> dan kembali sebelumnya menggunakan <code>Navigator.pop()</code>.

### Perpindahan halaman:

    // perpindahan tanpa data
    Navigator.of(context).push(
        MaterialPageRoute(builder: (_) => const NextName()),
    );

    // perpindahan dengan data
    Navigator.of(context).push(
        MaterialPageRoute(builder: (_) => const NextName(parameter: 'data')),
    );

## Navigation dengan Named Route
Tiap halaman memiliki alamat yang disebut route. Perpindahan halaman menggunakan <code>Navigator.pushNamed()</code> dan kembali ke halaman sebelumnya menggunakan <code>Navigator.pop()</code>.

### Mendaftarkan Route
Tambahkan initialRoute dan routes pada MaterialApp dan tiap route adalah fungsi yang membentuk halaman.

    MaterialApp(
        initialRoute: '/',
        routes: {
            '/': (_) => const HomeScreen(),
            '/about': (_) => const AboutScreen(),
        },
    );

### Perpindahan Halaman
```
// perpindahan tanpa data
Navigator.of(context).pushNamed('/about');

// perpindahan dengan data
Navigator.of(context).pushNamed('/about', arguments: 'data');
```