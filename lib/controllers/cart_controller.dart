import 'package:food_delivery/data/repository/cart_repository.dart';
import 'package:food_delivery/models/cart_item.dart';
import 'package:food_delivery/models/product.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  final CartRepository cartRepository;

  CartController({
    required this.cartRepository,
  });

  Map<int, CartItem> _items = {};
  Map<int, CartItem> get items => _items;

  int get totalQuantity {
    var total = 0;

    _items.values.forEach((element) {
      total += element.quantity!;
    });

    return total;
  }

  void addItem(Product product, int quantity) {
    _items.update(product.id!, (cardItem) {
      var newQuantity = cardItem.quantity! + quantity;
      return CartItem.fromProduct(product, newQuantity, true);
    }, ifAbsent: () {
      return CartItem.fromProduct(product, quantity, true);
    });
  }
}
