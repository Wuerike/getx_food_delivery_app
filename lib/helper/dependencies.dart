import 'package:food_delivery/controllers/popular_product_controller.dart';
import 'package:food_delivery/data/http/api_client.dart';
import 'package:food_delivery/data/repository/popular_product_repository.dart';
import 'package:food_delivery/utils/app_constants.dart';
import 'package:get/get.dart';

Future<void> init() async {
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));

  Get.lazyPut(() => PopularProductRepository(apiClient: Get.find()));

  Get.lazyPut(
      () => PopularProductController(popularProductRepository: Get.find()));
}
