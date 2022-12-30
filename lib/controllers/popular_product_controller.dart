// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:get/get.dart';

import 'package:food_delivery/data/repository/popular_product_repository.dart';

class PopularProductController extends GetxController {
  final PopularProductRepository popularProductRepository;

  PopularProductController({
    required this.popularProductRepository,
  });

  List<dynamic> _popularProductList = [];
  List<dynamic> get popularProductList => _popularProductList;

  Future<void> getPopularProductList() async {
    _popularProductList = [];

    try {
      var productList = await popularProductRepository.getPopularProductList();
      _popularProductList.addAll(productList as List);
      update();
    } catch (e) {
      //TO-DO: Handle exceptions
      print(e.toString());
    }
  }
}
