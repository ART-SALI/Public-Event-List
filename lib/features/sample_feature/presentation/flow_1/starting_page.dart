import 'package:flutter/material.dart';
import 'package:public_event_list/core/style/text_styles.dart';
import 'package:public_event_list/features/sample_feature/presentation/flow_2/main_screen.dart';

class StartingPage extends StatefulWidget {
  const StartingPage({super.key});

  @override
  State<StartingPage> createState() => _StartingPageState();
}

class _StartingPageState extends State<StartingPage> {

  final myController = TextEditingController();

  String userName = '';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Spacer(flex: 5),
          Flexible(
            flex: 3,
            child: Text('Logging', style: const Font().s30.italic),
          ),
          const Spacer(),
           Flexible(
            flex: 2,
            child: Row(
              children: [
                const Spacer(),
                Flexible(
                  flex: 3,
                  child: TextField(
                    onChanged: (text){userName = text;},
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter a user name',
                    ),
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
          const Spacer(),
          const Flexible(
            flex: 2,
            child: Row(
              children: [
                Spacer(),
                Flexible(
                  flex: 3,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter a password',
                    ),
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
          const Spacer(),
          Flexible(
            flex: 2,
            child: TextButton(
              onPressed: () {Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>  MainScreen(userName: userName,),
                  ),);},
              style: TextButton.styleFrom(foregroundColor: Colors.black),
              child: Text('ENTER', style: const Font().s24,),
            )
          ),
          const Spacer(flex: 7),
        ],
      ),
    );
  }
}
