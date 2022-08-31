// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:get/get.dart';

class ApiClient extends GetConnect implements GetxService {
  final String appBaseUrl;
  late String token;

  late Map<String, String> _mainHeaders;

  ApiClient({required this.appBaseUrl}) {
    baseUrl = appBaseUrl;
    timeout = Duration(seconds: 30);
    token = "";
    _mainHeaders = {
      'Content-type:': 'application/json; charset=UTF-8',
      'Authorization': 'Bearer $token',
    };
  }

  Future<Response> httpGet(String route) async {
    Response response = await get(route);
    return response;
  }
}
