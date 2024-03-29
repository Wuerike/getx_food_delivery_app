import 'package:flutter/material.dart';
import 'package:food_delivery/controllers/recommended_product_controller.dart';
import 'package:food_delivery/pages/home/home_page.dart';
import 'package:food_delivery/helper/app_scroll_behavior.dart';
import 'package:food_delivery/routes/route_helper.dart';
import 'package:get/get.dart';
import 'controllers/popular_product_controller.dart';
import 'helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<RecommendedProductController>().getRecommendedProductList();
    Get.find<PopularProductController>().getPopularProductList();

    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      scrollBehavior: AppScrollBehavior(),
      home: HomePage(),
      initialRoute: RouteHelper.Index(),
      getPages: RouteHelper.routes,
    );
  }
}
