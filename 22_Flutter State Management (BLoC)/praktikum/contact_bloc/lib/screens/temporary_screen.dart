import 'package:contact_bloc/screens/home_page.dart';
import 'package:flutter/material.dart';

import 'package:animated_text_kit/animated_text_kit.dart';

class TemporaryScreen extends StatefulWidget {
  static const String routeName = 'welcome_screen';

  const TemporaryScreen({super.key});

  @override
  _TemporaryScreenState createState() => _TemporaryScreenState();
}

class _TemporaryScreenState extends State<TemporaryScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(duration: const Duration(seconds: 5), vsync: this);
    animation = ColorTween(begin: Colors.blueGrey, end: Colors.white)
        .animate(controller);
    controller.forward();
    controller.addListener(() {
      setState(() {});
    });

    Future.delayed(const Duration(seconds: 5), () {
      Navigator.push(context, MaterialPageRoute(builder: (_) => HomePage()));
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Center(
          child: TypewriterAnimatedTextKit(
            text: const ['Menambahkan Kontak'],
            textStyle: const TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
    );
  }
}
