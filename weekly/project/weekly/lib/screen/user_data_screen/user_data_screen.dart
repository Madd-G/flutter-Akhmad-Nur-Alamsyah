import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../home_screen/cubit/contact_cubit.dart';
import '../home_screen/cubit/contact_state.dart';

class UserDataScreen extends StatefulWidget {
  const UserDataScreen({Key? key}) : super(key: key);

  @override
  State<UserDataScreen> createState() => _UserDataScreenState();
}

class _UserDataScreenState extends State<UserDataScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data User'),
      ),
      body: BlocBuilder<ContactCubit, ContactState>(
        builder: (context, state) {
          if (state is ContactLoaded) {
            return ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: state.user.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 12.0, 8.0, 0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.brown[300],
                        borderRadius: const BorderRadius.all(Radius.circular(5.0))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Text(
                                'Nama : ',
                                style: TextStyle(fontWeight: FontWeight.w700),
                              ),
                              Text(state.user[index].name),
                            ],
                          ),
                          Row(
                            children: [
                              const Text(
                                'Email : ',
                                style: TextStyle(fontWeight: FontWeight.w700),
                              ),
                              Text(
                                state.user[index].email,
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Pesan: ',
                                style: TextStyle(fontWeight: FontWeight.w700),
                              ),
                              Flexible(child: Text(state.user[index].message, overflow: TextOverflow.visible,)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          } else if (state is ContactLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.group_outlined),
                Text('There is no user data'),
              ],
            ),
          );
        },
      ),
    );
  }
}
