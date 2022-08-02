// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../core/color_manger.dart';

class ProductItemPageFour extends StatefulWidget {
  const ProductItemPageFour({Key? key}) : super(key: key);

  @override
  State<ProductItemPageFour> createState() => _ProductItemPageFourState();
}

class _ProductItemPageFourState extends State<ProductItemPageFour> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 1),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 240,
                      width: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              width: 150,
                              height: 170,
                              color: ColorManger.colorWhite,
                              child: Image.asset(
                                'assets/images/image.png',
                                fit: BoxFit.fill,
                                height: double.infinity,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'title',
                            style:
                                Theme.of(context).textTheme.headline6?.copyWith(
                                      fontSize: 16,
                                      fontFamily: 'Mont-Bold',
                                    ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Traveler Tote',
                            style:
                                Theme.of(context).textTheme.headline2?.copyWith(
                                      fontSize: 14,
                                      fontFamily: 'Mont-Black',
                                    ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "\$ 500 ",
                            style:
                                Theme.of(context).textTheme.headline2?.copyWith(
                                      fontSize: 14,
                                      fontFamily: 'Mont-Black',
                                    ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 240,
                      width: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              width: 150,
                              height: 170,
                              color: ColorManger.colorWhite,
                              child: Image.asset(
                                'assets/images/image.png',
                                fit: BoxFit.fill,
                                height: double.infinity,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'title',
                            style:
                                Theme.of(context).textTheme.headline6?.copyWith(
                                      fontSize: 16,
                                      fontFamily: 'Mont-Bold',
                                    ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Traveler Tote',
                            style:
                                Theme.of(context).textTheme.headline2?.copyWith(
                                      fontSize: 14,
                                      fontFamily: 'Mont-Black',
                                    ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "\$ 500 ",
                            style:
                                Theme.of(context).textTheme.headline2?.copyWith(
                                      fontSize: 14,
                                      fontFamily: 'Mont-Black',
                                    ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 240,
                      width: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              width: 150,
                              height: 170,
                              color: ColorManger.colorWhite,
                              child: Image.asset(
                                'assets/images/image.png',
                                fit: BoxFit.fill,
                                height: double.infinity,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'title',
                            style:
                                Theme.of(context).textTheme.headline6?.copyWith(
                                      fontSize: 16,
                                      fontFamily: 'Mont-Bold',
                                    ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Traveler Tote',
                            style:
                                Theme.of(context).textTheme.headline2?.copyWith(
                                      fontSize: 14,
                                      fontFamily: 'Mont-Black',
                                    ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "\$ 500 ",
                            style:
                                Theme.of(context).textTheme.headline2?.copyWith(
                                      fontSize: 14,
                                      fontFamily: 'Mont-Black',
                                    ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 240,
                      width: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              width: 150,
                              height: 170,
                              color: ColorManger.colorWhite,
                              child: Image.asset(
                                'assets/images/image.png',
                                fit: BoxFit.fill,
                                height: double.infinity,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'title',
                            style:
                                Theme.of(context).textTheme.headline6?.copyWith(
                                      fontSize: 16,
                                      fontFamily: 'Mont-Bold',
                                    ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Traveler Tote',
                            style:
                                Theme.of(context).textTheme.headline2?.copyWith(
                                      fontSize: 14,
                                      fontFamily: 'Mont-Black',
                                    ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "\$ 500 ",
                            style:
                                Theme.of(context).textTheme.headline2?.copyWith(
                                      fontSize: 14,
                                      fontFamily: 'Mont-Black',
                                    ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 240,
                      width: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              width: 150,
                              height: 170,
                              color: ColorManger.colorWhite,
                              child: Image.asset(
                                'assets/images/image.png',
                                fit: BoxFit.fill,
                                height: double.infinity,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'title',
                            style:
                                Theme.of(context).textTheme.headline6?.copyWith(
                                      fontSize: 16,
                                      fontFamily: 'Mont-Bold',
                                    ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Traveler Tote',
                            style:
                                Theme.of(context).textTheme.headline2?.copyWith(
                                      fontSize: 14,
                                      fontFamily: 'Mont-Black',
                                    ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "\$ 500 ",
                            style:
                                Theme.of(context).textTheme.headline2?.copyWith(
                                      fontSize: 14,
                                      fontFamily: 'Mont-Black',
                                    ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 240,
                      width: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              width: 150,
                              height: 170,
                              color: ColorManger.colorWhite,
                              child: Image.asset(
                                'assets/images/image.png',
                                fit: BoxFit.fill,
                                height: double.infinity,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'title',
                            style:
                                Theme.of(context).textTheme.headline6?.copyWith(
                                      fontSize: 16,
                                      fontFamily: 'Mont-Bold',
                                    ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Traveler Tote',
                            style:
                                Theme.of(context).textTheme.headline2?.copyWith(
                                      fontSize: 14,
                                      fontFamily: 'Mont-Black',
                                    ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "\$ 500 ",
                            style:
                                Theme.of(context).textTheme.headline2?.copyWith(
                                      fontSize: 14,
                                      fontFamily: 'Mont-Black',
                                    ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 240,
                      width: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              width: 150,
                              height: 170,
                              color: ColorManger.colorWhite,
                              child: Image.asset(
                                'assets/images/image.png',
                                fit: BoxFit.fill,
                                height: double.infinity,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'title',
                            style:
                                Theme.of(context).textTheme.headline6?.copyWith(
                                      fontSize: 16,
                                      fontFamily: 'Mont-Bold',
                                    ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Traveler Tote',
                            style:
                                Theme.of(context).textTheme.headline2?.copyWith(
                                      fontSize: 14,
                                      fontFamily: 'Mont-Black',
                                    ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "\$ 500 ",
                            style:
                                Theme.of(context).textTheme.headline2?.copyWith(
                                      fontSize: 14,
                                      fontFamily: 'Mont-Black',
                                    ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 240,
                      width: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              width: 150,
                              height: 170,
                              color: ColorManger.colorWhite,
                              child: Image.asset(
                                'assets/images/image.png',
                                fit: BoxFit.fill,
                                height: double.infinity,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'title',
                            style:
                                Theme.of(context).textTheme.headline6?.copyWith(
                                      fontSize: 16,
                                      fontFamily: 'Mont-Bold',
                                    ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Traveler Tote',
                            style:
                                Theme.of(context).textTheme.headline2?.copyWith(
                                      fontSize: 14,
                                      fontFamily: 'Mont-Black',
                                    ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "\$ 500 ",
                            style:
                                Theme.of(context).textTheme.headline2?.copyWith(
                                      fontSize: 14,
                                      fontFamily: 'Mont-Black',
                                    ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 240,
                      width: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              width: 150,
                              height: 170,
                              color: ColorManger.colorWhite,
                              child: Image.asset(
                                'assets/images/image.png',
                                fit: BoxFit.fill,
                                height: double.infinity,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'title',
                            style:
                                Theme.of(context).textTheme.headline6?.copyWith(
                                      fontSize: 16,
                                      fontFamily: 'Mont-Bold',
                                    ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Traveler Tote',
                            style:
                                Theme.of(context).textTheme.headline2?.copyWith(
                                      fontSize: 14,
                                      fontFamily: 'Mont-Black',
                                    ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "\$ 500 ",
                            style:
                                Theme.of(context).textTheme.headline2?.copyWith(
                                      fontSize: 14,
                                      fontFamily: 'Mont-Black',
                                    ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 240,
                      width: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              width: 150,
                              height: 170,
                              color: ColorManger.colorWhite,
                              child: Image.asset(
                                'assets/images/image.png',
                                fit: BoxFit.fill,
                                height: double.infinity,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'title',
                            style:
                                Theme.of(context).textTheme.headline6?.copyWith(
                                      fontSize: 16,
                                      fontFamily: 'Mont-Bold',
                                    ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Traveler Tote',
                            style:
                                Theme.of(context).textTheme.headline2?.copyWith(
                                      fontSize: 14,
                                      fontFamily: 'Mont-Black',
                                    ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "\$ 500 ",
                            style:
                                Theme.of(context).textTheme.headline2?.copyWith(
                                      fontSize: 14,
                                      fontFamily: 'Mont-Black',
                                    ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 240,
                      width: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              width: 150,
                              height: 170,
                              color: ColorManger.colorWhite,
                              child: Image.asset(
                                'assets/images/image.png',
                                fit: BoxFit.fill,
                                height: double.infinity,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'title',
                            style:
                                Theme.of(context).textTheme.headline6?.copyWith(
                                      fontSize: 16,
                                      fontFamily: 'Mont-Bold',
                                    ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Traveler Tote',
                            style:
                                Theme.of(context).textTheme.headline2?.copyWith(
                                      fontSize: 14,
                                      fontFamily: 'Mont-Black',
                                    ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "\$ 500 ",
                            style:
                                Theme.of(context).textTheme.headline2?.copyWith(
                                      fontSize: 14,
                                      fontFamily: 'Mont-Black',
                                    ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 32,
              ),
              SizedBox(
                width: 140,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 80,
                    ),
                    SizedBox(
                      height: 240,
                      width: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              width: 150,
                              height: 170,
                              color: ColorManger.colorWhite,
                              child: Image.asset(
                                'assets/images/image.png',
                                fit: BoxFit.fill,
                                height: double.infinity,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'title',
                            style:
                                Theme.of(context).textTheme.headline6?.copyWith(
                                      fontSize: 16,
                                      fontFamily: 'Mont-Bold',
                                    ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Traveler Tote',
                            style:
                                Theme.of(context).textTheme.headline2?.copyWith(
                                      fontSize: 14,
                                      fontFamily: 'Mont-Black',
                                    ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "\$ 500 ",
                            style:
                                Theme.of(context).textTheme.headline2?.copyWith(
                                      fontSize: 14,
                                      fontFamily: 'Mont-Black',
                                    ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 240,
                      width: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              width: 150,
                              height: 170,
                              color: ColorManger.colorWhite,
                              child: Image.asset(
                                'assets/images/image.png',
                                fit: BoxFit.fill,
                                height: double.infinity,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'title',
                            style:
                                Theme.of(context).textTheme.headline6?.copyWith(
                                      fontSize: 16,
                                      fontFamily: 'Mont-Bold',
                                    ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Traveler Tote',
                            style:
                                Theme.of(context).textTheme.headline2?.copyWith(
                                      fontSize: 14,
                                      fontFamily: 'Mont-Black',
                                    ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "\$ 500 ",
                            style:
                                Theme.of(context).textTheme.headline2?.copyWith(
                                      fontSize: 14,
                                      fontFamily: 'Mont-Black',
                                    ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 240,
                      width: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              width: 150,
                              height: 170,
                              color: ColorManger.colorWhite,
                              child: Image.asset(
                                'assets/images/image.png',
                                fit: BoxFit.fill,
                                height: double.infinity,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'title',
                            style:
                                Theme.of(context).textTheme.headline6?.copyWith(
                                      fontSize: 16,
                                      fontFamily: 'Mont-Bold',
                                    ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Traveler Tote',
                            style:
                                Theme.of(context).textTheme.headline2?.copyWith(
                                      fontSize: 14,
                                      fontFamily: 'Mont-Black',
                                    ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "\$ 500 ",
                            style:
                                Theme.of(context).textTheme.headline2?.copyWith(
                                      fontSize: 14,
                                      fontFamily: 'Mont-Black',
                                    ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 240,
                      width: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              width: 150,
                              height: 170,
                              color: ColorManger.colorWhite,
                              child: Image.asset(
                                'assets/images/image.png',
                                fit: BoxFit.fill,
                                height: double.infinity,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'title',
                            style:
                                Theme.of(context).textTheme.headline6?.copyWith(
                                      fontSize: 16,
                                      fontFamily: 'Mont-Bold',
                                    ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Traveler Tote',
                            style:
                                Theme.of(context).textTheme.headline2?.copyWith(
                                      fontSize: 14,
                                      fontFamily: 'Mont-Black',
                                    ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "\$ 500 ",
                            style:
                                Theme.of(context).textTheme.headline2?.copyWith(
                                      fontSize: 14,
                                      fontFamily: 'Mont-Black',
                                    ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 240,
                      width: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              width: 150,
                              height: 170,
                              color: ColorManger.colorWhite,
                              child: Image.asset(
                                'assets/images/image.png',
                                fit: BoxFit.fill,
                                height: double.infinity,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'title',
                            style:
                                Theme.of(context).textTheme.headline6?.copyWith(
                                      fontSize: 16,
                                      fontFamily: 'Mont-Bold',
                                    ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Traveler Tote',
                            style:
                                Theme.of(context).textTheme.headline2?.copyWith(
                                      fontSize: 14,
                                      fontFamily: 'Mont-Black',
                                    ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "\$ 500 ",
                            style:
                                Theme.of(context).textTheme.headline2?.copyWith(
                                      fontSize: 14,
                                      fontFamily: 'Mont-Black',
                                    ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 240,
                      width: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              width: 150,
                              height: 170,
                              color: ColorManger.colorWhite,
                              child: Image.asset(
                                'assets/images/image.png',
                                fit: BoxFit.fill,
                                height: double.infinity,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'title',
                            style:
                                Theme.of(context).textTheme.headline6?.copyWith(
                                      fontSize: 16,
                                      fontFamily: 'Mont-Bold',
                                    ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Traveler Tote',
                            style:
                                Theme.of(context).textTheme.headline2?.copyWith(
                                      fontSize: 14,
                                      fontFamily: 'Mont-Black',
                                    ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "\$ 500 ",
                            style:
                                Theme.of(context).textTheme.headline2?.copyWith(
                                      fontSize: 14,
                                      fontFamily: 'Mont-Black',
                                    ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 240,
                      width: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              width: 150,
                              height: 170,
                              color: ColorManger.colorWhite,
                              child: Image.asset(
                                'assets/images/image.png',
                                fit: BoxFit.fill,
                                height: double.infinity,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'title',
                            style:
                                Theme.of(context).textTheme.headline6?.copyWith(
                                      fontSize: 16,
                                      fontFamily: 'Mont-Bold',
                                    ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Traveler Tote',
                            style:
                                Theme.of(context).textTheme.headline2?.copyWith(
                                      fontSize: 14,
                                      fontFamily: 'Mont-Black',
                                    ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "\$ 500 ",
                            style:
                                Theme.of(context).textTheme.headline2?.copyWith(
                                      fontSize: 14,
                                      fontFamily: 'Mont-Black',
                                    ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 240,
                      width: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              width: 150,
                              height: 170,
                              color: ColorManger.colorWhite,
                              child: Image.asset(
                                'assets/images/image.png',
                                fit: BoxFit.fill,
                                height: double.infinity,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'title',
                            style:
                                Theme.of(context).textTheme.headline6?.copyWith(
                                      fontSize: 16,
                                      fontFamily: 'Mont-Bold',
                                    ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Traveler Tote',
                            style:
                                Theme.of(context).textTheme.headline2?.copyWith(
                                      fontSize: 14,
                                      fontFamily: 'Mont-Black',
                                    ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "\$ 500 ",
                            style:
                                Theme.of(context).textTheme.headline2?.copyWith(
                                      fontSize: 14,
                                      fontFamily: 'Mont-Black',
                                    ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 240,
                      width: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              width: 150,
                              height: 170,
                              color: ColorManger.colorWhite,
                              child: Image.asset(
                                'assets/images/image.png',
                                fit: BoxFit.fill,
                                height: double.infinity,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'title',
                            style:
                                Theme.of(context).textTheme.headline6?.copyWith(
                                      fontSize: 16,
                                      fontFamily: 'Mont-Bold',
                                    ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Traveler Tote',
                            style:
                                Theme.of(context).textTheme.headline2?.copyWith(
                                      fontSize: 14,
                                      fontFamily: 'Mont-Black',
                                    ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "\$ 500 ",
                            style:
                                Theme.of(context).textTheme.headline2?.copyWith(
                                      fontSize: 14,
                                      fontFamily: 'Mont-Black',
                                    ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 240,
                      width: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              width: 150,
                              height: 170,
                              color: ColorManger.colorWhite,
                              child: Image.asset(
                                'assets/images/image.png',
                                fit: BoxFit.fill,
                                height: double.infinity,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'title',
                            style:
                                Theme.of(context).textTheme.headline6?.copyWith(
                                      fontSize: 16,
                                      fontFamily: 'Mont-Bold',
                                    ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Traveler Tote',
                            style:
                                Theme.of(context).textTheme.headline2?.copyWith(
                                      fontSize: 14,
                                      fontFamily: 'Mont-Black',
                                    ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "\$ 500 ",
                            style:
                                Theme.of(context).textTheme.headline2?.copyWith(
                                      fontSize: 14,
                                      fontFamily: 'Mont-Black',
                                    ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 240,
                      width: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              width: 150,
                              height: 170,
                              color: ColorManger.colorWhite,
                              child: Image.asset(
                                'assets/images/image.png',
                                fit: BoxFit.fill,
                                height: double.infinity,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'title',
                            style:
                                Theme.of(context).textTheme.headline6?.copyWith(
                                      fontSize: 16,
                                      fontFamily: 'Mont-Bold',
                                    ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Traveler Tote',
                            style:
                                Theme.of(context).textTheme.headline2?.copyWith(
                                      fontSize: 14,
                                      fontFamily: 'Mont-Black',
                                    ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "\$ 500 ",
                            style:
                                Theme.of(context).textTheme.headline2?.copyWith(
                                      fontSize: 14,
                                      fontFamily: 'Mont-Black',
                                    ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
