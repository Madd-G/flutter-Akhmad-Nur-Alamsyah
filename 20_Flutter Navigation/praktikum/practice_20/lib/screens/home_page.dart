import 'package:flutter/material.dart';
import 'package:practice_20/screens/add_contact.dart';

import '../model/users.dart';
import '../widgets/button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
      ),
      body: Stack(children: [
        ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: user.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 12.0, 8.0, 8.0),
              child: ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(50.0),
                  child: Container(
                    height: 50,
                    width: 50,
                    color: Colors.blue,
                    child: Center(
                      child: Text(
                        user[index].name[0],
                        style:
                            const TextStyle(color: Colors.white, fontSize: 20),
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
                      user[index].number.toString(),
                      style: const TextStyle(color: Colors.black54),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
        Positioned(
          bottom: 10.0,
          right: 10,
          child: Column(
            children: [
              Button(
                text: 'dengan named route',
                tap: () => Navigator.pushNamed(context, 'addContact'),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Button(
                text: 'tanpa named route',
                tap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AddContact())),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
