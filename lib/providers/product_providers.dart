import 'package:firestore_curd/models/product.dart';
import 'package:firestore_curd/services/firestore_service.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class ProductProvider with ChangeNotifier {
  final firestoreService = FirestoreService();
  String _name;
  double _price;
  String _productId;
  var uuid = Uuid();

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
    var newProduct =
        Product(productName: name, productPrice: price, productId: uuid.v4());
    firestoreService.saveProduct(newProduct);
  }
}
