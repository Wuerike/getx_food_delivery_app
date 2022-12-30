// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:food_delivery/controllers/recommended_product_controller.dart';
import 'package:food_delivery/models/product.dart';
import 'package:food_delivery/utils/app_constants.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/app_icon.dart';
import 'package:food_delivery/widgets/big_text.dart';

import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/widgets/expandable_text_widget.dart';
import 'package:food_delivery/widgets/product_info_card.dart';
import 'package:get/get.dart';

class RecommendedProductDetail extends StatelessWidget {
  final int pageId;

  const RecommendedProductDetail({Key? key, required this.pageId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<RecommendedProductController>();

    Product product = controller.recommendedProductList[pageId];
    controller.setDefaultQuantity(product);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Top image
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.height320,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    AppConstants.getImageUrl(product.img!),
                  ),
                ),
              ),
            ),
          ),
          // Top icons
          Positioned(
            left: Dimensions.width20,
            right: Dimensions.width20,
            top: Dimensions.height20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => Get.back(),
                  child: AppIcon(icon: Icons.keyboard_arrow_left),
                ),
                GetBuilder<RecommendedProductController>(
                  builder: (productController) {
                    return Stack(
                      children: [
                        AppIcon(
                          icon: Icons.shopping_cart_outlined,
                        ),
                        if (productController.totalQuantity >= 1) ...{
                          Positioned(
                            right: 0,
                            top: 0,
                            child: Container(
                              width: Dimensions.height24,
                              height: Dimensions.height24,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.mainColor,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  BigText(
                                    text: productController.totalQuantity
                                        .toString(),
                                    color: Colors.white,
                                    size: Dimensions.height15,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        },
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
          // Product description text
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimensions.height320 - Dimensions.height20,
            child: Container(
              padding: EdgeInsets.only(
                left: Dimensions.width20,
                right: Dimensions.width20,
                top: Dimensions.height20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimensions.height20),
                  topRight: Radius.circular(Dimensions.height20),
                ),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductInfoCard(
                    text: product.name!,
                    price: product.price!.toString(),
                    textSize: Dimensions.font26,
                  ),
                  SizedBox(height: Dimensions.height20),
                  BigText(text: "Introduce"),
                  SizedBox(height: Dimensions.height20),
                  Expanded(
                    child: SingleChildScrollView(
                      child: ExpandableTextWidget(text: product.description!),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: GetBuilder<RecommendedProductController>(
        builder: (productController) {
          return Container(
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
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () => productController.setQuantity(false),
                        child: AppIcon(
                          icon: Icons.remove,
                          iconColor: AppColors.signColor,
                          backgroundColor: Colors.white,
                          size: Dimensions.height24,
                        ),
                      ),
                      SizedBox(width: Dimensions.width5),
                      BigText(
                        text: productController.quantity.toString(),
                      ),
                      SizedBox(width: Dimensions.width5),
                      GestureDetector(
                        onTap: () => productController.setQuantity(true),
                        child: AppIcon(
                          icon: Icons.add,
                          iconColor: AppColors.signColor,
                          backgroundColor: Colors.white,
                          size: Dimensions.height24,
                        ),
                      ),
                    ],
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
                  child: GestureDetector(
                    onTap: () {
                      var result = productController.addItemToCart(product);
                      if (result) {
                        Get.back();
                      }
                    },
                    child: BigText(
                      text: "Add to cart",
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
