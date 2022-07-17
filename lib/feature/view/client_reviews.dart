import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../core/color_manger.dart';
import 'mine_page/product_item_page_four.dart';

class ClinetReviews extends StatefulWidget {
  const ClinetReviews({Key? key}) : super(key: key);

  @override
  State<ClinetReviews> createState() => _ClinetReviewsState();
}

class _ClinetReviewsState extends State<ClinetReviews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SafeArea(
                child: ListView(
                    shrinkWrap: false,
                    physics: const BouncingScrollPhysics(),
                    padding: const EdgeInsets.symmetric(
                        vertical: 45, horizontal: 25),
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
                    'assets/svg/cart.svg',
                    width: 30,
                    height: 30,
                  )),
            ],
          ),
          const SizedBox(height: 30),
          Text('Reviews Client',
              style: Theme.of(context).textTheme.headline6?.copyWith(
                    color: ColorManger.colorBlack,
                    fontFamily: 'Mont-Bold',
                    fontSize: 18,
                  )),
          const SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Container(
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.red,
                  boxShadow: [
                    BoxShadow(
                      color: ColorManger.colorBlack3,
                      blurRadius: 15,
                      offset: const Offset(4, 2),
                    ),
                  ],
                ),
                child: Row(
                  children: [Image.asset('assets/images/review1.png')],
                ),
              ),
            ],
          )
        ]))));
  }
}
