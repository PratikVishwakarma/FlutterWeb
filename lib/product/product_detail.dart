import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_app/constant.dart';

class ProductDetail extends StatelessWidget {
  final Map<String, String> product;

  ProductDetail(this.product);

  @override
  Widget build(BuildContext context) {
    print("product is : "+product["title"]);
    return WillPopScope(
        onWillPop: () {
          Navigator.pop(context, false);
          return Future.value(false);
        },
        child: Scaffold(
          appBar: AppBar(
            title: Text("Product Detail"),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(product["image"]),
              Constant().text16(product["title"]),
              Constant().text16(product["description"]),
              RaisedButton(
                onPressed: () => Navigator.pop(context),
                child: Text("Go Back"),
              ),
              RaisedButton(
                onPressed: ()  => _showWarningDialog(context),
                child: Text("Delete"),
              ),
            ],
          ),
        ));
  }


  _showWarningDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Are you sure?"),
            content: Text("This action cannot be undone!"),
            actions: <Widget>[
              FlatButton(
                child: Text("DISCARD"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              FlatButton(
                child: Text("CONTINUE"),
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pop(context, true);
                },
              )
            ],
          );
        });
  }
}
