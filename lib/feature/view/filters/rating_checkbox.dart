// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Rating_checkbox extends StatefulWidget {
  const Rating_checkbox({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _Rating_checkbox createState() => _Rating_checkbox();
}

class _Rating_checkbox extends State<Rating_checkbox> {
   bool value_two = false;
  bool value_three = false;
  bool value_four = false;
  bool value_five = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/svg/star_five.svg'),
            const Spacer(),
            InkWell(
              onTap: (() {
                value_five = !value_five;
                value_two = false;
                value_three = false;
                value_four = false;
                //
                setState(() {});
              }),
              child: value_five
                  ? SvgPicture.asset('assets/svg/checkmarktrue.svg')
                  : SvgPicture.asset('assets/svg/checkmarkfalse.svg'),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/svg/star_four.svg'),
            const Spacer(),
            InkWell(
              onTap: (() {
                value_four = !value_four;
                value_five = false;
                value_two = false;
                value_three = false;
                setState(() {});
              }),
              child: value_four
                  ? SvgPicture.asset('assets/svg/checkmarktrue.svg')
                  : SvgPicture.asset('assets/svg/checkmarkfalse.svg'),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/svg/star_three.svg'),
            const Spacer(),
            InkWell(
              onTap: (() {
                value_three = !value_three;
                value_five = false;
                value_two = false;
                value_four = false;
                setState(() {});
              }),
              child: value_three
                  ? SvgPicture.asset('assets/svg/checkmarktrue.svg')
                  : SvgPicture.asset('assets/svg/checkmarkfalse.svg'),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/svg/star_two.svg'),
            const Spacer(),
            InkWell(
              onTap: (() {
                value_two = !value_two;
                value_four = false;
                value_five = false;
                value_three = false;
                setState(() {});
              }),
              child: value_two
                  ? SvgPicture.asset('assets/svg/checkmarktrue.svg')
                  : SvgPicture.asset('assets/svg/checkmarkfalse.svg'),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
