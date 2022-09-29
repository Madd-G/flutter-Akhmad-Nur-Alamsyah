import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:intl/intl.dart';
import 'package:practice_18/new_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  FilePickerResult? result;
  PlatformFile? pickedFile;
  File? fileToDisplay;
  TextEditingController dateInput = TextEditingController();
  Color _currentColor = Colors.black;
  TextEditingController textarea = TextEditingController();

  void pickFile() async {
    try {
      result = await FilePicker.platform.pickFiles();
      if (result != null) {
        pickedFile = result!.files.first;
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  @override
  void initState() {
    dateInput.text = '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Post'),
        backgroundColor: const Color(0xff1554F6),
      ),
      drawer: const Drawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Cover',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xff909090))),
                    onPressed: () {
                      pickFile();
                    },
                    child: const Text('Pilih File')),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                'Publish At',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              TextField(
                controller: dateInput,
                decoration: const InputDecoration(
                    hintText: 'dd/mm/yyyy',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)))),
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1950),
                      lastDate: DateTime(2100));

                  if (pickedDate != null) {
                    if (kDebugMode) {
                      print(pickedDate);
                    }
                    String formattedDate =
                        DateFormat('dd/MM/yyyy').format(pickedDate);
                    if (kDebugMode) {
                      print(formattedDate);
                    }
                    setState(() {
                      dateInput.text = formattedDate;
                    });
                  } else {}
                },
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                'Color Theme',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              TextField(
                decoration: const InputDecoration(
                  hintText: 'Pick a color',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('Pick Color'),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('Pick')),
                            BlockPicker(
                                pickerColor: _currentColor,
                                onColorChanged: (color) {
                                  setState(() {
                                    _currentColor = color;
                                  });
                                })
                          ],
                        );
                      });
                },
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                'Caption',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8.0),
                    ),
                  ),
                ),
                controller: textarea,
                keyboardType: TextInputType.multiline,
                maxLines: 9,
              ),
              const SizedBox(
                height: 25.0,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NewScreen(
                                  pickedFile: pickedFile,
                                  dateInput: dateInput.text,
                                  currentColor: _currentColor,
                                  textArea: textarea.text,
                                )),
                        (route) => false);
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xff1554F6))),
                  child: const Text('Simpan'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
