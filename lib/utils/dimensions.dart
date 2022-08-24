import 'package:get/get.dart';

class Dimensions {
  // Default screen 390 x 844

  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  static double homePageViewContainer = screenHeight / 2.64;
  static double homePageViewSliderContainer = screenHeight / 3.84;
  static double homePageViewSliderTextContainer = screenHeight / 7;

  // Dynamic height proporcional to screen height
  static double height10 = screenHeight / 84.4;
  static double height15 = screenHeight / 56.27;
  static double height20 = screenHeight / 42.2;
  static double height24 = screenHeight / 35.17;
  static double height30 = screenHeight / 28.14;
  static double height45 = screenHeight / 18.76;

  // Dynamic width proporcional to screen width
  static double width5 = screenWidth / 78;
  static double width10 = screenWidth / 39;
  static double width15 = screenWidth / 26;
  static double width20 = screenWidth / 19.5;
  static double width30 = screenWidth / 13;

  // Dynamic radius proporcional to screen height
  static double radius15 = screenHeight / 56.27;
  static double radius20 = screenHeight / 42.2;
  static double radius30 = screenHeight / 28.14;

  // Dynamic fonts proporcional to screen height
  static double font12 = screenHeight / 70.34;
  static double font20 = screenHeight / 42.2;
}
