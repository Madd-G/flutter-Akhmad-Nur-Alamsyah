Nama: Akhmad Nur Alamsyah

## Langkah praktikum

1. Buat repositori baru bernama 'learn git'
```
    echo "# learn-git" >> README.md
    git init
    git add README.md
    git commit -m "first commit"
    git branch -M main
    git remote add origin https://github.com/Madd-G/learn-git.git
    git push -u origin main
```
<img src="screenshot/new-repo.png" height=200 width=300>
<img src="screenshot/net-new-repo.png" height=200 width 300>

2. Modifikasi README.md pada main
```
    git add .
    git commit -m "modified branch 'main'"
    git push origin main
```

<img src="screenshot/main-modified.png">
<img src="screenshot/net-main-modified.png">

3. Buat branch baru bernama development dan ubah README.md
```
    git checkout -b development
    git add .
    git commit -m "added branch 'development'"
    git push origin development
```
<img src="screenshot/new-development.png">
<img src="screenshot/net-new-development.png">

4. Buat branch baru bernama featureA dan ubah README.md
```
    git checkout -b featureA
    git add .
    git commit -m "added branch 'featureA'"
    git push origin featureA
```

<img src="screenshot/new-featureA.png">
<img src="screenshot/net-new-featureA.png">

4. Buat branch baru bernama featureB dan ubah README.md
```
    git checkout -b featureA
    git add .
    git commit -m "added branch 'featureA'"
    git push origin featureA
```
<img src="screenshot/new-featureB.png">
<img src="screenshot/net-new-featureB.png">

<img src="screenshot/new-featureA.png">
<img src="screenshot/net-new-featureA.png">

6. Merge development dengan featureA dengan cara non fast forward
```
    git merge featureA --no-ff
```
<img src="screenshot/net-merge-featureA-into-development.png">

7. Merge development dengan featureB dengan cara non fast forward dan terjadi konflik, diselesaikan dengan cara accept both (bisa juga recent atau incoming changes)
```
    git merge featureB --no-ff
```
<img src="screenshot/conflict.png">
<img src="screenshot/net-merge-featureB-into-development.png"> <br>

8. Melakukan git stash
```
    git stash
    code/file yang belum di add dan commit akan hilang
    edit code
    git add .
    git commit -m "apply stash"
    git push origin development
    git stash apply
```
maka file/code yang hilang akan kembali muncul, akan tetapi terkadang menyebabkan conflict

<img src="screenshot/stash.png"> <br>

9. Setelah projek selesai, maka melakukan pull dari branch development ke dalam main. (selesai)
```
    git pull origin development
```

#### Karena beberapa kali ada perubahan dalam tiap branch maka menjadi panjang seperti berikut.
<img src="screenshot/net-pull-development-into-main.png">

<img src="screenshot/final.png">