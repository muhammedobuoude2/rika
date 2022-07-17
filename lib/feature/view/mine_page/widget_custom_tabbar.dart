// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CustomTabBarScreen extends StatefulWidget {
  final String title;
  final Color colorBack;
  final TextStyle? style;

  const CustomTabBarScreen(
      {super.key, required this.title, required this.colorBack, this.style});
  @override
  State<CustomTabBarScreen> createState() => _CustomTabBarScreenState();
}

class _CustomTabBarScreenState extends State<CustomTabBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: widget.colorBack,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(width: 0.5),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.08),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      width: 80,
      height: 30,
      child: Padding(
        padding: const EdgeInsets.all(7),
        child: Text(
          widget.title,
          textAlign: TextAlign.center,
          style: widget.style ??
              Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(color: Colors.white, fontSize: 12),
        ),
      ),
    );
  }
}
