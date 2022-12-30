import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/small_text.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text;

  ExpandableTextWidget({Key? key, required this.text}) : super(key: key);

  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  late String textFirstHalf;
  late String textSecondHalf;

  bool hiddenText = true;
  double textSize = Dimensions.screenHeight / 5.63;

  @override
  void initState() {
    super.initState();

    if (widget.text.length > textSize) {
      textFirstHalf = widget.text.substring(0, textSize.toInt());
      textSecondHalf =
          widget.text.substring(textSize.toInt() + 1, widget.text.length);
    } else {
      textFirstHalf = widget.text;
      textSecondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: textSecondHalf.isEmpty
          ? SmallText(
              text: textFirstHalf,
              color: AppColors.paraColor,
              size: Dimensions.font16,
            )
          : Column(
              children: [
                SmallText(
                  text: hiddenText
                      ? (textFirstHalf + "...")
                      : (textFirstHalf + textSecondHalf),
                  color: AppColors.paraColor,
                  size: Dimensions.font16,
                ),
                SizedBox(height: Dimensions.height10),
                InkWell(
                  onTap: () {
                    setState(() {
                      hiddenText = !hiddenText;
                    });
                  },
                  child: Row(
                    children: [
                      SmallText(
                        text: "Show more",
                        color: AppColors.mainColor,
                        size: Dimensions.font16,
                      ),
                      Icon(
                        hiddenText
                            ? Icons.arrow_drop_down
                            : Icons.arrow_drop_up,
                        color: AppColors.mainColor,
                      )
                    ],
                  ),
                )
              ],
            ),
    );
  }
}
