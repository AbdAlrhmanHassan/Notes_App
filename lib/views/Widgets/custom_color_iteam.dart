import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.colorV});
  final bool isActive;
  final Color colorV;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: 28,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 23, //default
              backgroundColor: colorV,
            ),
          )
        : CircleAvatar(
            radius: 25, //default
            backgroundColor: colorV,
          );
  }
}