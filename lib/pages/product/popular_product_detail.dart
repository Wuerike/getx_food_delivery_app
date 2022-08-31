import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/expandable_text_widget.dart';

import '../../widgets/app_icon.dart';

class PopularProductDetail extends StatelessWidget {
  const PopularProductDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: Dimensions.height320,
            backgroundColor: AppColors.yellowColor,
            toolbarHeight: Dimensions.height80,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.keyboard_arrow_left),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/image/food0.png",
                fit: BoxFit.cover,
              ),
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(Dimensions.height30),
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(
                  top: Dimensions.height5,
                  bottom: Dimensions.height10,
                ),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.height20),
                    topRight: Radius.circular(Dimensions.height20),
                  ),
                ),
                child: BigText(
                  text: "Chinese Side",
                  size: Dimensions.font26,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.only(
                left: Dimensions.width20,
                right: Dimensions.width20,
              ),
              child: ExpandableTextWidget(
                  text:
                      "Chicken marinated in a spiced yoghurt in placed in a large pot, then layered with fried onions, frea coriander cilanro, then par boiled lightly  then par boiled lightly then par boiled lightly then par boiled lightly then par boiled lightly then par boiled lightly then par boiled lightly Chicken marinated in a spiced yoghurt in placed in a large pot, then layered with fried onions, frea coriander cilanro, then par boiled lightly  then par boiled lightly then par boiled lightly then par boiled lightly then par boiled lightly then par boiled lightly then par boiled lightly Chicken marinated in a spiced yoghurt in placed in a large pot, then layered with fried onions, frea coriander cilanro, then par boiled lightly  then par boiled lightly then par boiled lightly then par boiled lightly then par boiled lightly then par boiled lightly then par boiled lightly Chicken marinated in a spiced yoghurt in placed in a large pot, then layered with fried onions, frea coriander cilanro, then par boiled lightly  then par boiled lightly then par boiled lightly then par boiled lightly then par boiled lightly then par boiled lightly then par boiled lightly Chicken marinated in a spiced yoghurt in placed in a large pot, then layered with fried onions, frea coriander cilanro, then par boiled lightly  then par boiled lightly then par boiled lightly then par boiled lightly then par boiled lightly then par boiled lightly then par boiled lightly Chicken marinated in a spiced yoghurt in placed in a large pot, then layered with fried onions, frea coriander cilanro, then par boiled lightly  then par boiled lightly then par boiled lightly then par boiled lightly then par boiled lightly then par boiled lightly then par boiled lightly Chicken marinated in a spiced yoghurt in placed in a large pot, then layered with fried onions, frea coriander cilanro, then par boiled lightly  then par boiled lightly then par boiled lightly then par boiled lightly then par boiled lightly then par boiled lightly then par boiled lightly Chicken marinated in a spiced yoghurt in placed in a large pot, then layered with fried onions, frea coriander cilanro, then par boiled lightly  then par boiled lightly then par boiled lightly then par boiled lightly then par boiled lightly then par boiled lightly then par boiled lightly Chicken marinated in a spiced yoghurt in placed in a large pot, then layered with fried onions, frea coriander cilanro, then par boiled lightly  then par boiled lightly then par boiled lightly then par boiled lightly then par boiled lightly then par boiled lightly then par boiled lightly Chicken marinated in a spiced yoghurt in placed in a large pot, then layered with fried onions, frea coriander cilanro, then par boiled lightly  then par boiled lightly then par boiled lightly then par boiled lightly then par boiled lightly then par boiled lightly then par boiled lightly Chicken marinated in a spiced yoghurt in placed in a large pot, then layered with fried onions, frea coriander cilanro, then par boiled lightly  then par boiled lightly then par boiled lightly then par boiled lightly then par boiled lightly then par boiled lightly then par boiled lightly Chicken marinated in a spiced yoghurt in placed in a large pot, then layered with fried onions, frea coriander cilanro, then par boiled lightly  then par boiled lightly then par boiled lightly then par boiled lightly then par boiled lightly then par boiled lightly then par boiled lightly Chicken marinated in a spiced yoghurt in placed in a large pot, then layered with fried onions, frea coriander cilanro, then par boiled lightly  then par boiled lightly then par boiled lightly then par boiled lightly then par boiled lightly then par boiled lightly then par boiled lightly Chicken marinated in a spiced yoghurt in placed in a large pot, then layered with fried onions, frea coriander cilanro, then par boiled lightly  then par boiled lightly then par boiled lightly then par boiled lightly then par boiled lightly then par boiled lightly then par boiled lightly Chicken marinated in a spiced yoghurt in placed in a large pot, then layered with fried onions, frea coriander cilanro, then par boiled lightly  then par boiled lightly then par boiled lightly then par boiled lightly then par boiled lightly then par boiled lightly then par boiled lightly Chicken marinated in a spiced yoghurt in placed in a large pot, then layered with fried onions, frea coriander cilanro, then par boiled lightly  then par boiled lightly then par boiled lightly then par boiled lightly then par boiled lightly then par boiled lightly then par boiled lightly Chicken marinated in a spiced yoghurt in placed in a large pot, then layered with fried onions, frea coriander cilanro, then par boiled lightly  then par boiled lightly then par boiled lightly then par boiled lightly then par boiled lightly then par boiled lightly then par boiled lightly Chicken marinated in a spiced yoghurt in placed in a large pot, then layered with fried onions, frea coriander cilanro, then par boiled lightly  then par boiled lightly then par boiled lightly then par boiled lightly then par boiled lightly then par boiled lightly then par boiled lightly Chicken marinated in a spiced yoghurt in placed in a large pot, then layered with fried onions, frea coriander cilanro, then par boiled lightly  then par boiled lightly then par boiled lightly then par boiled lightly then par boiled lightly then par boiled lightly then par boiled lightly Chicken marinated in a spiced yoghurt in placed in a large pot, then layered with fried onions, frea coriander cilanro, then par boiled lightly  then par boiled lightly then par boiled lightly then par boiled lightly then par boiled lightly then par boiled lightly then par boiled lightly Chicken marinated in a spiced yoghurt in placed in a large pot, then layered with fried onions, frea coriander cilanro, then par boiled lightly  then par boiled lightly then par boiled lightly then par boiled lightly then par boiled lightly then par boiled lightly then par boiled lightly "),
            ),
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              top: Dimensions.height10,
              bottom: Dimensions.height10,
              left: Dimensions.width30,
              right: Dimensions.width30,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  icon: Icons.remove,
                  iconColor: Colors.white,
                  backgroundColor: AppColors.mainColor,
                ),
                BigText(
                  text: '\$15' + ' X ' + ' 0',
                  size: Dimensions.font26,
                ),
                AppIcon(
                  icon: Icons.add,
                  iconColor: Colors.white,
                  backgroundColor: AppColors.mainColor,
                ),
              ],
            ),
          ),
          Container(
            height: Dimensions.height120,
            padding: EdgeInsets.only(
              top: Dimensions.height30,
              bottom: Dimensions.height30,
              left: Dimensions.width20,
              right: Dimensions.width20,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimensions.radius40),
                topRight: Radius.circular(Dimensions.radius40),
              ),
              color: AppColors.buttonBackgroundColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    top: Dimensions.height20,
                    bottom: Dimensions.height20,
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: Colors.white,
                  ),
                  child: AppIcon(
                    icon: Icons.favorite,
                    iconColor: AppColors.mainColor,
                    backgroundColor: Colors.white,
                    size: Dimensions.height24,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: Dimensions.height20,
                    bottom: Dimensions.height20,
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: AppColors.mainColor,
                  ),
                  child: BigText(
                    text: "\$10.0 | Add to cart",
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
