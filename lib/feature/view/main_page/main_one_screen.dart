// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:rika_store/feature/view/main_page/product_Data.dart';
import 'package:rika_store/feature/view/main_page/widget_custom_slider.dart';
  
import '../../core/color_manger.dart';
import 'product_item_page_four.dart';
import 'widget_custom_text_product.dart';

class MainOneScreen extends StatefulWidget {
  const MainOneScreen({Key? key}) : super(key: key);

  @override
  State<MainOneScreen> createState() => _MainOneScreenState();
}

class _MainOneScreenState extends State<MainOneScreen> {
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
                    child: Image.asset(
                      'assets/images/user.png',
                      width: 40,
                      height: 40,
                    )),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome,',
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Mont-Bold')),
                Text('Our Rika Fashion App',
                    style: Theme.of(context).textTheme.headline2?.copyWith(
                        color: Colors.black.withOpacity(0.4),
                        fontSize: 20,
                        fontFamily: 'Mont-Black')),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 280,
                      height: 50,
                      child: TextField(
                          decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color.fromARGB(255, 235, 235, 235),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 20),
                          child: SvgPicture.asset(
                            'assets/svg/search.svg',
                            width: 10,
                            height: 20,
                          ),
                        ),
                        hintText: "Search...",
                        hintStyle:
                            Theme.of(context).textTheme.headline6?.copyWith(
                                  color: ColorManger.colorBlack3,
                                  fontSize: 16,
                                  fontFamily: 'Mont.otf',
                                ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: const BorderSide(
                            width: 0.1,
                            color: Color.fromARGB(255, 210, 212, 212),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: const BorderSide(
                            color: Color.fromARGB(255, 241, 241, 241),
                            width: 0.1,
                          ),
                        ),
                      )),
                    ),
                    const Spacer(),
                    InkWell(
                        onTap: () {},
                        child: SvgPicture.asset(
                          'assets/svg/filtterIcon.svg',
                          width: 50,
                          height: 50,
                        )),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 150,
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
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
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
            GridView(
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
            )
          ])),
    );
  }
}
