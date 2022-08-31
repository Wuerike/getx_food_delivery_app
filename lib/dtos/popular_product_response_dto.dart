import 'package:food_delivery/models/product.dart';

class PopularProductResponseDto {
  // Private fields
  int? _totalSize;
  int? _typeId;
  int? _offset;
  late List<Product>? _data;

  // Public fields
  List<Product>? get data => _data;

  // Constructor
  PopularProductResponseDto(
      {required totalSize, required typeId, required offset, required data}) {
    _totalSize = totalSize;
    _typeId = typeId;
    _offset = offset;
    _data = data;
  }

  // From json constructor
  PopularProductResponseDto.fromJson(Map<String, dynamic> json) {
    _totalSize = json['total_size'];
    _typeId = json['type_id'];
    _offset = json['offset'];
    if (json['products'] != null) {
      _data = <Product>[];
      json['products'].forEach((v) {
        _data!.add(new Product.fromJson(v));
      });
    }
  }
}
