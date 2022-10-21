import 'package:flutter/material.dart';

class AdText extends StatelessWidget {
  const AdText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(27.0),
        child: Column(
          children: [
            Stack(
              children: [
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  'STATIONERYQ',
                  style: TextStyle(
                    fontSize: 30,
                    letterSpacing: 5,
                    fontWeight: FontWeight.bold,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 10
                      ..color = Colors.brown,
                  ),
                ),
                const Text(
                  'STATIONERYQ',
                  style: TextStyle(
                    fontSize: 30,
                    letterSpacing: 5,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Stack(
              children: [
                // Implement the stroke
                Text(
                  'STATIONERYQ merupakan penyedia perlengkapan sekolah berkualitas dan terlengkap di Indonesia',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    letterSpacing: 5,
                    fontWeight: FontWeight.bold,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 5
                      ..color = Colors.brown,
                  ),
                ),
                // The text inside
                const Text(
                  'STATIONERYQ merupakan penyedia perlengkapan sekolah berkualitas dan terlengkap di Indonesia',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    letterSpacing: 5,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
