// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../core/color_manger.dart';

class WidgetCustomTextProduct extends StatefulWidget {
  final String imagepath;
  final String title;
  final String body;
  final String price;

  const WidgetCustomTextProduct(
      {super.key,
      required this.imagepath,
      required this.title,
      required this.body,
      required this.price});
  @override
  State<WidgetCustomTextProduct> createState() =>
      _WidgetCustomTextProductState();
}

class _WidgetCustomTextProductState extends State<WidgetCustomTextProduct> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              width: 150,
              height: 200,
              color: ColorManger.colorWhite,
              child: Image.asset(
                widget.imagepath,
                fit: BoxFit.fill,
                height: double.infinity,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            widget.title,
            style: Theme.of(context).textTheme.headline6?.copyWith(
                  fontSize: 16,
                  fontFamily: 'Mont-Bold',
                ),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            'Traveler Tote',
            style: Theme.of(context).textTheme.headline2?.copyWith(
                  fontSize: 14,
                  fontFamily: 'Mont-Black',
                ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "\$ ${widget.price} ",
            style: Theme.of(context).textTheme.headline2?.copyWith(
                  fontSize: 14,
                  fontFamily: 'Mont-Black',
                ),
          )
        ],
      ),
    );
  }
}
