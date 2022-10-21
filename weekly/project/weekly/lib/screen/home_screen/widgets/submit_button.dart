import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/contact_cubit.dart';
import 'MessageDialog.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    Key? key,
    required GlobalKey<FormState> formKey,
    required TextEditingController usernameController,
    required TextEditingController emailController,
    required TextEditingController messageController,
    required this.isVisible,
  })  : _formKey = formKey,
        _usernameController = usernameController,
        _emailController = emailController,
        _messageController = messageController,
        super(key: key);

  final GlobalKey<FormState> _formKey;
  final TextEditingController _usernameController;
  final TextEditingController _emailController;
  final TextEditingController _messageController;
  final ValueNotifier<bool> isVisible;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          context.read<ContactCubit>().contactUser(
              username: _usernameController.text,
              email: _emailController.text,
              message: _messageController.text);
          showDialog(
            context: context,
            builder: (context) => MessageDialog(
                usernameController: _usernameController,
                emailController: _emailController,
                messageController: _messageController),
          );
          isVisible.value = true;
        }
      },
      child: const Text('Kirim'),
    );
  }
}
