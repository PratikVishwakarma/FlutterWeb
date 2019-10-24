import 'package:flutter/material.dart';

class Constant {
  static const NAVIGATION_ADMIN = "/admin";
  static const NAVIGATION_PRODUCTS = "/products";
  static const NAVIGATION_PRODUCTS_DETAILS  = "product_details";
  Padding text16(String text, {double size = 16}) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Text(
        text,
        style: TextStyle(
            fontSize: size,
            color: Colors.blueAccent,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold
        ),
      ),
    );
  }

  Container textRemove(String text, {double size = 16}) {
    return Container(
      padding: const EdgeInsets.all(4.0),
      child: Text(
        text,
        style: TextStyle(
            fontSize: size,
            color: Colors.red,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}
