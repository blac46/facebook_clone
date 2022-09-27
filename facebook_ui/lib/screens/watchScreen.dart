import 'package:facebook_ui/videoplayer.dart';
import 'package:facebook_ui/widgets/flick_video.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:icofont_flutter/icofont_flutter.dart';
import 'package:video_player/video_player.dart';

import '../widgets/style.dart';

class WatchScreen extends StatefulWidget {
  const WatchScreen({Key? key}) : super(key: key);

  @override
  State<WatchScreen> createState() => _WatchScreenState();
}
 

class _WatchScreenState extends State<WatchScreen> {
   late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          automaticallyImplyLeading: false,
          title: NeoText(
            text: "Watch",
            size: 30,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          actions: [
            CircleAvatar(
              backgroundColor: Colors.grey[300],
              child: Icon(
                Icons.person,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            CircleAvatar(
              backgroundColor: Colors.grey[300],
              child: Icon(
                IcoFontIcons.search1,
                color: Colors.black,
              ),
            ),
          ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  NeoText(
                      text: "For you",
                      size: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  NeoText(
                      text: "For you",
                      size: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  NeoText(
                      text: "For you",
                      size: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  NeoText(
                      text: "For you",
                      size: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)
                ],
              ),
            ),
            Divider(
              thickness: 10,
            ),
            ListView.separated(
          separatorBuilder: (context, index) => Divider(
           height: 10,
           color: Colors.grey[300],
           thickness: 10,
           ),
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 7,
           itemBuilder: (context, index) {
           return myCard(context);
                },),
          ],
        ),
      ),
    );
  }

  Card myCard(BuildContext context) {
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
              ),
              child:SamplePlayer()
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
                    width: 170,
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
                      SizedBox(
                    width: 10,
                  ),
                      NeoText(
                      text: "Views",
                      size: 15,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ],
              ),
            ),
            Expanded(
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
