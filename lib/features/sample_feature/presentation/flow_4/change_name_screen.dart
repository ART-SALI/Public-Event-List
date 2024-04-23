import 'package:flutter/material.dart';
import 'package:public_event_list/core/style/text_styles.dart';

class ChangingTextScreen extends StatefulWidget {
  const ChangingTextScreen({super.key});

  @override
  State<ChangingTextScreen> createState() => _ChangingTextScreenState();
}

class _ChangingTextScreenState extends State<ChangingTextScreen> {

  String changedText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text changing'),
      ),
      body: Column(
        children: [
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
      ),
    );
  }
}