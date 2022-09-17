import 'package:flutter/material.dart';

// ignore: unused_import
import 'package:practice_13/screen/cupertino/screen/cupertino_screen.dart';
import 'package:practice_13/screen/material/screen/material_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialScreen();
  }
}
