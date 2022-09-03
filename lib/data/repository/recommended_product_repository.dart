// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:food_delivery/data/http/api_client.dart';
import 'package:food_delivery/dtos/product_response_dto.dart';
import 'package:food_delivery/models/product.dart';
import 'package:food_delivery/utils/app_constants.dart';
import 'package:get/get.dart';

class RecommendedProductRepository extends GetxService {
  final ApiClient apiClient;

  RecommendedProductRepository({
    required this.apiClient,
  });

  Future<List<Product>?> getRecommendedProductList() async {
    Response response =
        await apiClient.httpGet(AppConstants.RECOMMENDED_PRODUCT_ROUTE);
    if (response.statusCode == 200) {
      return ProductResponseDto.fromJson(response.body).data;
    } else {
      return List<Product>.empty();
    }
  }
}
