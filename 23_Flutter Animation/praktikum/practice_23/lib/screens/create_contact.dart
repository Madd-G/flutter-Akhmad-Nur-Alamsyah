import 'package:flutter/material.dart';
import '../model/users.dart';
import 'home_page.dart';

class CreateContact extends StatefulWidget {
  const CreateContact({Key? key}) : super(key: key);

  @override
  State<CreateContact> createState() => _CreateContactState();
}

class _CreateContactState extends State<CreateContact> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController username = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();

  @override
  void dispose() {
    username.dispose();
    phoneNumber.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Contact'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: username,
                decoration: const InputDecoration(
                    filled: true, hintText: 'Name', labelText: 'Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Add Name Properly';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextFormField(
                controller: phoneNumber,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    filled: true,
                    hintText: 'Phone number',
                    labelText: 'Phone number'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Add Phone Number Properly';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 7.0,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      users.add(
                        User(
                          name: username.text,
                          number: int.parse(phoneNumber.text),
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Added Contact')),
                      );
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()),
                          (route) => false);
                    }
                  },
                  child: const Text('CREATE CONTACT'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
