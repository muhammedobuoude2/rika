// ignore_for_file: file_names

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rikaa/feature/view/mine_page/main_one_screen.dart';
import 'package:rikaa/feature/view/splash_two_screen.dart';
import 'package:rikaa/utils/shared/shared_preferences.dart';

// ignore: camel_case_types
class SplashOneScreen extends StatefulWidget {
  const SplashOneScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return SplashState();
  }
}

class SplashState extends State<SplashOneScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: initScreen(context),
    );
  }

  startTime() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => SharedPref.instance.getLogeedIn() ? const MainOneScreen() : const SplashTwoScreen()));
  }

  initScreen(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
          top: 0,
          left: 0,
          bottom: 0,
          right: 0,
          child: SvgPicture.asset(
            'assets/svg/image.svg',
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 5,
          left: 15,
          bottom: 0,
          right: 0,
          child: Image.asset(
            'assets/images/logo.png',
            width: 175,
            height: 200,
            alignment: Alignment.center,
          ),
        ),
      ],
    ));
  }
}
