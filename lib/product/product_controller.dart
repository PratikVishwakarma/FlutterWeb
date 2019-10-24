import 'package:flutter/material.dart';
import '../constant.dart';

class ProductController extends StatelessWidget {
  final Function addProduct;

  ProductController(this.addProduct);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        onPressed: () => addProduct({'title': 'Chocolate', 'image': 'assets/food.jpg'}),
        child: Constant().text16("Add Product"));
  }
}
