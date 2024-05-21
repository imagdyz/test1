import 'package:flutter/material.dart';
import 'package:test1/model/item.dart';

class Cart with ChangeNotifier {
  List selectedProducts = [];
  int price = 0;

  add(Item product) {
    selectedProducts.add(product);
    price += product.price.round();
    notifyListeners();
  }

  delete(Item product) {
    selectedProducts.remove(product);
    price -= product.price.round();

    notifyListeners();
  }

  get itemCount {
    return selectedProducts.length;
  }
}
