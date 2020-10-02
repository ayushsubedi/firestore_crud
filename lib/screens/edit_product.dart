import 'package:firestore_curd/providers/product_providers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EditProduct extends StatefulWidget {
  @override
  _EditProductState createState() => _EditProductState();
}

class _EditProductState extends State<EditProduct> {
  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductProvider>(context);
    return Scaffold(
        appBar: AppBar(title: Text("Edit Product")),
        body: ListView(
          padding: const EdgeInsets.all(20.0),
          children: <Widget>[
            TextField(
                decoration: InputDecoration(hintText: 'Product Name'),
                onChanged: (value) => productProvider.changeName(value)),
            TextField(
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
