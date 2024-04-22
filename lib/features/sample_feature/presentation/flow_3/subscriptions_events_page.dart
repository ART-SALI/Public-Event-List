import 'package:flutter/material.dart';
import 'package:public_event_list/features/sample_feature/presentation/flow_3/components/eventCard.dart';

class SubscriptionsEventsPage extends StatelessWidget {
  const SubscriptionsEventsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Navigator(
        onGenerateRoute: (RouteSettings settings)
        {
          return MaterialPageRoute(
            builder: (BuildContext context) {
              return GridView.count(
                crossAxisCount: 2,
                children: const [
                  EventCard(
                    eventName: 'EVENT1',
                  ),
                  EventCard(
                    eventName: 'EVENT2',
                  ),
                  EventCard(
                    eventName: 'EVENT',
                  ),
                ],
              );
            },
          );
        }
    );
  }
}