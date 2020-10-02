import 'package:flutter/material.dart';

class ProductProvider with ChangeNotifier {
  String _name;
  double _price;
  String _productId;

  String get name => _name;
  double get price => _price;
  String get productId => _productId;

  changeName(String value) {
    _name = value;
    notifyListeners();
  }

  changePrice(String value) {
    _price = double.parse(value);
    notifyListeners();
  }

  saveProduct() {
    print("$_name -> $_price");
  }
}
