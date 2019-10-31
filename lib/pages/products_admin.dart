import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/pages/products_page.dart';
import '../constant.dart';
import 'product_create.dart';
import 'product_list.dart';

class ProductsAdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
                  onTap: () {}),
              ListTile(
                  leading: Icon(CupertinoIcons.add_circled_solid),
                  title: Text("All Products"),
                  onTap: () {
                    Navigator.pushReplacementNamed(
                        context, Constant.NAVIGATION_PRODUCTS);
                  })
            ],
          ),
        ),
        appBar: AppBar(
          title: Text("Manage Products"),
          bottom: TabBar(tabs: <Widget>[
            Tab(icon: Icon(Icons.create), text: "Create product"),
            Tab(icon: Icon(Icons.list), text: "My products"),
          ]),
        ),
        body: TabBarView(
          children: <Widget>[
            ProductCreatePage(),
            ProductListPage()
          ],
        ),
      ),
    );
  }
}
