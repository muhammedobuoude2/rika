// ignore_for_file: prefer_final_fields, file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:rika_store/feature/view/main_page/widget_custom_tabbar.dart';
 
import '../../core/color_manger.dart';
import 'product_item_page_four.dart';

class MainFourScreen extends StatefulWidget {
  const MainFourScreen({Key? key}) : super(key: key);

  @override
  State<MainFourScreen> createState() => _MainFourScreenState();
}

class _MainFourScreenState extends State<MainFourScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);

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
              Row(children: [
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
                    hintStyle: Theme.of(context).textTheme.headline6?.copyWith(
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
              ]),
              const SizedBox(
                height: 20,
              ),
              Container(
                color: Colors.white,
                height: 50,
                width: double.infinity,
                child: TabBar(
                    indicatorColor: ColorManger.colorBlack2,
                    controller: tabController,
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
              Container(
                color: ColorManger.colorWhite,
                height: 1000,
                width: double.infinity,
                child: TabBarView(
                  controller: tabController,
                  children: const [
                    ProductItemPageFour(),
                    ProductItemPageFour(),
                    ProductItemPageFour()
                  ],
                ),
              ),
            ])));
  }
}
