import 'package:get/get.dart';

class Dimensions {
  // Default screen 390 x 844

  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  // Dynamic height proporcional to screen height
  static double height014 = screenHeight / 602.86;
  static double height5 = screenHeight / 168.8;
  static double height10 = screenHeight / 84.4;
  static double height15 = screenHeight / 56.27;
  static double height20 = screenHeight / 42.2;
  static double height24 = screenHeight / 35.17;
  static double height30 = screenHeight / 28.14;
  static double height45 = screenHeight / 18.76;
  static double height60 = screenHeight / 14.07;
  static double height80 = screenHeight / 10.55;
  static double height100 = screenHeight / 8.44;
  static double height120 = screenHeight / 7.04;
  static double height220 = screenHeight / 3.84;
  static double height320 = screenHeight / 2.64;

  // Dynamic width proporcional to screen width
  static double width5 = screenWidth / 78;
  static double width10 = screenWidth / 39;
  static double width15 = screenWidth / 26;
  static double width20 = screenWidth / 19.5;
  static double width30 = screenWidth / 13;
  static double width100 = screenWidth / 3.9;
  static double width120 = screenWidth / 3.25;

  // Dynamic radius proporcional to screen height
  static double radius15 = screenHeight / 56.27;
  static double radius20 = screenHeight / 42.2;
  static double radius30 = screenHeight / 28.14;
  static double radius40 = screenHeight / 21.1;

  // Dynamic fonts proporcional to screen height
  static double font12 = screenHeight / 70.34;
  static double font16 = screenHeight / 52.75;
  static double font20 = screenHeight / 42.2;
  static double font26 = screenHeight / 32.46;
}
