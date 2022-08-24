import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/small_text.dart';

import '../utils/dimensions.dart';

class IconAndTextWidget extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color iconColor;

  const IconAndTextWidget(
      {Key? key,
      required this.text,
      required this.icon,
      required this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColor,
          size: Dimensions.height24,
        ),
        SizedBox(width: Dimensions.width5),
        SmallText(text: text)
      ],
    );
  }
}
