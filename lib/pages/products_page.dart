import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constant.dart';
import '../product/product_manager.dart';

class ProductsPage extends StatelessWidget {
  final List<Map<String, String>> products;
  final Function addProduct;
  final Function actionOnItem;
  ProductsPage(this.products, this.addProduct, this.actionOnItem);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              AppBar(
                title: Text("Choose"),
                automaticallyImplyLeading: false,
              ),
              ListTile(
                  leading: Icon(CupertinoIcons.add_circled_solid),
                  title: Text("Manage Products"),
                  onTap: () {
                    Navigator.pushReplacementNamed(
                        context, Constant.NAVIGATION_ADMIN);
                  }),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text("Product List"),
        ),
        body: ProductManager(products, addProduct, actionOnItem));
  }
}
