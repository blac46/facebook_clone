import 'package:flutter/material.dart';

class MenuCard extends StatelessWidget {

   MenuCard({
    this.text,
    this.icon,
    this.color,
    Key? key,
  }) : super(key: key);
   String? text;
   IconData? icon;
   MaterialColor? color;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 95,
      width: 190,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Icon(icon,color: color,),
            SizedBox(height: 10,),
            Text(text!),
            
            
          ]),
        ),
      ),
    );
  }
}