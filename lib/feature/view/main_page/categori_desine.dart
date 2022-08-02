import 'package:flutter/material.dart';

import '../../core/color_manger.dart';
 
class CategorieDesinOne extends StatelessWidget {
  final String title;
  final String imageurl;
  final String countCategroie;

  const CategorieDesinOne(
      {super.key,
      required this.title,
      required this.imageurl,
      required this.countCategroie});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      const SizedBox(
        height: 10,
      ),
      Container(
        width: double.infinity,
        height: 180,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              imageurl,
            ),
            fit: BoxFit.cover,
          ),
          border: Border.all(
            color: Colors.white,
            width: 0.5,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          color: ColorManger.colorWhite.withOpacity(0.8),
          border: Border.all(
            width: 0.5,
            color: ColorManger.colorBlack.withOpacity(0.1),
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        width: double.infinity,
        height: 60,
        margin: const EdgeInsets.only(top: 120),
      ),
      Positioned(
          bottom: 20,
          left: 10,
          right: 10,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.headline6?.copyWith(
                      color: ColorManger.colorBlack,
                      fontSize: 16,
                      fontFamily: 'Mont-Bold',
                    ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                '$countCategroie Product',
                style: Theme.of(context).textTheme.headline4?.copyWith(
                      color: ColorManger.colorBlack,
                      fontSize: 12,
                      fontFamily: 'Mont-Bold',
                    ),
              )
            ],
          ))
    ]);
  }
}
