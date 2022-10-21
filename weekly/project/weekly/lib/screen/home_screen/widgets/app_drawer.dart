import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 45.0,
              child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'About US',
                    style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
                  )),
            ),
            const SizedBox(
              height: 10.0,
            ),
            SizedBox(
              width: double.infinity,
              height: 45.0,
              child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Contact US',
                    style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
                  )),
            ),
            const SizedBox(
              height: 10.0,
            ),
            SizedBox(
              width: double.infinity,
              height: 45.0,
              child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Login',
                    style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
