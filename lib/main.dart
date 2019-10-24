import 'package:flutter/material.dart';
import 'package:flutter_app/pages/auth.dart';
import 'package:flutter_app/pages/products_admin.dart';
import 'package:flutter_app/pages/products_page.dart';
import 'package:flutter_app/product/product_detail.dart';

import 'constant.dart';

void main() {
//  debugPaintSizeEnabled = true;
//  debugPaintBaselinesEnabled = true;
//  debugPaintPointersEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final List<Map<String, String>> _products = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          buttonColor: Colors.amberAccent,
          brightness: Brightness.light,
          primarySwatch: Colors.deepOrange,
          accentColor: Colors.deepPurple),
      routes: {
        Constant.NAVIGATION_ADMIN: (context) => ProductsAdminPage(),
        Constant.NAVIGATION_PRODUCTS: (context) =>
            ProductsPage(_products, _addProduct, _actionOnItem),
      },
      onGenerateRoute: (RouteSettings setting) {
        var pathElements = setting.name.split("/");
        print("0");
        if (pathElements[0] != "") return null;
        print("1");
        if (pathElements[1] == Constant.NAVIGATION_PRODUCTS_DETAILS) {
          var index = int.parse(pathElements[2]);
          print("product is : " + index.toString());
          return MaterialPageRoute<bool>(
              builder: (context) => ProductDetail(_products[index]));
        }
        return null;
      },
      onUnknownRoute: (RouteSettings settings) {
        return MaterialPageRoute<bool>(
            builder: (context) =>
                ProductsPage(_products, _addProduct, _deleteProduct));
      },
      home: AuthPage(),
    );
  }

  void _addProduct(Map<String, String> product) {
//    we can also add product to list first and then call setState
//    _products.add(product);
    setState(() {
      _products.add(product);
    });
  }

  void _deleteProduct(int index) {
//    we can also add product to list first and then call setState
//    _products.add(product);
    setState(() {
      _products.removeAt(index);
    });
  }

  void _actionOnItem(String action, int index) {
    switch (action) {
      case "Remove":
        {
          _deleteProduct(index);
          break;
        }
      case "image":
        {
          _deleteProduct(index);
          break;
        }
    }
    setState(() {});
  }
}
