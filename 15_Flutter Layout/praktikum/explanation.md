# **(15) Flutter Layout (Practical Explanation)**

## Nama: Akhmad Nur Alamsyah
&nbsp;

# No 1

## Model
<img src='screenshot/model.png' height=500>

Model atau data yang digunakan pada ListView. Class Users memiliki attribut id, profileText, name, dan number. Dan berisi list of Users bernama user. 

<img src='screenshot/list-view.png' height=400>

&nbsp;

## ListView Code
Menggunakan ListView.builder dengan scrollDirection vertikal dan berjumlah sejumlah banyaknya data pada model. Kemudian terdapat itemBuilder yang akan membuat ListTile sejumlah jumlah data yang tersedia dan menampilkan datanya pada leading (sebelum title), dan title (tengah).

## Hasil:

<img src='screenshot/list-view-screen.png' height=400>

&nbsp;

# No 2

## GridView Code

<img src='screenshot/grid-view.png' height=400>

Menggunakan GridView.builder dengan gridDelegate SliverGridDelegateWithFixedCrossAxisCount dengan jumlah crossAxisCount (row) berjumlah 4, jumlah item 32, dan juga membuat itemBuilder yang akan membuat widget didalamnya sejumlah banyak item.
&nbsp;

## Hasil:
<img src='screenshot/grid-view-screen.png' height=400>
