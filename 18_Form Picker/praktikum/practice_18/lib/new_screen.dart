import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class NewScreen extends StatelessWidget {
  const NewScreen({
    Key? key,
    required this.pickedFile,
    required this.dateInput,
    required this.currentColor,
    required this.textArea,
  }) : super(key: key);
  final PlatformFile? pickedFile;
  final String dateInput;
  final Color currentColor;
  final String textArea;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Preview Post'),
        backgroundColor: const Color(0xff1554F6),
      ),
      drawer: const Drawer(),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            SizedBox(
              height: 200,
              width: double.infinity,
              child: Image.file(
                File(pickedFile!.path.toString())!,
                fit: BoxFit.contain,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Published: $dateInput',
                  style: const TextStyle(color: Colors.grey, fontSize: 15.0),
                ),
                Row(
                  children: [
                    const Text('Color: ',
                        style: TextStyle(color: Colors.grey, fontSize: 15.0)),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                          color: currentColor),
                      height: 15,
                      width: 15,
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 25.0,
            ),
            Text(
              textArea,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 15.0),
            )
          ],
        ),
      ),
    );
  }
}
