import 'package:flutter/material.dart';
import 'package:practice_12/controller.dart';
import 'package:get/get.dart';

class Counter extends StatelessWidget {
  const Counter({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final Controller controller;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Text(
        '${controller.counter()[0].value.toString()}:${controller.counter()[1].value.toString()}:${controller.counter()[2].value.toString()}',
        style: Theme.of(context).textTheme.headline3,
      ),
    );
  }
}
