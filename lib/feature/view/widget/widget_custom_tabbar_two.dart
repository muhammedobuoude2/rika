// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:rikaa/feature/core/color_manger.dart';

class CustomTabBarScreenTwo extends StatefulWidget {
  final String title;
  final Color colorBack;
  final TextStyle? style;
  final Color? colorBorder;
  final Function? onTap;

  const CustomTabBarScreenTwo(
      {super.key,
      required this.title,
      required this.colorBack,
      this.style,
      this.colorBorder,
      this.onTap});
  @override
  State<CustomTabBarScreenTwo> createState() => _CustomTabBarScreenTwoState();
}

class _CustomTabBarScreenTwoState extends State<CustomTabBarScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        radius: 20,
        borderRadius: BorderRadius.circular(20),
        customBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        onTap: () => widget.onTap,
        child: Chip(
          label: Text(
            widget.title,
            textAlign: TextAlign.center,
            style: widget.style ??
                Theme.of(context).textTheme.headline5?.copyWith(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: 'Mont-SemiBold'),
          ),
          backgroundColor: widget.colorBack,
          side: BorderSide(color: widget.colorBorder ?? ColorManger.colorBlack),
        ));

    // Container(
    //   decoration: BoxDecoration(
    //     color: widget.colorBack,
    //     borderRadius: BorderRadius.circular(16),
    //     border: Border.all(width: 0.5),
    //     boxShadow: [
    //       BoxShadow(
    //         color: Colors.grey.withOpacity(0.08),
    //         spreadRadius: 5,
    //         blurRadius: 7,
    //         offset: const Offset(0, 3),
    //       ),
    //     ],
    //   ),
    //   width: widget.widthInt,
    //   height: 30,
    //   child: Padding(
    //     padding: const EdgeInsets.all(7),
    //     child: Text(
    //       widget.title,
    //       textAlign: TextAlign.center,
    //       style: widget.style ??
    //           Theme.of(context)
    //               .textTheme
    //               .headline5
    //               ?.copyWith(color: Colors.white, fontSize: 12),
    //     ),
    //   ),
    // );
  }
}
