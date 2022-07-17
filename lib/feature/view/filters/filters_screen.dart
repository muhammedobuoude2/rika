import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:rikaa/feature/view/filters/range_slider.dart';
import 'package:rikaa/feature/view/filters/rating_checkbox.dart';

import '../../../dilog.dart';
import '../../core/color_manger.dart';
import '../mine_page/product_item_page_four.dart';
import '../mine_page/widget_custom_tabbar.dart';
import '../widget/widget_button_custom.dart';
import '../widget/widget_custom_tabbar_two.dart';

// ignore: camel_case_types
class Filters_Screen extends StatefulWidget {
  const Filters_Screen({Key? key}) : super(key: key);

  @override
  State<Filters_Screen> createState() => _Filters_ScreenState();
}

// ignore: camel_case_types
class _Filters_ScreenState extends State<Filters_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SafeArea(
      child: ListView(
        shrinkWrap: false,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(vertical: 45, horizontal: 25),
        children: [
          Row(
            children: [
              InkWell(
                child: SvgPicture.asset(
                  'assets/svg/back_flat.svg',
                  width: 35,
                  height: 35,
                ),
                onTap: () {
                  Get.to(() => const ProductItemPageFour());
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
          const SizedBox(height: 30),
          Text('Categories',
              style: Theme.of(context).textTheme.headline6?.copyWith(
                    color: ColorManger.colorBlack,
                    fontFamily: 'Mont-Bold',
                    fontSize: 16,
                  )),
          const SizedBox(
            height: 20,
          ),
          FractionalTranslation(
            translation: const Offset(0, 0),
            child: SizedBox(
              width: double.infinity,
              height: 110,
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                alignment: WrapAlignment.center,
                spacing: 7,
                runSpacing: 7,
                children: [
                  CustomTabBarScreen(
                      title: 'Jeans', colorBack: ColorManger.colorBlack),
                  CustomTabBarScreen(
                      title: 'Jeans', colorBack: ColorManger.colorBlack),
                  CustomTabBarScreen(
                      title: 'Jeans', colorBack: ColorManger.colorBlack),
                  CustomTabBarScreen(
                      title: 'Jeans', colorBack: ColorManger.colorBlack),
                  CustomTabBarScreen(
                      title: 'Jeans', colorBack: ColorManger.colorBlack),
                  CustomTabBarScreen(
                      title: 'Jeans', colorBack: ColorManger.colorBlack),
                  CustomTabBarScreen(
                      title: 'Jeans', colorBack: ColorManger.colorBlack),
                  CustomTabBarScreen(
                      title: 'Jeans', colorBack: ColorManger.colorBlack),
                  CustomTabBarScreen(
                      title: 'Jeans', colorBack: ColorManger.colorBlack),
                  CustomTabBarScreen(
                      title: 'Jeans', colorBack: ColorManger.colorBlack),
                  CustomTabBarScreen(
                      title: 'Jeans', colorBack: ColorManger.colorBlack),
                  CustomTabBarScreen(
                      title: 'Jeans', colorBack: ColorManger.colorBlack),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            'Price Range',
            style: Theme.of(context).textTheme.headline6?.copyWith(
                  color: ColorManger.colorBlack,
                  fontFamily: 'Mont-Bold',
                  fontSize: 16,
                ),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: ColorManger.colorBlack4,
                    blurRadius: 10,
                    offset: const Offset(2, 2),
                  ),
                ],
              ),
              child: const SliderRange()),
          const SizedBox(
            height: 30,
          ),
          Text(
            'Sort by',
            style: Theme.of(context).textTheme.headline6?.copyWith(
                  color: ColorManger.colorBlack,
                  fontFamily: 'Mont-Bold',
                  fontSize: 16,
                ),
          ),
          const SizedBox(
            height: 18,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTabBarScreenTwo(
                title: 'New This Week',
                colorBack: ColorManger.colorBlack,
              ),
              const Spacer(),
              CustomTabBarScreenTwo(
                colorBorder: ColorManger.colorBlack8,
                title: 'Top Sellers',
                style: Theme.of(context).textTheme.headline4?.copyWith(
                    color: Colors.black,
                    fontSize: 13,
                    fontFamily: 'Mont-SemiBold'),
                colorBack: ColorManger.transparentColor,
              ),
              const Spacer(),
              CustomTabBarScreenTwo(
                colorBorder: ColorManger.colorBlack8,
                title: 'New Today',
                colorBack: ColorManger.transparentColor,
                style: Theme.of(context).textTheme.headline4?.copyWith(
                    color: Colors.black,
                    fontSize: 13,
                    fontFamily: 'Mont-SemiBold'),
              ),
              const Spacer(),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Ratting',
            style: Theme.of(context).textTheme.headline6?.copyWith(
                  color: ColorManger.colorBlack,
                  fontFamily: 'Mont-Bold',
                  fontSize: 16,
                ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Rating_checkbox(),
          WidgetButtonCustom(
            onTap: () {
              Get.defaultDialog(
                  contentPadding: const EdgeInsets.all(0),
                  titlePadding: const EdgeInsets.all(0),
                  title: '',
                  content: const DilogScreen());
            },
            backgroundColor: ColorManger.colorBlack,
            colorsBorderSide: ColorManger.colorBlack,
            textBody: 'Apply Now',
          )
        ],
      ),
    )));
  }
}
