import 'package:contact_bloc/screens/temporary_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/contact_cubit.dart';
import '../cubit/contact_state.dart';
import 'home_page.dart';

class AddContact extends StatefulWidget {
  const AddContact({Key? key}) : super(key: key);

  @override
  State<AddContact> createState() => _AddContactState();
}

class _AddContactState extends State<AddContact> {
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
        child: BlocBuilder<ContactCubit, ContactState>(
          builder: (context, state) {
            print('STATE : $state');
            return Form(
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
                          context.read<ContactCubit>().contactUser(
                                username: username.text,
                                number: int.parse(phoneNumber.text),
                              );
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TemporaryScreen()),
                              (route) => false);
                        }
                      },
                      child: const Text('CREATE CONTACT'),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
