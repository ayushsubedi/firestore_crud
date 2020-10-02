import 'package:flutter/material.dart';

class EditProduct extends StatefulWidget {
  @override
  _EditProductState createState() => _EditProductState();
}

class _EditProductState extends State<EditProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Edit Product")),
        body: ListView(
          padding: const EdgeInsets.all(20.0),
          children: <Widget>[
            TextField(
              decoration: InputDecoration(hintText: 'Product Name'),
            ),
            TextField(
              decoration: InputDecoration(hintText: 'Product Price'),
            ),
            SizedBox(height: 20),
            RaisedButton(
                color: Colors.green,
                textColor: Colors.white,
                child: Text('Save'),
                onPressed: () {}),
            RaisedButton(
                color: Colors.red,
                textColor: Colors.white,
                child: Text('Delete'),
                onPressed: () {})
          ],
        ));
  }
}
