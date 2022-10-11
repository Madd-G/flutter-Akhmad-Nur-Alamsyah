import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_shared_preferences/provider/login_provider.dart';
import 'package:provider_shared_preferences/screens/register_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LoginProvider>(
      create: (context) => LoginProvider(),
      child: const MaterialApp(
        home: RegisterPage(),
      ),
    );
  }
}
