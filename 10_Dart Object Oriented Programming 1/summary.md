# (10) Dart Object Oriented Programming 1

## Nama: Akhmad Nur Alamsyah

## Perkenalan Object Oriented Programming (OOP)

<code>Pada OOP program disusun dalam bentuk abstraksi objek. Data dan proses diletakkan pada abstraksi tersebut.</code>

### Keuntungan OOP
* Mudah di-*troubleshoot*.
* Mudah digunakan ulang.

### Komponen OOP

#### **Class**
Class merupakan abstraksi dari sebuah benda (object). Class memiliki ciri-ciri yang disebut *property*. Class memiliki sifat dan kemampuan yang disebut method.

##### Membuat class
Untuk membuat class menggunakan kata kunci <code>class</code>. Class memiliki nama. Detail class diletakkan dalam kurawal.
    
    Class Animal {
        // property
        // method
    }
    
##### Membuat object
Object merupakan bentuk sebenarnya dari class. Disebut juga *instance of class*. Object diperlukan seperti data.
    
    void main() {
        Animal a1 = Animal();
        Animal a2 = Animal();
    }
    
#### **Property**
Property merupakan ciri-ciri atau hal-hal yag dimiliki oleh class. Property memiliki sifat seperti variabel.

##### Membuat property

Seperti variabel tetapi terletak dalam sebuah class.
    
    Class Animal {
        var eye = 2;
        var foot = 4;
    }

##### Mengakses property
Seperti menggunakan variabel tetapi melalui sebuah object.

    void main() {
        Animal a1 = Animal();
        a1.eye;
    }

#### **Method**
Method merupakan aktivitas apa yang mampu dilakukan oleh class. Method memiliki sifat seperti fungsi.

##### Membuat method
Seperti fungsi tetapi terletak dalam sebuah class.

    class Animal {
        void say() {
            print('');
        }
    }

##### Menjalankan method
Seperti menggunakan fungsi tetapi melalui sebuah objek.
    
    void main() {
        Animal a1 = Animal();
        a1.say();
    }


