# **(07) Branching Looping Function**

## Data diri:
### Nama: Akhmad Nur Alamsyah
&nbsp;

## **Pengambilan keputusan**
Menentukan alur program pada kondisi tertentu.

### **If**
If memerlukan nilai boolean (dari operator atau comparison). If menjalankan bagian proses jika nilai boolean bernilai true.

```
if (nilai_bool) {
    // proses jika nilai_bool adalah true
}

# Contoh
var usia = 18;
if (usia < 20) {
    print('Remaja');
}
```

### **If-else**
If-else menambah alternatif jika nilai bool adalah false.
```
if (nilai_bool) {
    // proses jika nilai_bool adalah true
} else {
    // proses jika nilai_bool adalah false
}

# Contoh
var usia = 18;
if (usia < 20) {
    print('Remaja');
} else {
    print('tidak memiliki golongan');
}
```

### **Sisipan else if**
Sisipan else if menambahkan alterntif jika nilai boolean adalah false. Else if juga menambah pengujian nilai boolean lain.
```
if (nilai_bool_a) {
    // proses jika nilai_bool_a adalah true
} else if (nilai_bool_b) {
    // proses jika nilai_bool_a adalah false 
    // dan nilai_bool_b adalah true 
}

# Contoh
var usia = 38;
if (usia < 20) {
    print('Remaja');
} else if (usia <40) {
    print('Dewasa');
} else {
    print('tidak memiliki golongan');
}
```

## **Perulangan**
Menjalankan proses berulang kali

### **For**
For digunakan jika diketahui berapa kali perulangan terjadi. For memerlukan nilai awal dan nilai bool, jika true maka perulangan dilanjutkan. For memerlukan pengubah nilai.
```
for (nilai_awal; nilai_bool; pengubah_nilai_awal) {
    // proses berulang jika nilai bool adalah true
}

# Contoh
for (var i=0; i<10; i+=1) {
    print(i);
}
```

### **While**
While tidak diketahui berapa kali perulangan terjadi. While memerlukan nilai boolean, jika true maka perulangan dilanjutkan.
```
while (nilai_bool) {
    // proses berulang jika nilai_bool adalah true
}

# Contoh
var i = 0;
while (i<10) {
    print(i);
    i++;
}
```

### **Do-While**
Pada do-while proses akan dijalankan minimal sekali, akan diteruskan jika nilai boolean adalah true.
```
do {
    // proses berulang jika nilai_bool adalah true
} while (nilai_bool);

# Contoh
var i = 0
do {
    print(i);
    i++;
} while (i < 10);
```

## **Break dan Continue**
Cara lain untuk menghentikan perulangan. Break dan continue dapat menghentikan perulangan dengan mengabaikan nilai boolean.

### **Perbedaan Break dan Continue**
#### Break: Menghentikan seluruh proses perulangan
#### Continue : Menghentikan satu kali proses perulangan.

### **Break**
```
for (var i=0; true; i++) {
    if (i==0) {
        break;
    }
    print(i);
}
```

### **Continue**
```
for (var i=0; i<10; i+=1) {
    if (i==5) {
        continue;
    }
    print(i);
}
```

## **Fungsi**
Fungsi adalah kumpulan kode yang dapat digunakan ulang. Cukup mengubah fungsi sekali penggunaan lainnya akan ikut berubah.

### **Membuat Fungsi**
```
tipe_data nama_fungsi() {
    // perintah yang dijalankan saat fungsi dipanggil
}

# Memanggil fungsi
nama_fungsi();
```

### **Fungsi dengan Parameter**
Mengirim data saat menjalankan fungsi
```
tipe_data nama_fungsi(tipe_data nama_parameter) {
    // perintah yang dijalankan saat fungsi dipanggil
}

# Contoh
void tampil(String teks) {
    print(teks);
}

# Memanggil fungsi dengan parameter
tampil('Halo');
```

### **Fungsi dengan Return**
Memberi nilai pada fungsi saat dipanggil 
```
tipe_data nama_fungsi(tipe_data nama_parameter) {
    // perintah yang dijalankan saat fungsi dipanggil
    return nilai;
}

# Contoh
int jumlah(int a, int b) {
    return a+b;
}

# Memanggil fungsi
var hasil = jumlah(1, 2);
print(hasil);
```