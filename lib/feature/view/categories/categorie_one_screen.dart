import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:rikaa/feature/core/color_manger.dart';
import 'package:rikaa/feature/view/categories/categorie_two_screen.dart';
 
 import '../mine_page/product_item_page_four.dart';
import 'widget_categrios_one.dart';

class CategorieOneScreen extends StatefulWidget {
  const CategorieOneScreen({Key? key}) : super(key: key);

  @override
  State<CategorieOneScreen> createState() => _CategorieOneScreenState();
}

class _CategorieOneScreenState extends State<CategorieOneScreen> {
  get boardController => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManger.colorWhite,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 44,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 1,
                  ),
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
                  Expanded(
                    child: InkWell(
                      child: Image.asset(
                        'assets/images/networkIcon.jpg',
                        width: 35,
                        height: 35,
                      ),
                      onTap: () {
                        Get.to(() => const CategorieTwoScreen());
                      },
                    ),
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
                height: 30,
              ),
              Text(
                'Categories',
                style: Theme.of(context).textTheme.headline6?.copyWith(
                    fontSize: 24,
                    fontFamily: 'Mont-Bold.otf',
                    fontWeight: FontWeight.bold),
              ),
              // ignore: prefer_const_literals_to_create_immutables
              const SizedBox(
                height: 50,
              ),
              Expanded(
                  child: ListView(
                children: [
                  WidgetCategriosOne(
                    onTap: () {},
                    colorsBorderSide: ColorManger.colorBlack,
                    backgroundColor: ColorManger.colorBlack,
                    countCategorise: 208,
                    nameCategorise: 'New Arrivals',
                    pathIcon: 'assets/svg/NewArrivalsIcon.svg',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  WidgetCategriosOne(
                    onTap: () {},
                    colorsBorderSide: ColorManger.colorBlack,
                    backgroundColor: ColorManger.colorBlack,
                    countCategorise: 358,
                    nameCategorise: 'Clothes',
                    pathIcon: 'assets/svg/ClothesIcons.svg',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  WidgetCategriosOne(
                    onTap: () {},
                    colorsBorderSide: ColorManger.colorBlack,
                    backgroundColor: ColorManger.colorBlack,
                    countCategorise: 160,
                    nameCategorise: 'Bags',
                    pathIcon: 'assets/svg/BagsIcon.svg',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  WidgetCategriosOne(
                    onTap: () {},
                    colorsBorderSide: ColorManger.colorBlack,
                    backgroundColor: ColorManger.colorBlack,
                    countCategorise: 230,
                    nameCategorise: 'Shoese',
                    pathIcon: 'assets/svg/ShoeseIcon.svg',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  WidgetCategriosOne(
                    onTap: () {},
                    colorsBorderSide: ColorManger.colorBlack,
                    backgroundColor: ColorManger.colorBlack,
                    countCategorise: 130,
                    nameCategorise: 'Electronics',
                    pathIcon: 'assets/svg/ElectronicsIcon.svg',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  WidgetCategriosOne(
                    onTap: () {},
                    colorsBorderSide: ColorManger.colorBlack,
                    backgroundColor: ColorManger.colorBlack,
                    countCategorise: 78,
                    nameCategorise: 'Jewelry',
                    pathIcon: 'assets/svg/JewelryIcon.svg',
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
