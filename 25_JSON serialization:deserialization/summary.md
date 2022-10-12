# **(25) JSON Serialization/Deserialization**

## Nama: Akhmad Nur Alamsyah
&nbsp;

# REST API Client

## REST API
REST API merupakan singkatan dari Representational State Transfer Application Programming Interface. REST API merupakan arsitektural yang memisahkan tampilan dengan proses bisnis dan merupakan bagian tampilan dengan proses bisnis berkirim data melalui HTTP Request.

## HTTP
HTTP merupakan protokol yang digunakan untuk berkirim data pada internet, biasanya data tersebut berbentuk media web.

## Pola Komunikasi
Client mengirim request dan server mengolah dan membalas dengan memberi response.

### Struktur Request
* URL: Alamat halaman yang akan diakses.
* Method (GET, POST, PUT, DELETE): Menunjukkan aksi yang diinginkan.
* Header: Informasi tambahan terkait request yang dikirimkan.
* Body: Data yang disertakan bersama request.

### Struktur Response
* Status code: Kode yang mewakili keseluruhan response, baik sukses maupun gagal.
* Header: Informasi tambahan terkait response yang diberikan.
* Body: Data yang disertakan bersama response.

## Dio
Dio dimanfaatkan untuk melakukan REST API dan sebagai HTTP Client.

### Penggunaan Dio
* Tambahkan dependency pada pubspec.yaml dengan jalankan perintah <code>flutter pub get</code> pada terminal.
* Mengambil data menggunakan Dio dan menampilkan hasilnya pada console.
    ```
    import 'package:dio/dio.dart';
    Dio().get('https://reqres.in/api/users').then((response) {
        print(response);
    });
    ```

## Serialisasi JSON
JSON (Javascript Object Notation) merupakan cara penulisan data, umum digunakan pada REST API.

### Serialisasi JSON
Mengubah struktur data ke bentuk JSON. Menggunakan fungsi <code>jsonEncode</code> dari package <code>dart:convert</code>.
    import "dart:convert";

    void main() {
        var dataMap = { ... };
        var dataJSON = jsonEncode(dataMap);
        print(dataJSON);
    }

### Deserialisasi JSON
Mengubah bentuk JSON ke struktur data. Menggunakan fungsi <code>jsonDecode</code> dari package <code>dart:convert</code>.
    import "dart:convert";

    void main() {
        var dataJSON = '...';
        var dataMap = jsonDecode(dataJSON);
        print(dataMap);
    }

## Penggunaan Method GET
```
import 'package:dio/dio.dart';

final Dio dio = Dio();

final Response response = await dio.get(
    'https://reqres.in/api/users'
);
```

## Penggunaan Method POST
```
import 'package:dio/dio.dart';

final Dio dio = Dio();

final Response response = await dio.post(
    'https://reqres.in/api/users',
    data: {
        'name' : 'james',
        'job' : 'leader',
    },
);
```

## Penggunaan Method PUT
```
import 'package:dio/dio.dart';

final Dio dio = Dio();

final Response response = await dio.put(
    'https://reqres.in/api/users/2',
    data: {
        'name' : 'james',
        'job' : 'leader',
    },
);
```

## Penggunaan Method DELETE
```
import 'package:dio/dio.dart';

final Dio dio = Dio();

final Response response = await dio.delete(
    'https://reqres.in/api/users/2'
);
```