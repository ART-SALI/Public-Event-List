import 'package:flutter/material.dart';

class EventScreen extends StatelessWidget {
  final String eventName;
  const EventScreen({super.key, required this.eventName});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          title: Text(eventName),
        )
      ],
    );
  }
}
