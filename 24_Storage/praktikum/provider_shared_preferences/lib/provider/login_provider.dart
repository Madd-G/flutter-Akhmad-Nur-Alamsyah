import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class LoginProvider extends ChangeNotifier {
  String _name = '';
  String _email = '';

  String get name => _name;

  String get email => _email;

  // set name(String value) {
  //   _name = value;
  //   notifyListeners();
  // }

  // set email(String value) {
  //   _email = value;
  //   notifyListeners();
  // }
}
