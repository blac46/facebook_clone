import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:icofont_flutter/icofont_flutter.dart';

import '../widgets/style.dart';

class MarketPlaceScreen extends StatefulWidget {
  const MarketPlaceScreen({Key? key}) : super(key: key);

  @override
  State<MarketPlaceScreen> createState() => _MarketPlaceScreenState();
}

class _MarketPlaceScreenState extends State<MarketPlaceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 45,
                  width: 160,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.grey[300]),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 40,
                      ),
                      Icon(Icons.sell),
                      NeoText(
                          text: "Sell",
                          size: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w500)
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 160,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.grey[300]),
                  child: Center(
                    child: Row(
                      children: [
                        SizedBox(
                          width: 40,
                        ),
                        Icon(Icons.menu_open),
                        NeoText(
                            text: "Categories",
                            size: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w500)
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 40,
              child: Divider(
                thickness: 2,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                NeoText(
                    text: "Today's picks",
                    size: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                Container(
                  height: 20,
                  width: 150,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.location_on,
                        color: Colors.blue,
                      ),
                      NeoText(
                          text: "Accra,Ghana",
                          size: 18,
                          color: Colors.blue,
                          fontWeight: FontWeight.normal)
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
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
             return storeCard();
                  },),
          ]),
        ),
      ),
    );
  }

  Row storeCard() {
    return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(children: [
              SizedBox(
                height: 200,
                width: 190,
                child: Card(
                  child: Image(
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1578345218746-50a229b3d0f8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cGhvbmVzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              NeoText(
                  text: "GHS85 .SUMMER",
                  size: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w300)
            ]),
            Column(children: [
              SizedBox(
                height: 200,
                width: 190,
                child: Card(
                  child: Image(
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1489987707025-afc232f7ea0f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c2hpcnRzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              NeoText(
                  text: "GHS85 .SUMMER",
                  size: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w300)
            ])
          ],
        );
  }
}

AppBar appBar() {
  return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      automaticallyImplyLeading: false,
      title: NeoText(
        text: "MarketPlace",
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
      ]);
}
