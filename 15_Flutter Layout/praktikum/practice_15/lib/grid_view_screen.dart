import 'package:flutter/material.dart';

class GridViewScreen extends StatelessWidget {
  const GridViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
        ),
        itemCount: 32,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100.0),
              child: Container(
                color: Colors.blue,
                child: const Center(
                  child: Icon(
                    Icons.ac_unit,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
