import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:facebook_ui/widgets/style.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:icofont_flutter/icofont_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          automaticallyImplyLeading: false,
          title: NeoText(
            text: "facebook",
            size: 30,
            color: Color(0xff385899),
            fontWeight: FontWeight.bold,
          ),
          actions: [
            CircleAvatar(
              backgroundColor: Colors.grey[300],
              child: Icon(
                Icons.add,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 5,
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
            CircleAvatar(
              backgroundColor: Colors.grey[300],
              child: Icon(
                FontAwesomeIcons.facebookMessenger,
                color: Colors.black,
              ),
            ),
          ]),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 10),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey[300],
                  radius: 30,
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1488426862026-3ee34a7d66df?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fHByb2ZpbGUlMjBwaWN0dXJlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                ),
                SizedBox(
                  width: 20,
                ),
                NeoText(
                    text: "What's on your mind",
                    size: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                SizedBox(
                  width: 130,
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      IcoFontIcons.picture,
                      color: Colors.green,
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            thickness: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Row(
              children: [
                NeoText(
                    text: "Stories",
                    size: 18,
                    color: Color(0xff385899),
                    fontWeight: FontWeight.bold),
                SizedBox(
                  width: 20,
                ),
                NeoText(
                    text: "Reels",
                    size: 18,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 150,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      itemBuilder: (context, index) => Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Container(
                            height: 140,
                            width: 130,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://images.unsplash.com/photo-1508606572321-901ea443707f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGdpcmxzJTIwc2VsZmllfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                                    fit: BoxFit.fill
                              ),
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 10),
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        "https://images.unsplash.com/photo-1488426862026-3ee34a7d66df?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fHByb2ZpbGUlMjBwaWN0dXJlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ),
                  ),
                  ListView.separated(
                      separatorBuilder: (context, index) => Divider(
                            height: 10,
                            color: Colors.grey[300],
                            thickness: 10,
                          ),
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return profileCard(context);
                      }),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Card profileCard(BuildContext context) {
    return Card(
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 2.2,
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey[300],
                  radius: 30,
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1488426862026-3ee34a7d66df?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fHByb2ZpbGUlMjBwaWN0dXJlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                ),
                SizedBox(
                  width: 20,
                ),
                NeoText(
                    text: "Burna Boy",
                    size: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                SizedBox(
                  width: 140,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.more_horiz),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.cancel),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                image: DecorationImage(
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1558898479-33c0057a5d12?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fHByb2ZpbGUlMjBwaWN0dXJlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                    fit: BoxFit.fill),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, top: 2),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 15,
                    child: Icon(
                      IcoFontIcons.like,
                      size: 14,
                    ),
                  ),
                  SizedBox(
                    width: 210,
                  ),
                  NeoText(
                      text: "Comment",
                      size: 15,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                  SizedBox(
                    width: 10,
                  ),
                  NeoText(
                      text: "Shares",
                      size: 15,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ],
              ),
            ),
            const Expanded(
              child: Divider(
                thickness: 2,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 100,
                  height: 50,
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {}, icon: Icon(IcoFontIcons.like)),
                      Text("Like")
                    ],
                  ),
                ),
                Container(
                  width: 110,
                  height: 50,
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(FontAwesomeIcons.message)),
                      Text("Comment")
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  height: 50,
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {}, icon: Icon(FontAwesomeIcons.share)),
                      Text("Share")
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
