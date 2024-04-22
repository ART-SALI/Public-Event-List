import 'package:flutter/material.dart';
import 'package:public_event_list/features/sample_feature/presentation/flow_2/components/main_screen_app_bar.dart';
import 'package:public_event_list/features/sample_feature/presentation/flow_3/main_events_page.dart';
import 'package:public_event_list/features/sample_feature/presentation/flow_3/subscriptions_events_page.dart';
import 'package:public_event_list/features/sample_feature/presentation/flow_3/user_page.dart';

class MainScreen extends StatefulWidget {
  final String userName;
  const MainScreen({super.key, required this.userName});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {


  var _pageIndex = 0;


  void _onItemTapped(int index) {
    setState(() {
      _pageIndex = index;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainScreenAppBar(),
      body: SafeArea(
        top: false,
        child: IndexedStack(
          index: _pageIndex,
          children: const <Widget>[
            MainEventsPage(),
            SubscriptionsEventsPage(),
            UserPage(),
          ],
        ),
      ),
      // body: TabBarView(
      //   controller: tabController,
      //   children: body,
      // ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green,
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.pages),
            label: 'Main',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions),
            label: 'Subscriptions',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person),
            label: widget.userName,
          ),
        ],
        currentIndex: _pageIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}








