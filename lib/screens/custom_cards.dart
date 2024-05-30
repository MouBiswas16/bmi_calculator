// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomCards extends StatelessWidget {
  const CustomCards({super.key, this.color, this.myChild});

  final Color? color;
  final Widget? myChild;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      child: myChild,
    );
  }
}
