import 'package:flutter/material.dart';

import 'products.dart';

class ProductManager extends StatelessWidget{
  final List<Map<String, dynamic>> products;
  final Function actionOnItem;
  ProductManager(this.products, this.actionOnItem);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
//        Container(child: ProductController(addProduct)),
        Expanded(child: Products(products, actionOnItem))
      ],
    );
  }

}
