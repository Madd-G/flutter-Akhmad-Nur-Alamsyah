import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/model_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ModelController c = Get.put<ModelController>(
    ModelController(),
  );
  TextEditingController nameController = TextEditingController();
  TextEditingController jobController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: nameController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  fillColor: Colors.grey[300],
                  filled: true),
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextField(
              controller: jobController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  fillColor: Colors.grey[300],
                  filled: true),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    onPressed: () {
                      c.fetchUsers();
                    },
                    child: const Text('GET')),
                ElevatedButton(
                    onPressed: () {
                      c.createUser(
                          name: nameController.text, job: jobController.text);
                    },
                    child: const Text('POST')),
                ElevatedButton(
                    onPressed: () {
                      c.updateUser(
                          name: nameController.text, job: jobController.text);
                    },
                    child: const Text('PUT')),
                ElevatedButton(
                    onPressed: () {
                      c.deleteUser();
                    },
                    child: const Text('DELETE')),
              ],
            ),
            const SizedBox(
              height: 15.0,
            ),
            const Text(
              'Result',
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            Obx(
              () => (c.hasil.isEmpty)
                  ? const Text('-')
                  : Text(c.hasil.value.toString()),
            ),
          ],
        ),
      ),
    );
  }
}
