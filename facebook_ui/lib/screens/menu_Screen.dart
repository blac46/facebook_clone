import 'package:facebook_ui/widgets/card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:icofont_flutter/icofont_flutter.dart';

import '../widgets/style.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          automaticallyImplyLeading: false,
          title: NeoText(
            text: "Menu",
            size: 30,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          actions: [
            CircleAvatar(
              backgroundColor: Colors.grey[300],
              child: Icon(
                Icons.settings,
                color: Colors.black,
              ),
            ),
            CircleAvatar(
              backgroundColor: Colors.grey[300],
              child: Icon(
                IcoFontIcons.search,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 5,
            ),
          ]),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1562860149-691401a306f8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8bWFza3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"),
                ),
                title: NeoText(
                    text: "Blac Arabian",
                    size: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                subtitle: NeoText(
                    text: "See your profile",
                    size: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 20,
              ),
              ListView.separated(
                separatorBuilder: (context, index) => SizedBox(
                  height: 5,
                ),
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return feedsCard();
                },
              ),
              SizedBox(
                height: 10,
              ),
              Material(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.grey[300],
                child: TextButton(
                    onPressed: () {},
                    child: NeoText(
                        text: "See more",
                        size: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
              ),
             const SizedBox(
                height: 10,
              ),
            const  Divider(
                thickness: 1,
                color: Colors.grey,
              ),
               SizedBox(height: 10,),

               GestureDetector(
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.handshake,color: Colors.grey,),
                    NeoText(text: "Community resources", size: 19, color: Colors.black, fontWeight: FontWeight.bold),
                    Icon(Icons.keyboard_arrow_down,)
                  ],
                 ),
                 onTap: (){},
               ),
               SizedBox(height: 10,),
               Divider(thickness: 1,),
               SizedBox(height: 10,),
                    GestureDetector(
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(FontAwesomeIcons.questionCircle,color: Colors.grey,),
                    NeoText(text: "Help & Support", size: 19, color: Colors.black, fontWeight: FontWeight.bold),
                    Icon(Icons.keyboard_arrow_down,)
                  ],
                 ),
                 onTap: (){},
               ),
               SizedBox(height: 10,),
               Divider(thickness: 1,),
               SizedBox(height: 10,),
                    GestureDetector(
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.settings,color: Colors.grey,),
                    NeoText(text: "Settings & Privacy", size: 19, color: Colors.black, fontWeight: FontWeight.bold),
                    Icon(Icons.keyboard_arrow_down,)
                  ],
                 ),
                 onTap: (){},
               ),
               SizedBox(height: 20,),
               Material(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.grey[300],
                child: TextButton(
                    onPressed: () {},
                    child: NeoText(
                        text: "Log Out",
                        size: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
              ),

            ],
          ),
        ),
      ),
    );
  }

  Row feedsCard() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        MenuCard(
          icon: Icons.feed_sharp,
          color: Colors.blue,
          text: "Feeds",
        ),
        MenuCard(
          icon: Icons.person_sharp,
          color: Colors.blue,
          text: "Friends",
        ),
      ],
    );
  }
}
