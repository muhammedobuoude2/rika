// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:rika_store/feature/view/main_page/widget_custom_text_product.dart';
  
import '../../core/color_manger.dart';
import 'product_item_page_four.dart';
import 'widget_custom_slider.dart';
import 'item_categrois_data.dart';
import 'product_Data.dart';

class MainThreeScreen extends StatefulWidget {
  const MainThreeScreen({Key? key}) : super(key: key);

  @override
  State<MainThreeScreen> createState() => _MainThreeScreenState();
}

class _MainThreeScreenState extends State<MainThreeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManger.colorWhite,
        body: SafeArea(
            child: ListView(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.all(25),
                children: [
              Row(
                children: [
                  InkWell(
                    child: SvgPicture.asset(
                      'assets/svg/menu.svg',
                      width: 35,
                      height: 35,
                    ),
                    onTap: () {
                      Get.to(const ProductItemPageFour());
                    },
                  ),
                  const Spacer(),
                  InkWell(
                      onTap: () {},
                      child: SvgPicture.asset(
                        'assets/svg/search.svg',
                        width: 20,
                        height: 20,
                      )),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 160,
                width: double.infinity,
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: const [
                    WidgetCustomSlider(
                        imagePath: 'assets/images/slider1.png',
                        title: '50% Off',
                        bodyTitle: 'On everything today',
                        code: 'rikafashion2021',
                        titleButton: 'Get Now'),
                    SizedBox(
                      width: 20,
                    ),
                    WidgetCustomSlider(
                        imagePath: 'assets/images/slider2.png',
                        title: '70% Off',
                        bodyTitle: 'On everything today',
                        code: 'rikafashion2021',
                        titleButton: 'Get Now'),
                    SizedBox(
                      width: 20,
                    ),
                    WidgetCustomSlider(
                        imagePath: 'assets/images/slider2.png',
                        title: '70% Off',
                        bodyTitle: 'On everything today',
                        code: 'rikafashion2021',
                        titleButton: 'Get Now'),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                child: Row(
                  children: [
                    Text(
                      'New Arrivals',
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontFamily: 'Mont-Bold'),
                    ),
                    const Spacer(),
                    Text(
                      'View All',
                      style: Theme.of(context).textTheme.headline4?.copyWith(
                          fontSize: 12,
                          color: Colors.black,
                          fontFamily: 'Mont-Bold'),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 280,
                width: double.infinity,
                child: GridView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),

                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 260,
                      childAspectRatio: 5 / 8,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 15),
                  // ignore: non_constant_identifier_names
                  children: productData
                      // ignore: non_constant_identifier_names
                      .map((Data) => WidgetCustomTextProduct(
                            title: Data.title,
                            body: Data.body,
                            imagepath: Data.imagepath,
                            price: Data.price,
                          ))
                      .toList(),
                ),
              ),
              InkWell(
                child: Row(
                  children: [
                    Text(
                      'Popular',
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontFamily: 'Mont-Bold'),
                    ),
                    const Spacer(),
                    Text(
                      'View All',
                      style: Theme.of(context).textTheme.headline4?.copyWith(
                          fontSize: 12,
                          color: Colors.black,
                          fontFamily: 'Mont-Bold'),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const ItemLastCart(),
              const ItemLastCart(),
              const ItemLastCart()
            ])));
  }
}
