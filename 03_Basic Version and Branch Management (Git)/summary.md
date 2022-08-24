# (03) Basic Version and Branch Management (Git)

## Data Diri:
### Nama: Akhmad Nur Alamsyah
### No urut: 

<br>
<code> Git adalah salah satu <i>version control system</i> terdistribusi populer yang digunakan <i>developer</i> untuk mengembangkan <i>software<i> secara bersama-sama </code>

&nbsp;

## ***Setting Up***
### **Git config**
Git config digunakan untuk mengkonfigurasi git ketika baru menginstal git di komputer
```
git config --global user.name "your name"
git config --global user.email "your email"
```

### **Git init**
Git init digunakan ketika pertama kali membuat projek/repository (selain *clone*). Git init ini digunakan untuk menginisialisasi repositori dan akan membuat sebuah *hidden file* .git yang akan menyimpan semua objek dan referensi yang digunakan sebagai bagian riwayat projek.
```
git init
git remote add <remote_name> <remote repo url>
git push -u <remote_name> <local branch name>
```
### **Git clone**
Git clone digunakan untuk meng-*copy* *repository* yang sudah ada ke lokasi lain.
```
git clone <url>
```

## ***Saving Changes***
### **Git status**
Menunjukkan status *working directory* dan *staging area*. Dengan git status memungkinkan untuk melihat ile yang telah mengalami perubahan, dan file mana yang tidak terlacak oleh git.
```
git status
```
### **Git add**
Git add digunakan untuk menambahkan perubahan pada *working directory* ke dalam *staging directory*. Bisa file atau *directory* tertentu atau keseluruhan *directory*.
```
git add .
git add <directory>
```
### **Git commit**
Git commit digunakan untuk menyiman perubahan ke repositori lokal.
```
git commit -m "message"
```

## ***Inspecting Repository***
### **Git checkout**
Git checkout digunakan untuk berpindah ke *branch* lain yang terdapat pada *repository*.
```
git checkout <branch name>
```
### **Git reset**
Git reset digunakan untuk melakukan *undo* atau mengembalikan perbuahan lokal pada *repository*.  Terdapat tiga jenis reset yaitu *soft, mixed* dan *hard*.
```
git reset HEAD --soft
git reset HEAD --mixed
git reset HEAD --hard
```

## ***Synching***
### **Git push**
Git push digunakan untuk meng-*upload* file *commit* di *local repository* ke *remote repository*.
```
git push <repo name> <branch name>
```
### **Git fetch**
git fetch digunakan untuk men-*download* konten dari *remote repository*.
```
git fetch
```
### **Git pull**
Git pull digunakan untuk meng-*update* versi *local repository* berdasarkan *remote repository*.
```
git pull <repo name> <branch name>
```

## ***Branching***
### **Git branch**
Git branch digunakan untuk membuat, melihat, mengubah, dan menghapus *branch* git.
```
git branch --list
git branch <branch>
git branch -D <branch> # menghapus branch
```
### **Git merge**
Git merge mengambil dan menggabungkan konten dari *branch* sumber dan mengintegrasikannya dengan *branch* target.
```
git merge <source branch>
git merge <source branch> --no-ff #no fast forward
```

## **Cara membuat branch untuk memudahkan berkolaborasi**
1. Buat branch master/main dari branch development dan tidak terdistribusi
2. Hindari perubahan langsung ke branch development
3. Merge branch feature hanya ke branch development
4. Merge branch development ke branch master/main jika development selesai

&nbsp;
#### Contoh penggunaan git yang baik
<img src="screenshot summary/final.png">