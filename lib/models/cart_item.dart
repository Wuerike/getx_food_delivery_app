import 'package:food_delivery/models/product.dart';

class CartItem {
  int? id;
  String? name;
  int? price;
  String? img;
  int? quantity;
  bool? onCart;
  String? createdAt;

  CartItem(
      {this.id,
      this.name,
      this.price,
      this.img,
      this.quantity,
      this.onCart,
      this.createdAt});

  CartItem.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = json['price'];
    img = json['img'];
    quantity = json['quantity'];
    onCart = json['onCart'];
    createdAt = json['createdAt'];
  }

  CartItem.fromProduct(Product product, int quantity, bool onCart) {
    this.id = product.id;
    this.name = product.name;
    this.price = product.price;
    this.img = product.img;
    this.quantity = quantity;
    this.onCart = onCart;
    this.createdAt = DateTime.now().toString();
  }
}
