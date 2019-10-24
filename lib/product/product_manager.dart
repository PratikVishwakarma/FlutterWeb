import 'package:flutter/material.dart';

import 'product_controller.dart';
import 'products.dart';

class ProductManager extends StatelessWidget{
  final List<Map<String, String>> products;
  final Function addProduct;
  final Function actionOnItem;
  ProductManager(this.products, this.addProduct, this.actionOnItem);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(child: ProductController(addProduct)),
        Expanded(child: Products(products, actionOnItem))
      ],
    );
  }

}
