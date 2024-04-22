import 'package:flutter/material.dart';
import 'package:public_event_list/core/style/text_styles.dart';
import 'package:public_event_list/features/sample_feature/presentation/flow_4/change_name_screen.dart';

class UserPage extends StatefulWidget {
  const UserPage({
    super.key,
  });

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {

  String customText= "Write something";

  @override
  Widget build(BuildContext context) {
    return Navigator(onGenerateRoute: (RouteSettings settings) {
      return MaterialPageRoute(
        builder: (BuildContext context) {
          return GridView.count(
            crossAxisCount: 1,
            children: [
              Container(
                color: Colors.grey,
                child: ListTile(
                  title: Text(
                    customText,
                    style: const Font().white.s22,
                  ),
                  onTap: () async {
                    customText = await Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ChangingUserNameScreen(),
                    ),
                  );
                      setState((){
                        customText;
                      });
                  },
                ),
              ),
            ],
          );
        },
      );
    });
  }
}
