import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:icofont_flutter/icofont_flutter.dart';

import '../widgets/style.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: NeoText(
                  text: "New",
                  size: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            ListView.separated(
              separatorBuilder: (context, index) => SizedBox(
                height: 10,
              ),
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 14,
              itemBuilder: (context, index) {
                return ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 0),
                  leading: CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1635710064268-69aa5d9355c1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fHJlYWwlMjBtYWRyaWR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"),
                  ),
                  title: NeoText(
                      text: "Burna Boy",
                      size: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  subtitle: NeoText(
                      text: "posted a video:Robbe🤝🎶",
                      size: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                  trailing: Icon(Icons.more_horiz),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

AppBar appBar() {
  return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      automaticallyImplyLeading: false,
      title: NeoText(
        text: "Notification",
        size: 30,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      actions: [
        CircleAvatar(
          backgroundColor: Colors.grey[300],
          child: Icon(
            IcoFontIcons.search1,
            color: Colors.black,
          ),
        ),
      ]);
}
