import 'package:flutter/material.dart';
import 'package:public_event_list/core/style/text_styles.dart';
import 'package:public_event_list/features/sample_feature/presentation/flow_4/event_screen.dart';

class EventCard extends StatelessWidget {
  final String eventName;
  const EventCard({
    super.key,
    required this.eventName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: ListTile(
        title: Text(
          eventName,
          style: const Font().white.s22,
        ),
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => EventScreen(
              eventName: eventName,
            ),
          ),
        ),
      ),
    );
  }
}