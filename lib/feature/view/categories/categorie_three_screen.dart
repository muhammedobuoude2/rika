 
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:rikaa/feature/core/color_manger.dart';
import 'package:rikaa/feature/view/categories/categorie_two_screen.dart';
import 'package:rikaa/feature/view/categories/categorie_desin.dart';
import 'package:rikaa/feature/view/categories/categroie2_Data.dart';

import '../mine_page/product_item_page_four.dart';

 
class CategorieThreeScreen extends StatefulWidget {
  const CategorieThreeScreen({Key? key}) : super(key: key);

  @override
  State<CategorieThreeScreen> createState() => _CategorieThreeScreenState();
}

class _CategorieThreeScreenState extends State<CategorieThreeScreen> {
  get boardController => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManger.colorWhite,
        body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.all(25),
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
                              Get.to(const ProductItemPageFour());
                            },
                          ),
                          const Spacer(),
                          InkWell(
                            child: Image.asset(
                              'assets/images/networkIcon.jpg',
                              width: 35,
                              height: 35,
                            ),
                            onTap: () {
                              Get.to(const CategorieTwoScreen());
                            },
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
                              Get.to(const CategorieTwoScreen());
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
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 20),
                          child: SvgPicture.asset(
                            'assets/svg/search.svg',
                            width: 10,
                            height: 20,
                          ),
                        ),
                        hintText: "Search Categories",
                        hintStyle:
                            Theme.of(context).textTheme.headline6?.copyWith(
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
                        child: GridView(
                          gridDelegate:
                              const SliverGridDelegateWithMaxCrossAxisExtent(
                                  maxCrossAxisExtent: 200,
                                  childAspectRatio: 7 / 8,
                                  mainAxisSpacing: 10,
                                  crossAxisSpacing: 10),
                          // ignore: non_constant_identifier_names
                          children: CategorieData.map((Data) => CategorieDesin(
                                imageurl: Data.PathImage,
                                title: Data.title,
                                countCategroie: Data.countCategroie,
                              )).toList(),
                        ),
                      ),
                    ]))));
  }
}

            
            
//           ]),
