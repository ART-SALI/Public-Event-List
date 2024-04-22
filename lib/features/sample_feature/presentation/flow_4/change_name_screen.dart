import 'package:flutter/material.dart';
import 'package:public_event_list/core/style/text_styles.dart';

class ChangingUserNameScreen extends StatefulWidget {
  const ChangingUserNameScreen({super.key});

  @override
  State<ChangingUserNameScreen> createState() => _ChangingUserNameScreenState();
}

class _ChangingUserNameScreenState extends State<ChangingUserNameScreen> {

  String changedText = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          title: const Text('Text changing'),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context, changedText);
          },
          style: TextButton.styleFrom(foregroundColor: Colors.black),
          child: Text(
            'Change',
            style: const Font().s24,
          ),
        ),
        TextField(
          onChanged: (text) {
            changedText = text;
          },
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Enter a user name',
          ),
        ),
      ],
    );
  }
}