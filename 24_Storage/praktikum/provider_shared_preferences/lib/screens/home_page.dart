import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_shared_preferences/screens/register_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../model/user.dart';
import '../provider/login_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late String nameProvider = Provider.of<LoginProvider>(context).toString();
  late String emailProvider = Provider.of<LoginProvider>(context).toString();

  late SharedPreferences loginData;

  @override
  void initState() {
    super.initState();
    initial();
  }

  void initial() async {
    loginData = await SharedPreferences.getInstance();
    setState(() {
      nameProvider = loginData.getString('username').toString();
      emailProvider = loginData.getString('email').toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    User usr = User(loginData.getString('username'), loginData.getString('email'));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: false,
      ),
      body: Center(
        child: Consumer<LoginProvider>(
          builder: (context, LoginProvider data, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  usr.name.toString(),
                  style: const TextStyle(fontSize: 24),
                ),
                Text(
                  usr.email.toString(),
                  style: const TextStyle(fontSize: 24),
                ),
                ElevatedButton(
                    onPressed: () {
                      loginData.setBool('login', true);
                      loginData.remove('login');
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterPage()));
                    },
                    child: const Text('Sign Out'))
              ],
            );
          },
        ),
      ),
    );
  }
}
