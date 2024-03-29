import 'package:flutter/material.dart';
import 'package:practice_20/screens/add_contact.dart';
import 'package:practice_20/screens/home_page.dart';

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
      initialRoute: '/',
      routes: {
        '/': (_) => const HomePage(),
        'addContact': (_) => const AddContact(),
      },
      // home: const HomePage(),
    );
  }
}
