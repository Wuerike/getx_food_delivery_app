// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:food_delivery/models/product.dart';
import 'package:get/get.dart';

import 'package:food_delivery/controllers/cart_controller.dart';
import 'package:food_delivery/data/repository/recommended_product_repository.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';

class RecommendedProductController extends GetxController {
  final RecommendedProductRepository recommendedProductRepository;
  final CartController cartController;

  RecommendedProductController({
    required this.recommendedProductRepository,
    required this.cartController,
  });

  List<dynamic> _recommendedProductList = [];
  List<dynamic> get recommendedProductList => _recommendedProductList;

  int _quantity = 0;
  int get quantity => _quantity;

  int get totalQuantity {
    return cartController.totalQuantity;
  }

  Future<void> getRecommendedProductList() async {
    _recommendedProductList = [];

    try {
      var productList =
          await recommendedProductRepository.getRecommendedProductList();
      _recommendedProductList.addAll(productList as List);
      update();
    } catch (e) {
      //TO-DO: Handle exceptions
      print(e.toString());
    }
  }

  void setDefaultQuantity(Product product) {
    _quantity = 0;
  }

  void setQuantity(bool isIncrement) {
    if (isIncrement) {
      _quantity = _quantity + 1;
    } else {
      _quantity = checkQuantity(_quantity - 1);
    }

    update();
  }

  int checkQuantity(int value) {
    if (value < 0) {
      Get.snackbar(
        "Item count:",
        "Can't be less then 0.",
        margin: EdgeInsets.all(Dimensions.height10),
        animationDuration: Duration(milliseconds: 500),
        backgroundColor: Colors.white.withOpacity(0.8),
      );
      return 0;
    }

    return value;
  }

  bool addItemToCart(Product product) {
    if (_quantity < 1) {
      Get.snackbar(
        "Item count:",
        "Can't add 0 itens to the cart",
        margin: EdgeInsets.all(Dimensions.height10),
        animationDuration: Duration(milliseconds: 500),
        backgroundColor: Colors.white.withOpacity(0.8),
      );
      return false;
    }
    cartController.addItem(product, _quantity);
    _quantity = 0;
    update();
    return true;
  }
}
