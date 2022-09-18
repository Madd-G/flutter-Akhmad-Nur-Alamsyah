# **(15) Flutter Layout**

## Nama: Akhmad Nur Alamsyah
&nbsp;

# Layout merupakan widget yang digunakan untuk mengatur widget di dalamnya.
# Single-child Layout
* Container

    Container membuat sebuah box dan membungkus widget lain. Box memiliki margin, padding, dan border
    ```
    Container(
        child: Text(teks),
    );
    ```

* Center

    Center membungkus widget lain, memenuhi lebar dan tinggi di luarnya, dan meletakkan widget berada di bagian tengah.
    ```
    Center(
        child: Text(teks),
    );
    ```

* SizedBox

    SizedBox membungkus widget lain, dan box dapat diatur lebar dan tingginya. SizedBox lebih sederhana dari Container.
    ```
    SizedBox(
        width: 100,
        height: 150,
        child: Text(teks),
    );
    ```
&nbsp;

# Multi-child Layout
* Column

    Column mengatur widgets secara vertikal.
    ```
    Column(
        children: const [
            Text(teks),
            SizedBox(
                width: 100,
                height: 150,
                child: Text(teks),
            ),
        ],
    );
    ```

* Row

    Row mengatur widgets secara horizontal.
    ```
    Row(
        children: const [
            Text(teks),
            SizedBox(
                width: 100,
                height: 150,
                child: Text(teks),
            ),
        ],
    );
    ```

* ListView

    ListView mengatur widgets dalam bentuk list dan memiliki kemampuan scroll.
    ```
    ListView(
        children: [
            Container(
                margin: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(border: Border.all()),
                child: const Text('H'),
            ),
        ],
    );
    ```

* GridView

    GridView mengatur widgets dalam bentuk galeri.
    ```
    GridView.count(
        crossAxisCount: angka,
        children: [],
    );
    ```
   