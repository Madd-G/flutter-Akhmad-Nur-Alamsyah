# **(18) Form Picker**

## Nama: Akhmad Nur Alamsyah
&nbsp;

# **Basic Layouting**

## **Row dan Column**
Row meletakkan widget children secara horizontal, sedangkan Column meletakkan widget children secara vertikal.

## **MainAxisSize Properti**
* Menentukan seberapa banyak space menempati main axis.
* Main Axis dari Row adalah horizontal.
* Main Axis dari Column adalah vertikal.
* Properti mainAxisSize memiliki dua values, MainAxisSize.max dan MainAxisSize.min.
* MainAxisSize.max menempati semua space dari Main Axis.
* MainAxisSize.min tidak memiliki extra space, hanya untuk children nya saja.

## **MainAxisAlignment Properti**
Properti MainAxisAlignment digunakan Row dan Column untuk memposisikan children mereka di extra space yang ada.

Memiliki 6 values:
* MainAxisAlignment.start.
* MainAxisAlignment.end.
* MainAxisAlignment.center.
* MainAxisAlignment.spaceBetween.
* MainAxisAlignment.spaceEvenly.
* MainAxisAlignment.spaceAround.

## **CrossAxisAlignment Properti**
Properti CrossAxisAlignment digunakan Row dan Column untuk memposisikan children mereka pada Cross Axis. Cross Axis dari Row adalah vertikal dan Cross Axis dari Column adalah horizontal.

Memiliki 5 values:
* CrossAxisAlignment.start.
* CrossAxisAlignment.end.
* CrossAxisAlignment.center.
* CrossAxisAlignment.stretch.
* CrossAxisAlignment.baseline.

## **Flexible Widget**
Flexible widget membungkus widget lain sehingga child dari Flexible widget menjadi flexible atau resizable. Flexible widget sangat berguna untuk membuat aplikasi yang responsif dan harus berada dalam turunan parent widget Row atau Column. Perubahan ukuran ditentukan dengan properti fit dan flex.

## **Fit Properti**
Fit properti menentukan apakah Flexible widget memenuhi extra space yang tersedia di main axis nya. Fit properti menerima nilai values berupa FlexFit.loose atau FlexFit.tight. FlexFit.loose akan memiliki ukuran minimum dan FlexFit.tight akan memiliki ukuran maksimum.

## **Flex Properti**
Flex properti menentukan perbandingan ukuran dari child widgetnya. Flex properti menerima nilai values berupa integer dan membandingkan nilainya dengan flex properti lain.

## **Expanded Widget**
Expanded widget membungkus widget lain sehingga ukuran dari child Expanded widget akan dipaksa untuk memenuhi ruang yang tersedia. Expanded sangat berguna untuk membuat aplikasi yang responsif dan harus berada dalam turunan parent widget Row atau Column. Perubahan ukuran ditentukan dengan properti flex dan memiliki default value FlexFit.tight.

&nbsp;

# **Advance Form Input**

## **Interactive Widgets**
Interactive widgets merupakan interaksi antara aplikasi dan user dan mengumpulkan input dan feedback dari user. 

## **Date Picker**
Date Picker merupakan widget dimana user bisa memasukkan tanggal.

### Cara Membuat Date Picker
* Menggunakan fungsi bawaan flutter showDatePicker.
* Fungsi showDatePicker memiliki tipe data future.
* Menampilkan dialog material design date picker.
* Basic code:
    ```
    final selectDate = await showdatePicker (
        context: context,
        initialDate: currentDate,
        firstDate: DateTime(1990),
        lastDate: DateTime(currentDate.year + 5),
    );
    ```
* Menambahkan packages intl di pubspec.yaml
    ```
    dependencies:
      flutter:
        sdk: flutter
      intl: ^0.17.0
    ```
* Mempersiapkan variabel
    ```
    class _HomePageState extends State<HomePage> {
        DateTime _dueDate = DateTime.now();
        final currentDate = DateTime.now();
    ```
* Membangun UI
    ```
    widget buildDatePicker(BuildContext context) {
        return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                        const Text('Date'),
                        TextButton(
                            child: const Text('Select'),
                            onPressed: () async {
                                final selectDate = await showDatePicker(
                                    context: context,
                                    initialDate: currentDate,
                                    firstDate: DateTime(1990),
                                    lastDate: DateTime(currentDate.year + 5),
                                );
                            },
                        ),
                    ],
                ),
                Text(DateFormat('dd-MM-yyyy').format(_dueDate)),
            ],
        );
    }
    ```
* Menambahkan fungsi setState didalam onPressed
    ```
    setState(() {
        if (selectDate != null) {
            _dueDate = selectDate;
        }
    });
    ```

## **Color Picker**
Color Picker merupakan widget dimana user bisa memilih color. Penggunaan Color Picker bisa digunakan untuk berbagai macam kondisi.

### Cara Membuat Color Picker
* Menggunakan package flutter_colorpicker.
* Menambahkan package flutter_colorpicker di pubspec.yaml.
    ```
    dependencies:
      flutter:
        sdk: flutter
      flutter_colorpicker: ^1.0.3
    ```
* Mempersiapkan variable.
    ```
    Color _currentColor = Colors.orange;
    ```
* Membangun UI.
    ```
    widget buildColorPicker(BuildContext context) {
        return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                const Text('Color'),
                const SizedBox(height: 10),
                Container(
                    height: 100,
                    width: double.infinity,
                    color: _currentColor,
                ),
                const SizedBox(height: 10),
                Center(
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(_currentColor),
                        ),
                        child: const Text('Pick Color'),
                        onPressed: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                    return AlertDialog(
                                        title: const Text('Pick Your Color'),
                                        actions: [
                                            TextButton(
                                                onPressed: () {
                                                    Navigator.pop(context);
                                                },
                                                child: const Text('Save'),
                                            ),
                                        ],
                                    );
                                },
                            );
                        },
                    ),
                ),
            ],
        );
    }
    ```
* Membuat kode untuk penggunaan packages flutter_colorpicker.
    ```
    return AlertDialog(
        title: const Text('Pick Your Color'),
        content: BlockPicker(
            pickerColor: _currentColor,
            onColorChanged: (color) {
                setState(() {
                    _currentColor = color;
                });
            },
        ),
    )
    ```

## **File Picker**
Kemampuan widget untuk mengakses storage, memilih dan membuka file.

### Cara Membuat File Picker
* Menggunakan package file_picker dan open_file.
* Menambahkan package file_picker dan open_file di pubspec.yaml.
    ```
    dependencies:
      flutter:
        sdk: flutter
      file_picker: ^4.3.3
      open_file: ^3.2.1
    ```
* Membuat fungsi untuk membuka file yang telah dipilih.
    ```
    void _openFile(PlatformFile file) {
        OpenFile.open(file.path);
    }
    ```
* Membuat fungsi untuk mengexplore dan memilih file dari storage.
    ```
    void _pickFile() async {
        final result = await FilePicker.platform.pickFiles();
        if (result == null) return;
        
        // mendapatkan file dari object result
        final file = result.files.first;
        _openFile(file);
    }
    ```
* Membangun UI.
    ```
    widget buildFilePicker() {
        return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                const Text('Pick Files'),
                const SizedBox(height: 10),
                Center(
                    child: ElevatedButton(
                        child: const Text('Pick and Open File'),
                        onPressed() {
                            _pickFile();
                        },
                    ),
                ),
            ],
        );
    }
    ```
