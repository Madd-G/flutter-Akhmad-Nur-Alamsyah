import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/contact_cubit.dart';
import '../cubit/contact_state.dart';
import 'create_contact.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
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
                    decoration: const BoxDecoration(
                        color: Color(0xffD2ECD6),
                        borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    child: ListTile(
                      leading: const Icon(Icons.account_circle_rounded),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(state.user[index].name),
                          Text(
                            state.user[index].number.toString(),
                            style: const TextStyle(color: Colors.black54),
                          ),
                        ],
                      ),
                      trailing: GestureDetector(
                          onTap: () {
                            context
                                .read<ContactCubit>()
                                .removeUser(index: index);
                          },
                          child: const Icon(Icons.delete)),
                    ),
                  ),
                );
              },
            );
          }
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.group_outlined),
                Text('Your contact is empty'),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const AddContact()));
        },
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
