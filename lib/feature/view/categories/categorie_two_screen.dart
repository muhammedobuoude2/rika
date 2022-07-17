import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:rikaa/feature/core/color_manger.dart';
import 'package:rikaa/feature/view/categories/categorie_one_screen.dart';
import 'package:rikaa/feature/view/categories/categorie_three_screen.dart';
import 'package:rikaa/feature/view/categories/widget_categrios_twoo.dart';

import '../mine_page/product_item_page_four.dart';
 
class CategorieTwoScreen extends StatefulWidget {
  const CategorieTwoScreen({Key? key}) : super(key: key);

  @override
  State<CategorieTwoScreen> createState() => _CategorieTwoScreenState();
}

class _CategorieTwoScreenState extends State<CategorieTwoScreen> {
  get boardController => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManger.colorWhite,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                    Get.to(const ProductItemPageFour());
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
                      Get.to(const CategorieOneScreen());
                    },
                  ),
                ),
                const Spacer(),
                InkWell(
                  child: Image.asset(
                    'assets/images/networkIcon.jpg',
                    color: Colors.white,
                    width: 35,
                    height: 35,
                  ),
                  onTap: () {
                    Get.to(const CategorieThreeScreen());
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            TextField(
                decoration: InputDecoration(
              filled: true,
              fillColor: const Color.fromARGB(255, 235, 235, 235),
              prefixIcon: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: SvgPicture.asset(
                  'assets/svg/search.svg',
                  width: 10,
                  height: 20,
                ),
              ),
              hintText: "Search Categories",
              hintStyle: Theme.of(context).textTheme.headline6?.copyWith(
                    color: ColorManger.colorBlack3,
                    fontSize: 18,
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
            const SizedBox(
              height: 30,
            ),
            Expanded(
                child: ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(
                height: 20,
              ),
              itemBuilder: ((context, index) => const WidgetCategriosTwoo(
                  pathImage: 'assets/images/WidgetCategrios22.png',
                  textTitle: 'Clothes',
                  Count_Product: 208)),
              itemCount: 6,
            ))
          ]
                  // Positioned(
                  //   child: Image.asset(
                  //     'assets/images/NewArrivalsImages.png',
                  //     width: double.infinity,
                  //     height: double.infinity,
                  //   ),
                  // ),
                  // Positioned(
                  //     top: 40,
                  //     left: 20,
                  //     bottom: 10,
                  //     child: Text('New Arrivals',
                  //         style: Theme.of(context)
                  //             .textTheme
                  //             .headline6
                  //             ?.copyWith(
                  //                 color: ColorManger.colorBlack,
                  //                 fontFamily: 'Mont-Bold',
                  //                 fontWeight: FontWeight.bold,
                  //                 fontSize: 18)))

                  ),
        )));
  }
}
