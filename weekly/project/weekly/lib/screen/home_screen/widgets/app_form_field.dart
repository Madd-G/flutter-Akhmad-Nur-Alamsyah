import 'package:flutter/material.dart';

class AppFormField extends StatelessWidget {
  const AppFormField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.filled,
    required this.alert,
  });

  final TextEditingController controller;
  final String hintText;
  final bool filled;
  final String alert;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        filled: filled,
        hintText: hintText,
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return alert;
        }
        return null;
      },
    );
  }
}