import 'package:flutter/material.dart';
import 'package:practice_15/grid_view_screen.dart';
import 'package:practice_15/list_view_screen.dart';

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
      home: GridViewScreen()
    );
  }
}
