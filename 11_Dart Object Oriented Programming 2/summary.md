# (11) Dart Object Oriented Programming 2

## Nama: Akhmad Nur Alamsyah
&nbsp;

## Constructor
*Constructor* merupakan method yang dijalankan saat pembuatan objek. Nama *constructor* sama dengan nama *class*. *Constructor* dapat menerima parameter dan tidak memiliki *return*.

    class Hewan {
        var mata;
        var kaki;

        # Constructor
        Hewan() {
            mata = 0;
            kaki = 0;
        }
    }

&nbsp;
## Inheritance
*Inheritance* bertujuan agar *class* baru dapat menggunakan/memanfaatkan kemampuan *class* lama menggunakan *keyword* <code>extends</code>.

    class Hewan {
        var mata;
        var kaki;

        # Constructor
        Hewan() {
            mata = 0;
            kaki = 0;
        }
    }

    # Class Kambing mewarisi kelas Hewan
    class Kambing extends Hewan{
        Kambing() {
            mata = 2;
            kaki =4;
        }
    }

&nbsp;
## Overriding
*Overriding* menulis ulang *method* yang sudah ada pada *super-class* nya. *Overriding* bertujuan agar *class* memiliki *method* yang sama, tetapi dengan proses ataupun *output* yang berbeda. *Overriding* menambahkan tanda <code>@override</code> di baris sebelum *method* yang melakukan *overriding*.

    class Hewan {
        reproduksi() {
            print('tidak diketahui');
        }
    }

    class Kambing extends Hewan {
        @override
        reproduksi() {
            print('melahirkan');
        }
    }

&nbsp;
## Interface
*Interface* berupa *class*. *Interface* menunjukkan *method* apa saja yang ada pada suatu *class*. Seluruh *method* pada *interface* wajib di-*override*. Digunakan dengan menggunakan *keyword* <code>implements</code>. *Interface* mirip seperti *inheritance*, akan tetapi pada *interface* suatu class dapat meng-*implement* lebih dari satu *class* sedangkan pada *inheritance* hanya bisa satu saja.

    class Hewan {
        bersuara() {
            print('tidak diketahui');
        }
    }

    class Mamalia {
        reproduksi() {
            print('mamalia melahirkan');
        }
    }

    class Kambing implements Hewan, Mamalia {

        @override
        bersuara() {
            print('mbek-mbek');
        }

        @override
        reproduksi() {
            print('melahirkan');
        }
    }

&nbsp;
## Abstract Class
*Abstract class* merupakan *class* yang abstrak. *Abstract class* tidak dapat dibuat objek (instansiasi). Pada *abstract class* tidak semua *method* harus di-*override*.

    abstract class Hewan {
        reproduksi() {
            print('tidak diketahui');
        }
    }

    class Kambing extends Hewan {
        @override
        reproduksi() {
            print('melahirkan');
        }
    }

&nbsp;
## Polymorphism
*Polymorphism* merupakan kemampuan data berubah menjadi bentuk lain. *Polymorphism* dapat dilakukan pada *class* dengan *extends* atau *implements*.

    void main() {
        Hewan k1 = Kambing();
        k1.reproduksi();
    }

&nbsp;
## Generics
*Generics* dapat digunakan pada *class* atau fungsi. *Generics* memberi kemampuan agar dapat menerima data dengan tipe yang berbeda. Tipe data yang diinginkan ditentukan saat membuat *class* atau menjalankan fungsi.

    # Class Hadiah dapat dimasukkan data dengan tipe T
    # Tipe T dapat digunakan di seluruh class Hadiah.
    class Hadiah<T> {
        var isi;

        Hadiah(T i) {
            isi = i;
        }
    }

    # Menggunakan class dengan generics
    # Setelah nama class, kemudian tipe data yang diinginkan
    void main() {
        var h1 = Hadiah<String>('mobil');
        var h2 = Hadiah<int>(10);
    }

    # Membuat fungsi dengan generics
    void cekType<T>(T data) {
        print(data.runType);
    }

    # Menggunakan fungsi dengan generics
    # Setelah nama fungsi, kemudian tipe data yang diinginkan
    void main() {
        cekType<String>('satu');
        cekType<int>(1);
    }