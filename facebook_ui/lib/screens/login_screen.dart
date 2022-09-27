import 'package:facebook_ui/screens/bottom_navbar.dart';
import 'package:facebook_ui/widgets/style.dart';
import 'package:facebook_ui/widgets/textField.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset("images/facebook_background.png"),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: ResuserableTextFeild(
                    hintText: "Phone number or email address"),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: ResuserableTextFeild(hintText: "Password"),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Material(
                  color: Color(0xff385899),
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BottomNav(),
                          ),
                        );
                      },
                      child: NeoText(
                        color: Colors.white,
                        size: 15,
                        fontWeight: FontWeight.bold,
                        text: "LogIn",
                      )),
                ),
              ),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: NeoText(
                      text: "Forgotten Password?",
                      size: 19,
                      color: Color(0xff385899),
                      fontWeight: FontWeight.bold),
                ),
              ),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: NeoText(
                      text: "Back",
                      size: 19,
                      color: Color(0xff385899),
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(80.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 2,
                      ),
                    ),
                    NeoText(
                        text: "OR",
                        size: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    Expanded(
                      child: Divider(
                        thickness: 2,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Material(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 194, 218, 238),
                  child: TextButton(
                      onPressed: () {},
                      child: NeoText(
                        color: Color(0xff385899),
                        size: 17,
                        fontWeight: FontWeight.bold,
                        text: "Create New Account",
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
