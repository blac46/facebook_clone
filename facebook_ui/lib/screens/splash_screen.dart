import 'dart:async';

import 'package:facebook_ui/screens/login_screen.dart';
import 'package:facebook_ui/widgets/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 2),
        () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => const LogInScreen())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 150,
              ),
              Image.asset("images/facebook.png"),
              NeoText(
                  text: "Facebook",
                  size: 30.0,
                  color: Color(0xff385899),
                  fontWeight: FontWeight.bold)
            ],
          ),
        ),
      ),
    );
  }
}
