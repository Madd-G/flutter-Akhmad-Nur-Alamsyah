import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/food.dart';
import '../view_model/foods_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Food> _foods = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () async {
                  final users = await context.read<FoodProvider>().fetchData();
                  setState(() {
                    _foods = users;
                  });
                },
                child: const Text('Daftar Makanan')),
            const SizedBox(
              height: 18.0,
            ),
            Consumer<FoodProvider>(builder: (context, value, child) {
              return (_foods.isEmpty)
                  ? const Text('Tidak ada makanan')
                  : SizedBox(
                      height: 70,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              SizedBox(
                                width: 20.0,
                                child: Text('ID'),
                              ),
                              SizedBox(width: 100.0, child: Text('NAME')),
                            ],
                          ),
                          SizedBox(
                            height: 50,
                            child: ListView.builder(
                                itemCount: _foods.length,
                                itemBuilder: (context, index) {
                                  final user = _foods[index];
                                  return Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: 20.0,
                                        child: Text(user.id.toString()),
                                      ),
                                      SizedBox(
                                          width: 100.0, child: Text(user.name)),
                                    ],
                                  );
                                }),
                          ),
                        ],
                      ),
                    );
            })
          ],
        ),
      ),
    );
  }
}
