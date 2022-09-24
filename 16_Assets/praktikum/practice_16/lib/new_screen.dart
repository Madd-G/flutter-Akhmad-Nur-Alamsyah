import 'package:flutter/material.dart';

import 'model.dart';

class NewScreen extends StatelessWidget {
  const NewScreen({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.network(
        image[index].url,
        fit: BoxFit.fitHeight,
        height: double.infinity,
        width: double.infinity,
      ),
    );
  }
}
