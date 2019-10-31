import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../constant.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
          child: RaisedButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, Constant.NAVIGATION_PRODUCTS);
        },
        child: returnButton(),
      )),
    );
  }

  Widget returnButton() {
    try {
      if(kIsWeb) return Text("Login Web");
      else {
        if (Platform.isIOS) return Text("Login IOS");
        if (Platform.isAndroid)
          return Text("Login Android");
        else
          return Text("Login");
      }
    } on Exception catch (e) {
      print(e);
      return Text("Login Web");
    }
  }
}
