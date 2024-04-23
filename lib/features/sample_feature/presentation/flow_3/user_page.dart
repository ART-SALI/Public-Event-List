import 'package:flutter/material.dart';
import 'package:public_event_list/core/style/text_styles.dart';

class UserPage extends StatefulWidget {
  const UserPage({
    super.key,
  });

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  String customText = "Write something";


  @override
  Widget build(BuildContext context) {
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
                      customText =
                          await Navigator.pushNamed(context, '/changetext')
                              as String;
                      setState(
                        () {
                          customText;
                        },
                      );
                    },
                  ),
                ),
              ],
            );
          }


  }

