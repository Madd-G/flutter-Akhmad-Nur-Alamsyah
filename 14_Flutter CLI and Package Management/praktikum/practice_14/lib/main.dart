import 'package:badges/badges.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // No 1
              const Chip(
                padding: EdgeInsets.all(0),
                backgroundColor: Colors.deepPurple,
                label: Text('BADGE', style: TextStyle(color: Colors.white)),
              ),
              Badge(
                toAnimate: false,
                shape: BadgeShape.square,
                badgeColor: Colors.deepPurple,
                borderRadius: BorderRadius.circular(8),
                badgeContent:
                    const Text('BADGE', style: TextStyle(color: Colors.white)),
              ),
              const SizedBox(
                height: 40.0,
              ),
              // No 2
              BarcodeWidget(
                barcode: Barcode.code128(),
                data: 'Alterra Academy',
                height: 100,
                width: 230,
              ),
              const SizedBox(
                height: 20.0,
              ),
              BarcodeWidget(
                barcode: Barcode.code128(),
                data: 'Flutter Asik',
                height: 100,
                width: 230,
              ),
              const SizedBox(
                height: 20.0,
              ),
              BarcodeWidget(
                barcode: Barcode.code128(),
                data: 'Akhmad Nur Alamsyah',
                height: 100,
                width: 230,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
