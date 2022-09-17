# **(13) Platform Widget (Practical Explanation)**

## Nama: Akhmad Nur Alamsyah
&nbsp;


# **Project Structure**
<img src='screenshot/project-structure.png' width=300>

## Folder assets
Pada folder assets terdapat folder lagi bernama images yang berisi 3 gambar.

## Folder lib
Pada folder lib terdapat 2 folder lain yaitu model dan screen yang akan dijelaskan selanjutnya.

## Folder model
Didalam folder model terdapat satu file dart bernama model yang berisi data user yang akan digunakan pada aplikasi.

<img src='screenshot/model.png' height=300>

&nbsp;

# **Cupertino**

## Folder screen 
Pada folder screen terdapat dua folder bernama cupertino dan material yang didalamnya terdapat beberapa file lagi.

## Folder cupertino
Pada folder cupertino terdapat:
* Folder screen 
    #### Berisi file dart bernama cupertino_screen dan class CupertinoScreen akan di-return oleh fungsi MyApp pada file main.dart dan akan menampilkan halaman:
    <img src='screenshot/cupertino-home.png' width = 200>
* Folder widgets
    #### Berisi berbagai custom widget yang digunakan pada aplikasi seperti:
    * ContactCarousel

        <img src='screenshot/contact-carousel.png' width=200>
    
    * Notifications

        <img src='screenshot/notification.png'>

    * SearchTextField

        <img src='screenshot/search-text-field.png' width=300>

    * SegmentedControl dan TextBar

        <img src='screenshot/segmented-control.png' width=300>

## cupertino_importer.dart
Berisi package dan file-file yang dibutuhkan oleh Cupertino App sehingga tiap file hanya perlu meng-import file cupertini_importer.dart.

<img src='screenshot/cupertino-importer.png' width=300>

&nbsp;

# **Material**

* Folder screen 
    #### Berisi file dart bernama material_screen dan class MaterialScreen akan di-return oleh fungsi MyApp pada file main.dart dan akan menampilkan halaman:

## Folder material
Pada folder material terdapat:
* Folder screen 
    #### Berisi file dart bernama material_screen dan class MaterialScreen akan di-return oleh fungsi MyApp pada file main.dart dan akan menampilkan halaman:
    <img src='screenshot/material-screen.png' width=200>

* Folder widgets
    #### Berisi berbagai custom widget yang digunakan pada aplikasi seperti:
    * ContactCarousel

        <img src='screenshot/contact-carousel-material.png' width=200>
    
    * DrawerWidget

        <img src='screenshot/drawer-widget.png' width=200>

    * ListTileWidget

        <img src='screenshot/list-tile.png' width=300>


## material_importer.dart
Berisi package dan file-file yang dibutuhkan oleh Cupertino App sehingga tiap file hanya perlu meng-import file cupertini_importer.dart.

<img src='screenshot/material-importer.png' width=300>

## Hasil 
<img src='screenshot/hasil.png' width=700>
