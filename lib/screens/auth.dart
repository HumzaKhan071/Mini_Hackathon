import 'package:flutter/material.dart';


import 'package:mini_hackathon/screens/register.dart';

class Auth extends StatefulWidget {
  const Auth({Key? key}) : super(key: key);

  @override
  _AuthState createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  bool switchScreen = true;
  void togScreen() {
    setState(() {
      switchScreen = !switchScreen;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (switchScreen) {}
    return Register(togScreen: togScreen);
  }
}
