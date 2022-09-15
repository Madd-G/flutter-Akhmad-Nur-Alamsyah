import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:practice_12/widget/counter.dart';
import 'controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Controller controller = Get.put<Controller>(Controller());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Widget'),
      ),
      body: Center(
        child: Counter(controller: controller),
      ),
    );
  }
}
