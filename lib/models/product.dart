class Product {
  final String productId;
  final String productName;
  final double productPrice;

  Product({this.productId, this.productName, this.productPrice});

  Map<String, dynamic> toMap() {
    return {
      'productId': productId,
      'productName': productName,
      'productPrice': productPrice
    };
  }

  Product.fromFirestore(Map<String, dynamic> firestore)
      : productId = firestore['productId'],
        productName = firestore['productName'],
        productPrice = firestore['productPrice'];
}
