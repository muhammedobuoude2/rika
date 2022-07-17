// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:rikaa/feature/core/color_manger.dart';
import 'package:rikaa/feature/view/categories/categorie_one_screen.dart';
import 'package:rikaa/feature/view/widget/widget_button.dart';
import 'package:rikaa/feature/view/widget/widget_button_custom.dart';
import 'package:rikaa/utils/shared/shared_preferences.dart';

import 'onboarding_screen.dart';

class LogingScreen extends StatefulWidget {
  const LogingScreen({Key? key}) : super(key: key);

  @override
  State<LogingScreen> createState() => _LogingScreenState();
}

class _LogingScreenState extends State<LogingScreen> {
  bool isEmail = false;
  bool isPasword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 60, horizontal: 80),
                child: Image.asset(
                  'assets/images/logoblack.png',
                  width: double.infinity,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome!',
                  style: Theme.of(context).textTheme.headline6?.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 22,
                      fontFamily: 'Mont-BoldItalic.otf'),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'please login or sign up to continue our app',
                  style: Theme.of(context).textTheme.headline2?.copyWith(
                      color: Colors.black.withOpacity(0.5),
                      fontSize: 16,
                      fontFamily: 'Mont-BoldItalic.otf'),
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    suffixIcon: isEmail
                        ? Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 15),
                            child: SvgPicture.asset(
                              'assets/svg/check_mark.svg',
                            ),
                          )
                        : Icon(
                            Icons.abc,
                            color: ColorManger.transparentColor,
                          ),
                    labelText: ('Email'),
                    labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontFamily: 'Mont-BoldItalic.otf'),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFEEEEEE)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                  onChanged: (paremetr) {
                    if (paremetr.contains('@')) {
                      isEmail = true;
                    } else {
                      isEmail = false;
                    }
                    setState(() {
                      isEmail = true;
                    });
                  },
                ),
                SizedBox(
                  height: 18,
                ),
                TextField(
                  onChanged: (paremetr) {
                    if (paremetr.contains('@')) {
                      isPasword = true;
                    } else {
                      isPasword = false;
                    }
                    setState(() {
                      isPasword = true;
                    });
                  },
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                    suffixIcon: isPasword
                        ? Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 15),
                            child: SvgPicture.asset(
                              'assets/svg/check_mark.svg',
                            ),
                          )
                        : Icon(
                            Icons.abc,
                            color: ColorManger.transparentColor,
                          ),
                    labelText: ('Password'),
                    labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontFamily: 'Mont-BoldItalic.otf'),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFEEEEEE)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: ColorManger.color),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            WidgetButtonCustom(
              onTap: () {
                SharedPref.instance.setLogeedIn(loggedIn: true);
                Get.to(() => CategorieOneScreen());
              },
              textBody: 'Login',
              colorsBorderSide: ColorManger.colorBlack,
              backgroundColor: ColorManger.colorBlack,
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                  child:
                      Divider(height: 1.0, thickness: 0.5, color: Colors.grey),
                ),
                Text(
                  ' or ',
                  style: Theme.of(context).textTheme.headline6?.copyWith(
                      color: Colors.black, fontSize: 16, height: -0.2),
                ),
                Expanded(
                  child: Divider(
                    height: 1.0,
                    thickness: 0.5,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Button(
              text: 'Continue with Facebook',
              iconPath: 'assets/svg/facebookloge.svg',
              onTap: () {},
              colorBorder: ColorManger.colorFaceBook,
              colorBackAround: ColorManger.colorFaceBook,
              textColor: ColorManger.colorWhite,
            ),
            SizedBox(
              height: 20,
            ),
            Button(
              text: 'Continue with Google',
              iconPath: 'assets/svg/googleicon.svg',
              onTap: () {
                Get.to(() => OnBoardingScreen());
              },
              colorBorder: ColorManger.color,
              colorBackAround: ColorManger.colorWhite,
              textColor: ColorManger.color.withOpacity(0.4),
            ),
            SizedBox(
              height: 20,
            ),
            Button(
              text: 'Continue with Apple',
              iconPath: 'assets/svg/appelicon.svg',
              textColor: ColorManger.color.withOpacity(0.4),
              onTap: () {
                Get.to(() => () {});
              },
              colorBorder: ColorManger.color,
              colorBackAround: ColorManger.colorWhite,
            ),
          ]),
        ),
      ),
    );
  }
}
