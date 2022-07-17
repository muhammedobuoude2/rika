import 'package:flutter/material.dart';
  
import '../../core/color_manger.dart';

class SliderRange extends StatefulWidget {
  const SliderRange({Key? key}) : super(key: key);

  @override
  State<SliderRange> createState() => _SliderRangeState();
}

class _SliderRangeState extends State<SliderRange> {
  RangeValues _currentRangeValues = const RangeValues(0, 400);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: ColorManger.colorBlack4,
              blurRadius: 10,
              offset: const Offset(2, 2),
            ),
          ],
        ),
        child: Column(
          children: [
            RangeSlider(
              activeColor: ColorManger.colorBlack,
              inactiveColor: ColorManger.colorBlack4,
              values: _currentRangeValues,
              max: 1000,
              divisions: 10,
              onChanged: (RangeValues values) {
                setState(() {
                  _currentRangeValues = values;
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 15, top: 10, bottom: 10),
              child: Row(
                children: [
                  Text(
                    '0',
                    style: Theme.of(context).textTheme.headline5?.copyWith(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Mont-SemiBold'),
                  ),
                  const Spacer(),
                  Text(
                    '      500',
                    style: Theme.of(context).textTheme.headline5?.copyWith(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Mont-SemiBold'),
                  ),
                  const Spacer(),
                  Text(' 1000',
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Mont-SemiBold'))
                ],
              ),
            ),
          ],
        ));
  }
}
