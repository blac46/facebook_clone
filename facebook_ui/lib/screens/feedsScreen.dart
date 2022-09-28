import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:icofont_flutter/icofont_flutter.dart';

import '../widgets/style.dart';

class FeedsScreen extends StatefulWidget {
  const FeedsScreen({Key? key}) : super(key: key);

  @override
  State<FeedsScreen> createState() => _FeedsScreenState();
}

class _FeedsScreenState extends State<FeedsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          automaticallyImplyLeading: false,
          title: NeoText(
            text: "Feeds",
            size: 30,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          actions: [
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
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: [
          NeoText(text: "All", size: 19, color: Colors.black, fontWeight: FontWeight.bold),
          NeoText(text: "Favourites", size: 19, color: Colors.black, fontWeight: FontWeight.bold),
          NeoText(text: "Friends", size: 19, color: Colors.black, fontWeight: FontWeight.bold),
          NeoText(text: "Groups", size: 19, color: Colors.black, fontWeight: FontWeight.bold)

         ],
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            thickness: 10,
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
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
                        "https://media.istockphoto.com/photos/talented-female-artist-works-on-abstract-oil-painting-using-paint-picture-id1183183791?b=1&k=20&m=1183183791&s=170667a&w=0&h=XL98MEMm_-kJdDCEc7v-Z66R7dnIuRRMAcg5Y9dA-y8="),
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
