// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:rikaa/feature/core/color_manger.dart';

class WidgetCategriosTwoo extends StatelessWidget {
  final String pathImage;
  final String textTitle;
  // ignore: non_constant_identifier_names
  final int Count_Product;

  const WidgetCategriosTwoo(
      {super.key,
      required this.pathImage,
      required this.textTitle,
      // ignore: non_constant_identifier_names
      required this.Count_Product});
  @override
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: Container(
            width: double.infinity,
            height: 120,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  pathImage,
                ),
                fit: BoxFit.fill,
              ),
              border: Border.all(
                color: Colors.white,
                width: 0.5,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        Positioned(
            right: 50,
            top: 25,
            child: Text(
              textTitle,
              style: Theme.of(context).textTheme.headline6?.copyWith(
                  color: ColorManger.colorBlack,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Mont-Bold'),
            )),
        Positioned(
            right: 32,
            top: 60,
            child: Text(
              '$Count_Product  Product',
              style: Theme.of(context).textTheme.headline4?.copyWith(
                  color: ColorManger.colorBlack,
                  fontSize: 14,
                  fontFamily: 'Mont-Black'),
            )),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}
