import 'package:firestore_curd/models/product.dart';
import 'package:firestore_curd/providers/product_providers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EditProduct extends StatefulWidget {
  final Product product;

  EditProduct([this.product]);

  @override
  _EditProductState createState() => _EditProductState();
}

class _EditProductState extends State<EditProduct> {
  final nameController = TextEditingController();
  final priceController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    priceController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    if (widget.product == null) {
      nameController.text = "";
      priceController.text = "";
    } else {
      nameController.text = widget.product.productName;
      priceController.text = widget.product.productPrice.toString();
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductProvider>(context);
    return Scaffold(
        appBar: AppBar(title: Text("Edit Product")),
        body: ListView(
          padding: const EdgeInsets.all(20.0),
          children: <Widget>[
            TextField(
                controller: nameController,
                decoration: InputDecoration(hintText: 'Product Name'),
                onChanged: (value) => productProvider.changeName(value)),
            TextField(
                controller: priceController,
                decoration: InputDecoration(hintText: 'Product Price'),
                onChanged: (value) => productProvider.changePrice(value)),
            SizedBox(height: 30),
            RaisedButton(
                color: Colors.green,
                textColor: Colors.white,
                child: Text('Save'),
                onPressed: () {
                  productProvider.saveProduct();
                  Navigator.of(context).pop();
                }),
            RaisedButton(
                color: Colors.red,
                textColor: Colors.white,
                child: Text('Delete'),
                onPressed: () {})
          ],
        ));
  }
}
