import 'package:flutter/material.dart';
import 'package:food_delivery/utils/dimensions.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  final double size;
  final Color iconColor;
  final Color backgroundColor;

  const AppIcon(
      {Key? key,
      required this.icon,
      this.size = 0,
      this.iconColor = const Color(0xFF756d54),
      this.backgroundColor = Colors.white})
      : super(key: key);

  dynamicSize() => size != 0 ? size : Dimensions.height45;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: dynamicSize(),
      height: dynamicSize(),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(dynamicSize() / 2),
        color: backgroundColor,
      ),
      child: Icon(
        icon,
        color: iconColor,
        size: Dimensions.height24,
      ),
    );
  }
}
