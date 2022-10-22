import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:practice_28/screens/home_page.dart';

void main() {
  testWidgets("Judul Halaman 'Home Page'",
          (WidgetTester tester) async {
        await tester.pumpWidget(const MaterialApp(
          home: HomePage(),
        ));
        expect(find.text('Home Page'), findsOneWidget);
      });

  testWidgets("Terdapat teks 'Hallo'", (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: HomePage(),
    ));
    expect(find.text('Hallo'), findsOneWidget);
  });
  testWidgets("Terdapat floating action button", (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: HomePage(),
    ));
    expect(
        find.widgetWithIcon(FloatingActionButton, Icons.add), findsOneWidget);
  });


}
