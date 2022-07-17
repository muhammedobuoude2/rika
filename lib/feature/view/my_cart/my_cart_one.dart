import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:rikaa/feature/core/color_manger.dart';

import '../mine_page/product_item_page_four.dart';

class MyCartOne extends StatefulWidget {
  const MyCartOne({Key? key}) : super(key: key);

  @override
  State<MyCartOne> createState() => _MyCartOneState();
}

class _MyCartOneState extends State<MyCartOne> {
  final List<String> _values = ['One', 'Two', 'Three'];

  final List<String> _path = [
    'assets/images/Bags.png',
    'assets/images/Shoese.png',
    'assets/images/jewelry.png'
  ];
  final List<String> _title = [
    'Roller Rabbit',
    'Axel Arigato',
    'Herschel Supply Co.'
  ];
  final List<String> _description = [
    'Vado Odelle Dress',
    'Clean 90 Triole Snakers',
    'Daypack Backpack'
  ];
  final _price = [100, 1312, 123];

  int num = 1;

  @override
  Widget build(BuildContext context) {
    int valucount = _values.length;
    var sum = 0;

    for (var i = 0; i < _price.length; i++) {
      sum += _price[i];
    }

    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 45),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
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
                        width: 35,
                        height: 35,
                      )),
                ],
              ),
              const SizedBox(
                height: 28,
              ),
              Text(
                'My Cart',
                textAlign: TextAlign.left,
                style: Theme.of(context).textTheme.headline6?.copyWith(
                      color: Colors.black,
                      fontFamily: 'Mont-Bold',
                      fontSize: 18,
                    ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: _values.length,
                    padding: const EdgeInsets.all(5.0),
                    separatorBuilder: (context, index) => const SizedBox(
                          height: 15,
                        ),
                    itemBuilder: (context, index) {
                      return Dismissible(
                          key: Key('item ${_values[index]}'),
                          onDismissed: (DismissDirection direction) {
                            if (direction == DismissDirection.startToEnd) {
                              // ignore: avoid_print
                              print("Remove item");
                            } else {
                              // ignore: avoid_print
                              print('Remove item');
                            }

                            setState(() {
                              _values.removeAt(index);
                            });
                          },
                          background: Container(
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius:
                                    BorderRadiusDirectional.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SvgPicture.asset('assets/svg/delate.svg',
                                      color: Colors.white),
                                ],
                              ),
                            ),
                          ),
                          secondaryBackground: Container(
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius:
                                    BorderRadiusDirectional.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SvgPicture.asset('assets/svg/delate.svg',
                                      color: Colors.white),
                                ],
                              ),
                            ),
                          ),
                          child: ListView(
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            children: [
                              const SizedBox(
                                height: 15,
                              ),
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: ColorManger.colorWhite,
                                  borderRadius:
                                      BorderRadiusDirectional.circular(13),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(.1),
                                      offset: const Offset(0, 5),
                                    ),
                                  ],
                                ),
                                height: 100,
                                child: Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(_path[index])),
                                          borderRadius:
                                              BorderRadiusDirectional.circular(
                                                  10)),
                                      width: 80,
                                      height: 80,
                                    ),
                                    const SizedBox(
                                      width: 6,
                                    ),
                                    SizedBox(
                                      width: 140,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            _title[index],
                                            textAlign: TextAlign.left,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline6
                                                ?.copyWith(
                                                    color:
                                                        ColorManger.colorBlack,
                                                    fontFamily: 'Mont-SemiBold',
                                                    fontSize: 14),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            _description[index],
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline5
                                                ?.copyWith(
                                                    color:
                                                        ColorManger.colorBlack2,
                                                    fontFamily: 'Mont-Regular',
                                                    fontSize: 12),
                                          ),
                                          const Spacer(),
                                          Text(
                                            '\$${_price[index]}',
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline6
                                                ?.copyWith(
                                                    color:
                                                        ColorManger.colorBlack,
                                                    fontFamily: 'Mont-Bold',
                                                    fontSize: 14),
                                          )
                                        ],
                                      ),
                                    ),
                                    const Spacer(),
                                    Column(
                                      children: [
                                        const Spacer(),
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          decoration: BoxDecoration(
                                              color: ColorManger.colorBlack4,
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          width: 70,
                                          height: 30,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              InkWell(
                                                  child: Text(
                                                '-',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline5
                                                    ?.copyWith(
                                                        fontSize: 14,
                                                        fontFamily:
                                                            'Mont-Regular'),
                                              )),
                                              const Spacer(),
                                              Text(
                                                '$num',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline5
                                                    ?.copyWith(
                                                        fontSize: 14,
                                                        fontFamily:
                                                            'Mont-Regular'),
                                              ),
                                              const Spacer(),
                                              InkWell(
                                                onTap: () {},
                                                child: Text(
                                                  '+',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .headline5
                                                      ?.copyWith(
                                                          fontSize: 14,
                                                          fontFamily:
                                                              'Mont-Regular'),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ));
                    }),
              ),
              Row(
                children: [
                  Text('Total ($valucount item) :',
                      style: Theme.of(context).textTheme.headline6?.copyWith(
                          color: ColorManger.colorBlack6,
                          fontFamily: 'Mont-SemiBold',
                          fontSize: 14)),
                  const Spacer(),
                  Text(' \$$sum',
                      style: Theme.of(context).textTheme.headline6?.copyWith(
                          color: ColorManger.colorBlack,
                          fontFamily: 'Mont-SemiBold',
                          fontWeight: FontWeight.bold,
                          fontSize: 20))
                ],
              ),
              const SizedBox(
                height: 27,
              ),
              Container(
                decoration: BoxDecoration(
                    color: ColorManger.colorBlack,
                    borderRadius: BorderRadiusDirectional.circular(10)),
                width: double.infinity,
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Text(
                        'Proceed to Checkout',
                        style: Theme.of(context).textTheme.headline5?.copyWith(
                            fontSize: 16,
                            fontFamily: 'Mont-SemiBold',
                            color: Colors.white),
                      ),
                      const Spacer(),
                      InkWell(
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadiusDirectional.circular(7)),
                            width: 30,
                            height: 30,
                            child: Center(
                              child: SvgPicture.asset(
                                'assets/svg/nextblack.svg',
                              ),
                            )),
                      )
                    ],
                  ),
                ),
              ),
            ]),
      ),
    ));
  }
}
