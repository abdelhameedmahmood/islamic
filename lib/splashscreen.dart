import 'dart:async';

import 'package:aaaaaa/layout/home_layout.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  static const String routeName = 'splashscreen';

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacementNamed(context, HomeLayout.routeName);
    });
    var mediaQury = MediaQuery.of(context).size;
    return Scaffold(
      body: Image.asset("assets/images/splashscreen.png",
          width: mediaQury.width, height: mediaQury.height, fit: BoxFit.cover),
    );
  }
}
