import 'package:flutter/material.dart';
import 'package:practice_21/screens/create_contact.dart';
import 'package:provider/provider.dart';

import '../model/users.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
      ),
      body: (users.isEmpty)
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.group_outlined),
                  Text('Your contact is empty'),
                ],
              ),
            )
          : ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: users.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 12.0, 8.0, 0),
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Color(0xffD2ECD6),
                        borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    child: ListTile(
                      leading: const Icon(Icons.account_circle_rounded),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(users[index].name),
                          Text(
                            users[index].number.toString(),
                            style: const TextStyle(color: Colors.black54),
                          ),
                        ],
                      ),
                      trailing: Consumer<User>(
                        builder: (BuildContext context, value, Widget? child) {
                          return GestureDetector(
                              onTap: () {
                                users.removeAt(index);
                              },
                              child: const Icon(Icons.delete));
                        },
                      ),
                    ),
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const AddContact()));
        },
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
