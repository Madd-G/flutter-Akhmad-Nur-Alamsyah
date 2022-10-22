import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:practice_28/screens/second_page.dart';

void main() {
  testWidgets("Judul Halaman 'Second Page'", (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: SecondPage(),
    ));
    expect(find.text('Second Page'), findsOneWidget);
  });
}