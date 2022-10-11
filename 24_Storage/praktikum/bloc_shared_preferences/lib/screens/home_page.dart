import 'package:flutter/material.dart';
import 'package:bloc_shared_preferences/screens/register_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../cubit/login_cubit.dart';
import '../cubit/login_state.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late SharedPreferences loginData;
  String username = '';
  String email = '';

  @override
  void initState() {
    super.initState();
    initial();
  }

  void initial() async {
    loginData = await SharedPreferences.getInstance();
    setState(() {
      username = loginData.getString('username').toString();
      email = loginData.getString('email').toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: false,
      ),
      body: BlocBuilder<LoginCubit, LoginState>(
        builder: (context, state) {
          if (state is LoginLoaded) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Hello, $username',
                    style: const TextStyle(fontSize: 24),
                  ),
                  Text(
                    email,
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
              ),
            );
          } else if (state is LoginLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          return Center(
            child: ElevatedButton(
              onPressed: () {
                loginData.remove('login'); // nanti hapus
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                        builder: (context) => const RegisterPage()),
                    (route) => false);
              },
              child: const Text('Register'),
            ),
          );
        },
      ),
    );
  }
}
