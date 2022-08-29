# (06) Basic Dart Programming

## Data Diri:
### Nama: Akhmad Nur Alamsyah
### No urut:
&nbsp;
### **Anonymous Function**
Anonymous function adalah fungsi yang tidak memiliki nama, dan sebagai data.
```
# Membuat anonymous function
var hello = {
    print('Hello');
}

var jumlah = (int a, int b) {
    return a + b;
}

# Memanggil anonymous function

void main() {
    hello();
    print(jumlah(1,2));
}
```

### **Arrow Function**
Arrow Function dapat memiliki nama ataupun tidak. Pada arrow function berisi 1 data (dari proses maupun data statis). Nilai return arrow function diambil dari data tersebut.
```
# Membuat arrow function
var hello = () => print('Hello');
var jumlah = (int a, int b) => a + b;

# Memanggil arrow function
void main(){
    hello();
    print(jumlah(1,2));
}
```
### **Async Await**
Async await adalah menjalankan beberapa proses tanpa perlu menunggu proses lainnya selesai. Proses ditulis dalam bentuk fungsi. Await akan menunggu hingga proses async selesai.
```
# Contoh 1
void P1() {
    Future.delayed(Duration(seconds: 1), () {
        print('Hello dari P1');
    });
}

void P2() {
    print('Hello dari P2');
}

void main(){
    P1();     # P1 dijalankan belakangan
    P2();     # P2 akan selesai lebih dulu
}

# Contoh 2
void P1() {
    Future.delayed(Duration(seconds: 1), () {
        print('Hello dari P1');
    });
}

void P2() {
    print('Hello dari P2');
}

# Fungsi main menjadi async karena di dalamnya ada await
void main() async{
    await P1();
    P2();         # P2 dijalankan belakangan setelah P1 selesai
} 
```

### **Tipe Data Future**
Future merupakan tipe data yang dapat ditunggu. Future membawa data return dari fungsi async.
```
Future<String> P1() {
    return Future.delayed(Duration(seconds: 1), () {
        return 'Hello dari P1';  # Data yang di return
    });
}

void main() async {
    var data = await P1();
    print(data);   # P1 menghasilkan Future yang didalamnya terdapat sebuah String
}
```

### **Collection**
Collection adalah kumpulan data pada satu tempat.
### List
Menyimpan data secara berbaris dan tiap data memiliki index.
```
# Contoh 1
# Membuat list
var scores = [];

# Menambah data
scores.add(1);
scores.add(2);
print(scores);

# Mengambil data berdasarkan index
print(scores[0]);
print(scores[1]);


# Contoh 2
# Membuat list disertai data-datanya
var scores = [1, 2, 3];

# Mengambil seluruh data pada list
for (var score in scores) {
    print(score);
}
```

### **Map**
Menyimpan data secara key-value. Key berguna seperti index pada list.
```
# Contoh 1
var student = {};

# Menambah data
student['name'] = 'Alamsyah';
student['age'] = 22;

# Mengambil data berdasarkan key
print(student['name']);
print(student['age']);

# COntoh 2
# Membuat map disertai data-datanya
var student = {
    'name': 'Alamsyah',
    'age': 22
};

# Mengambil seluruh data 
for (var key in student.keys) {
    print(student['key']);
}
```

