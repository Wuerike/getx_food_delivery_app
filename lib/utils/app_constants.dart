class AppConstants {
  static const String APP_NAME = "DBFood";
  static const int APP_VERSION = 1;

  static const String BASE_URL = "http://mvs.bslmeiyu.com/api/";
  static const String IMAGE_BASE_URL = "http://mvs.bslmeiyu.com/uploads/";
  static const String POPULAR_PRODUCT_ROUTE = "v1/products/popular";
  static const String RECOMMENDED_PRODUCT_ROUTE = "v1/products/recommended";

  static String getImageUrl(String imageRoute) {
    return IMAGE_BASE_URL + imageRoute;
  }
}
