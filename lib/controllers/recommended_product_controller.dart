// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:get/get.dart';

import 'package:food_delivery/data/repository/recommended_product_repository.dart';

class RecommendedProductController extends GetxController {
  final RecommendedProductRepository recommendedProductRepository;

  RecommendedProductController({
    required this.recommendedProductRepository,
  });

  List<dynamic> _recommendedProductList = [];
  List<dynamic> get recommendedProductList => _recommendedProductList;

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
}
