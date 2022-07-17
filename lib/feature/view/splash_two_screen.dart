// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'onboarding_screen.dart';

class SplashTwoScreen extends StatefulWidget {
  const SplashTwoScreen({Key? key}) : super(key: key);

  @override
  State<SplashTwoScreen> createState() => _SplashTwoScreenState();
}

class _SplashTwoScreenState extends State<SplashTwoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Image.asset(
              'assets/images/image1.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 0,
            left: 15,
            bottom: 450,
            right: 0,
            child: Image.asset(
              'assets/images/logo.png',
              width: 175,
              height: 200,
            ),
          ),
          Positioned(
            left: 20,
            bottom: 100,
            right: 20,
            child: ElevatedButton(
                onPressed: () {
                  Get.to(const OnBoardingScreen());
                },
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(
                      const Size(double.infinity, double.infinity)),
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      side: const BorderSide(
                          width: .5, color: Color(0xffCFCFCF)))),
                ),
                child: Text('Login',
                    style: Theme.of(context).textTheme.headline3?.copyWith(
                        fontSize: 18,
                        color: Colors.black,
                        fontFamily: 'Mont-Bold'))),
          ),
          Positioned(
              left: 20,
              bottom: 40,
              right: 20,
              child: ElevatedButton(
                  onPressed: () {
                    Get.to(OnBoardingScreen());
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Colors.white.withOpacity(0.1)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                          side: const BorderSide(
                              width: 2, color: Color(0xffCFCFCF))),
                    ),
                  ),
                  child: Text('Sign Up',
                      style: Theme.of(context).textTheme.subtitle1?.copyWith(
                          fontSize: 18,
                          color: Colors.white,
                          fontFamily: 'Mont-Bold',
                          fontWeight: FontWeight.w400)))),
        ],
      ),
    );
  }
}
