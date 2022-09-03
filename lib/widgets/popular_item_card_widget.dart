import 'package:flutter/material.dart';
import 'package:food_delivery/models/product.dart';
import 'package:food_delivery/utils/app_constants.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/small_text.dart';

import '../utils/colors.dart';
import '../utils/dimensions.dart';
import 'icon_and_text_widget.dart';

class PopularItemCardWidget extends StatelessWidget {
  final Product popularProduct;

  const PopularItemCardWidget({Key? key, required this.popularProduct})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: Dimensions.width20,
          right: Dimensions.width20,
          bottom: Dimensions.height10),
      child: Row(
        children: [
          // Image section
          Container(
            height: Dimensions.width120,
            width: Dimensions.width120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                Dimensions.radius20,
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image:
                    NetworkImage(AppConstants.getImageUrl(popularProduct.img!)),
              ),
            ),
          ),

          // Text conteiner
          Expanded(
            child: Container(
              height: Dimensions.width100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(Dimensions.radius20),
                  bottomRight: Radius.circular(Dimensions.radius20),
                ),
                color: Colors.white,
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  left: Dimensions.width10,
                  right: Dimensions.width10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BigText(text: popularProduct.name!),
                    SizedBox(height: Dimensions.height15),
                    SmallText(text: "With chinese characteristics"),
                    SizedBox(height: Dimensions.height15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconAndTextWidget(
                          text: "Normal",
                          icon: Icons.circle_sharp,
                          iconColor: AppColors.iconColor1,
                        ),
                        IconAndTextWidget(
                          text: "1.7km",
                          icon: Icons.location_on,
                          iconColor: AppColors.mainColor,
                        ),
                        IconAndTextWidget(
                          text: "32min",
                          icon: Icons.access_time_rounded,
                          iconColor: AppColors.iconColor2,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
