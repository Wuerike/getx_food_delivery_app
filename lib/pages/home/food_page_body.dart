import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/popular_item_card_widget.dart';
import 'package:food_delivery/widgets/small_text.dart';

import '../../widgets/food_info_card.dart';
import '../../widgets/icon_and_text_widget.dart';

class FoodPageBody extends StatefulWidget {
  FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController _pageController = PageController(viewportFraction: 0.85);
  var _pageViewHeight = Dimensions.height220;
  var _currentPageValue = 0.0;
  var _scaleFactor = 0.8;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPageValue = _pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Carousel
        Container(
          height: Dimensions.height320,
          child: PageView.builder(
            controller: _pageController,
            itemCount: 5,
            itemBuilder: ((context, index) {
              return _buildPageItem(index);
            }),
          ),
        ),
        // Carousel dots indicator
        DotsIndicator(
          dotsCount: 5,
          position: _currentPageValue,
          decorator: DotsDecorator(
            activeColor: AppColors.mainColor,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
        // Popular items text
        SizedBox(height: Dimensions.height30),
        Container(
          margin: EdgeInsets.only(left: Dimensions.width30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BigText(text: "Popular"),
              SizedBox(width: Dimensions.width10),
              BigText(text: ".", color: AppColors.textColor),
              SizedBox(width: Dimensions.width10),
              SmallText(text: "Food pairing"),
            ],
          ),
        ),
        // Popular items list
        SizedBox(height: Dimensions.height30),
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 10,
          itemBuilder: (context, index) {
            return PopularItemCardWidget();
          },
        ),
      ],
    );
  }

  Widget _buildPageItem(int index) {
    // Carousel scaling control
    Matrix4 matrix = Matrix4.identity();

    // TO-DO: Move to a controller file
    // Central item as target
    if (index == _currentPageValue.floor()) {
      var currentScale = 1 - (_currentPageValue - index) * (1 - _scaleFactor);
      var currentTransformation = _pageViewHeight * (1 - currentScale) / 2;
      // Applies the scale factor and positioning transformation
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, currentTransformation, 0);
    }
    // Left item as target
    else if (index == _currentPageValue.floor() + 1) {
      var currentScale =
          _scaleFactor + (_currentPageValue - index + 1) * (1 - _scaleFactor);
      var yPositionFactor = _pageViewHeight * (1 - currentScale) / 2;
      // Applies the scale factor and positioning transformation
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, yPositionFactor, 0);
    }
    // Right item as target
    else if (index == _currentPageValue.floor() - 1) {
      var currentScale = 1 - (_currentPageValue - index) * (1 - _scaleFactor);
      var yPositionFactor = _pageViewHeight * (1 - currentScale) / 2;
      // Applies the scale factor and positioning transformation
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, yPositionFactor, 0);
    }
    // Incoming itens as target, fix issues by fixing the scale factor
    else {
      var currentScale = _scaleFactor;
      var yPositionFactor = _pageViewHeight * (1 - currentScale) / 2;
      // Applies the scale factor and positioning transformation
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, yPositionFactor, 0);
    }

    // Carousel
    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          // Image container
          Container(
            height: Dimensions.height220,
            margin: EdgeInsets.only(
                left: Dimensions.width10, right: Dimensions.width10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius30),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/image/food0.png"),
              ),
            ),
          ),
          // White card
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Dimensions.height120,
              margin: EdgeInsets.only(
                  left: Dimensions.width30,
                  right: Dimensions.width30,
                  bottom: Dimensions.height30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.shadowColor,
                    blurRadius: 5.0,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Container(
                padding: EdgeInsets.only(
                    top: Dimensions.height15,
                    left: Dimensions.width15,
                    right: Dimensions.width15),
                child: FoodInfoCard(text: "Chinese Side"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
