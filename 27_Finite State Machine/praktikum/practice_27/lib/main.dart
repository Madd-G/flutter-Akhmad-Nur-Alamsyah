import 'package:flutter/material.dart';
import 'package:practice_27/view_model/foods_provider.dart';
import 'package:practice_27/screen/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FoodProvider(),
      child: const MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
