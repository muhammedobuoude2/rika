import 'package:flutter/material.dart';
  import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:rikaa/feature/view/mine_page/product_Data.dart';
import 'package:rikaa/feature/view/mine_page/widget_custom_text_product.dart';

import '../../core/color_manger.dart';
import '../mine_page/product_item_page_four.dart';

class ProductCategorOneScreen extends StatefulWidget {
  const ProductCategorOneScreen({Key? key}) : super(key: key);

  @override
  State<ProductCategorOneScreen> createState() =>
      _ProductCategorOneScreenState();
}

class _ProductCategorOneScreenState extends State<ProductCategorOneScreen> {
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
              const SizedBox(
                height: 40,
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
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
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
            ])));
  }
}
