// ignore_for_file: file_names, avoid_unnecessary_containers, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:rika_store/feature/view/main_page/widget_custom_tabbar.dart';
 
import '../../core/color_manger.dart';
 import 'categorie_data.dart';
import 'product_item_page_four.dart';
import 'categori_desine.dart';

class MainTwoScreen extends StatefulWidget {
  const MainTwoScreen({Key? key}) : super(key: key);

  @override
  State<MainTwoScreen> createState() => _MainTwoScreenState();
}

class _MainTwoScreenState extends State<MainTwoScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);

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
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                    Expanded(
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
                    const SizedBox(
                      width: 10,
                    ),
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
                Container(
                    clipBehavior: Clip.hardEdge,
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.08),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    height: 120,
                    width: double.infinity,
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(10),
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                                child: Image.asset(
                              'assets/images/AxelArigato.png',
                              width: 80,
                              height: 80,
                            )),
                            const Spacer(),
                            SizedBox(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      'Axel Arigato',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6
                                          ?.copyWith(
                                              color: ColorManger.colorBlack,
                                              fontFamily: 'Mont-Black',
                                              fontSize: 14),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Clean 90 Triple Sneakers',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline2
                                          ?.copyWith(
                                              color: ColorManger.colorBlack
                                                  .withOpacity(0.3),
                                              fontFamily: 'Mont-Black',
                                              fontSize: 11),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      '\$245.00',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6
                                          ?.copyWith(
                                              color: ColorManger.colorBlack,
                                              fontFamily: 'Mont-Black',
                                              fontSize: 14),
                                    ),
                                    const Spacer(),
                                  ]),
                            ),
                            const Spacer(),
                            const SizedBox(
                              width: 20,
                              height: 10,
                            ),
                            SizedBox(
                              width: 40,
                              height: 40,
                              child: SizedBox(
                                width: 40,
                                height: 40,
                                child: InkWell(
                                  onTap: () {
                                    Get.to(const ProductItemPageFour());
                                  },
                                  child: SvgPicture.asset(
                                    'assets/svg/nextIcon.svg',
                                    width: 30,
                                    height: 30,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Categories',
                  style: Theme.of(context).textTheme.headline6?.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: 'Mont-Bold'),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  color: Colors.white,
                  height: 50,
                  width: double.infinity,
                  child: TabBar(
                      indicatorColor: Colors.red,
                      controller: _tabController,
                      tabs: [
                        Tab(
                            child: CustomTabBarScreen(
                                title: 'Dresses',
                                colorBack: ColorManger.colorBlack)),
                        Tab(
                            child: CustomTabBarScreen(
                                title: 'Jackets',
                                colorBack: ColorManger.colorBlack)),
                        Tab(
                            child: CustomTabBarScreen(
                                title: 'Jeans',
                                colorBack: ColorManger.colorBlack)),
                      ]),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  color: ColorManger.colorWhite,
                  height: 600,
                  width: double.infinity,
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      SingleChildScrollView(
                        physics: const NeverScrollableScrollPhysics(),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Top Dresses',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline6
                                      ?.copyWith(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          fontFamily: 'Mont-Bold'),
                                ),
                                const Spacer(),
                                Text(
                                  'View All',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline3
                                      ?.copyWith(
                                          color: Colors.black,
                                          fontSize: 11,
                                          fontFamily: 'Mont-SemiBold'),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            GridView(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),

                              gridDelegate:
                                  const SliverGridDelegateWithMaxCrossAxisExtent(
                                      maxCrossAxisExtent: 200,
                                      childAspectRatio: 7 / 8,
                                      mainAxisSpacing: 10,
                                      crossAxisSpacing: 10),
                              // ignore: non_constant_identifier_names
                              children:
                                  CategorieData.map((Data) => CategorieDesinOne(
                                        imageurl: Data.PathImage,
                                        title: Data.title,
                                        countCategroie: Data.countCategroie,
                                      )).toList(),
                            ),
                          ],
                        ),
                      ),
                      GridView(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),

                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                                maxCrossAxisExtent: 200,
                                childAspectRatio: 7 / 8,
                                mainAxisSpacing: 10,
                                crossAxisSpacing: 10),
                        // ignore: non_constant_identifier_names
                        children: CategorieData.map((Data) => CategorieDesinOne(
                              imageurl: Data.PathImage,
                              title: Data.title,
                              countCategroie: Data.countCategroie,
                            )).toList(),
                      ),
                      const Text('data'),
                    ],
                  ),
                ),
              ])
            ])));
  }
}
