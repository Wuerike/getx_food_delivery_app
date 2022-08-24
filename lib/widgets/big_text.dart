// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:food_delivery/utils/dimensions.dart';

class BigText extends StatelessWidget {
  final String text;
  Color color;
  double size;
  TextOverflow overFlow;

  BigText(
      {Key? key,
      required this.text,
      this.color = const Color(0xFF332d2b),
      this.size = 0,
      this.overFlow = TextOverflow.ellipsis})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      style: TextStyle(
        color: color,
        fontFamily: 'Roboto',
        fontSize: size != 0 ? size : Dimensions.font20,
        fontWeight: FontWeight.w400,
      ),
      overflow: overFlow,
    );
  }
}
