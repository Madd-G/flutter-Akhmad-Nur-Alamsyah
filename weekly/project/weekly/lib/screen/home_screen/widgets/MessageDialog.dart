import 'package:flutter/material.dart';

class MessageDialog extends StatelessWidget {
  const MessageDialog({
    Key? key,
    required TextEditingController usernameController,
    required TextEditingController emailController,
    required TextEditingController messageController,
  }) : _usernameController = usernameController, _emailController = emailController, _messageController = messageController, super(key: key);

  final TextEditingController _usernameController;
  final TextEditingController _emailController;
  final TextEditingController _messageController;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Expanded(
        child: SizedBox(
          height: 200.0,
          child: Padding(
            padding:
            const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      'Nama : ',
                      style: TextStyle(
                          fontWeight:
                          FontWeight
                              .w700),
                    ),
                    Text(_usernameController
                        .text),
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      'Email : ',
                      style: TextStyle(
                          fontWeight:
                          FontWeight
                              .w700),
                    ),
                    Text(
                      _emailController.text,
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment:
                  CrossAxisAlignment
                      .start,
                  children: [
                    const Text(
                      'Pesan: ',
                      style: TextStyle(
                          fontWeight:
                          FontWeight
                              .w700),
                    ),
                    Flexible(
                        child: Text(
                          _messageController.text,
                          overflow: TextOverflow
                              .visible,
                        )),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}