import 'package:flutter/material.dart';
import 'package:practice_15/model.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('JSON ListView in Flutter'),
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: user.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 12.0, 8.0, 8.0),
            child: ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.green,
                  child: Center(
                    child: Text(
                      user[index].profileText,
                      style: const TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(user[index].name),
                  Text(
                    user[index].number,
                    style: const TextStyle(color: Colors.black54),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
