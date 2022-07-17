import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rikaa/feature/core/color_manger.dart';

import 'widget/widget_button_custom.dart';

class SuccessfullPage extends StatefulWidget {
  const SuccessfullPage({Key? key}) : super(key: key);

  @override
  State<SuccessfullPage> createState() => _SuccessfullPageState();
}

class _SuccessfullPageState extends State<SuccessfullPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/svg/iconTrue.svg'),
              const SizedBox(
                height: 20,
                width: double.infinity,
              ),
              Text(
                'Successful!',
                style: Theme.of(context).textTheme.headline6?.copyWith(
                      color: ColorManger.colorBlack,
                      fontSize: 26,
                      fontFamily: 'Mont-Black.otf',
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'You have successfully registered in\nour app and start working in it.',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline3?.copyWith(
                      fontSize: 16,
                      color: ColorManger.colorBlack2,
                      fontFamily: 'Mont-Black.otf',
                    ),
              ),
            ],
          ),
          Positioned(
            bottom: 80,
            left: 20,
            right: 20,
            child: WidgetButtonCustom(
              onTap: () {},
              textBody: 'Start Shopping',
              colorsBorderSide: ColorManger.colorBlack,
              backgroundColor: ColorManger.colorBlack,
              style: const TextStyle(),
            ),
          ),
        ],
      ),
    );
  }
}
