import 'package:flutter/cupertino.dart';

class User extends ChangeNotifier {
  String name;
  int number;

  User({
    required this.name,
    required this.number,
  });

  void adding(String name, int number) {
    users.add(User(name: name, number: number));
    notifyListeners();
  }
}

List<User> users = [];
