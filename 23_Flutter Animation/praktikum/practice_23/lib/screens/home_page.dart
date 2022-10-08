import 'package:flutter/material.dart';
import '../model/users.dart';
import 'create_contact.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isBig = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Stack(
        children: [
          (users.isEmpty)
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0))),
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
                          trailing: GestureDetector(
                              onTap: () {
                                setState(() {
                                  users.removeAt(index);
                                });
                              },
                              child: const Icon(Icons.delete)),
                        ),
                      ),
                    );
                  },
                ),
          Center(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isBig = !isBig;
                });
              },
              child: AnimatedContainer(
                  width: isBig ? 800 : 30,
                  height: isBig ? 500 : 30,
                  duration: const Duration(milliseconds: 300),
                  child: Image.asset('assets/images/image.jpeg')),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(_createRoute());
        },
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => CreateContact(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
