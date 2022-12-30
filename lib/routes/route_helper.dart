import 'package:food_delivery/pages/home/home_page.dart';
import 'package:food_delivery/pages/product/popular_product_detail.dart';
import 'package:food_delivery/pages/product/recommended_product_detail.dart';
import 'package:get/get.dart';

class RouteHelper {
  static const String _index = "/";
  static String Index() => _index;

  static const String _recommendedProduct = "/recommended-product";
  static String RecommendedProduct(int pageId) =>
      '$_recommendedProduct?pageId=$pageId';

  static const String _popularProduct = "/popular-product";
  static String PopularProduct(int pageId) => '$_popularProduct?pageId=$pageId';

  static List<GetPage> routes = [
    GetPage(
      name: _index,
      transition: Transition.fadeIn,
      page: () => HomePage(),
    ),
    GetPage(
      name: _recommendedProduct,
      transition: Transition.fadeIn,
      page: () {
        var pageId = Get.parameters['pageId'];
        return RecommendedProductDetail(pageId: int.parse(pageId!));
      },
    ),
    GetPage(
      name: _popularProduct,
      transition: Transition.fadeIn,
      page: () {
        var pageId = Get.parameters['pageId'];
        return PopularProductDetail(pageId: int.parse(pageId!));
      },
    ),
  ];
}
