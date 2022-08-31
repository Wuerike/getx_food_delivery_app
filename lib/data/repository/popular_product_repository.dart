// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:food_delivery/dtos/popular_product_response_dto.dart';
import 'package:food_delivery/models/product.dart';
import 'package:get/get.dart';

import 'package:food_delivery/data/http/api_client.dart';

import '../../utils/app_constants.dart';

class PopularProductRepository extends GetxService {
  final ApiClient apiClient;

  PopularProductRepository({
    required this.apiClient,
  });

  Future<List<Product>?> getPopularProductList() async {
    Response response =
        await apiClient.httpGet(AppConstants.POPULAR_PRODUCT_ROUTE);
    if (response.statusCode == 200) {
      return PopularProductResponseDto.fromJson(response.body).data;
    } else {
      return List<Product>.empty();
    }
  }
}
