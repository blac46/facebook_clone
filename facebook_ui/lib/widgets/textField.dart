import 'package:flutter/material.dart';

class ResuserableTextFeild extends StatelessWidget {
  final String hintText;

   ResuserableTextFeild(
      {Key? key, required this.hintText,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(2)
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
        ),
      ),
    );
  }   
}