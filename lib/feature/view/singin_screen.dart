// ignore_for_file: prefer_const_constructors, prefer_final_fields, unused_field, file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:rikaa/feature/core/color_manger.dart';
import 'package:rikaa/feature/view/successfull_page.dart';

import 'widget/widget_button_custom.dart';

class SinginScreen extends StatefulWidget {
  const SinginScreen({Key? key}) : super(key: key);

  @override
  State<SinginScreen> createState() => _SinginScreenState();
}

@override
class _SinginScreenState extends State<SinginScreen> {
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();
  bool valueCheckBox = false;
  bool isUserName = false;
  bool isEmail = false;
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 60, horizontal: 80),
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
                            'Sign Up',
                            style: Theme.of(context)
                                .textTheme
                                .headline6
                                ?.copyWith(
                                    color: ColorManger.colorBlack,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 26,
                                    fontFamily: 'Mont-BoldItalic.otf'),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Create an new account',
                            style: Theme.of(context)
                                .textTheme
                                .headline2
                                ?.copyWith(
                                    color: ColorManger.colorBlack2,
                                    fontSize: 18,
                                    fontFamily: 'Mont-BoldItalic.otf'),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextField(
                            onChanged: (paremetr) {
                              if (paremetr.contains('')) {
                                isUserName = true;
                              } else {
                                isUserName = false;
                              }
                              setState(() {
                                isUserName = true;
                              });
                            },
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              suffixIcon: isUserName
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
                              labelText: ('User Name'),
                              labelStyle: TextStyle(
                                  color: ColorManger.colorBlack,
                                  fontSize: 24,
                                  fontFamily: 'Mont-BoldItalic.otf'),
                              enabledBorder: const UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFFEEEEEE)),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: ColorManger.colorBlack),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextField(
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
                                  color: ColorManger.colorBlack,
                                  fontSize: 24,
                                  fontFamily: 'Mont-BoldItalic.otf'),
                              enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFFEEEEEE)),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: ColorManger.colorBlack),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextField(
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: _obscureText,
                            obscuringCharacter: '*',
                            decoration: InputDecoration(
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _obscureText = !_obscureText;
                                  });
                                },
                                child: _obscureText
                                    ? Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 12, horizontal: 12),
                                        child: Icon(
                                          Icons.visibility,
                                          color: Colors.black,
                                        ))
                                    : Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 12, horizontal: 12),
                                        child: SvgPicture.asset(
                                          'assets/svg/eye.svg',
                                        ),
                                      ),
                              ),
                              labelText: ('Password'),
                              labelStyle: TextStyle(
                                  color: ColorManger.colorBlack,
                                  fontSize: 24,
                                  fontFamily: 'Mont-BoldItalic.otf'),
                              enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFFEEEEEE)),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: ColorManger.colorBlack),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextField(
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: _obscureText,
                            obscuringCharacter: '*',
                            decoration: InputDecoration(
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _obscureText = !_obscureText;
                                  });
                                },
                                child: _obscureText
                                    ? Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 12, horizontal: 12),
                                        child: Icon(
                                          Icons.visibility,
                                          color: Colors.black,
                                        ))
                                    : Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 12, horizontal: 12),
                                        child: SvgPicture.asset(
                                          'assets/svg/eye.svg',
                                        ),
                                      ),
                              ),
                              labelText: ('Confirm Password'),
                              labelStyle: TextStyle(
                                  color: ColorManger.colorBlack,
                                  fontSize: 24,
                                  fontFamily: 'Mont-BoldItalic.otf'),
                              enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFFEEEEEE)),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: ColorManger.colorBlack),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Checkbox(
                                side:
                                    const BorderSide(color: Color(0xffAAAAAA)),
                                focusColor: ColorManger.colorBlack,
                                hoverColor: ColorManger.colorBlack,
                                activeColor: ColorManger.colorBlack,
                                value: valueCheckBox,
                                onChanged: (value) async {
                                  setState(() {
                                    valueCheckBox = value!;
                                  });
                                },
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  'By creating an account you have to agree\nwith our them & condication.',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline2
                                      ?.copyWith(
                                          color: ColorManger.colorBlack3,
                                          fontSize: 14,
                                          fontFamily: 'Mont-BoldItalic.otf'),
                                ),
                              ),
                              //Text
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ), //Row)
                          WidgetButtonCustom(
                            onTap: () {
                              if (!valueCheckBox != true) {
                                Get.to(SuccessfullPage());
                              } else {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(
                                  action: SnackBarAction(
                                    textColor: ColorManger.colorWhite,
                                    disabledTextColor: ColorManger.colorWhite,
                                    label: ('skip'),
                                    onPressed: () {
                                      // Code to execute.
                                    },
                                  ),
                                  content: Text(
                                    'you have to agree with our them & condition',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ));
                              }
                            },
                            textBody: 'Login',
                            colorsBorderSide: ColorManger.colorBlack,
                            backgroundColor: ColorManger.colorBlack,
                            style: TextStyle(),
                          ),
                        ],
                      )
                    ]))));
  }
}
