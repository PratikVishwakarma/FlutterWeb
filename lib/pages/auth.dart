import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../constant.dart';

class AuthPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AuthPage();
  }
}

class _AuthPage extends State<AuthPage> {
  String _email;
  String _password;
  bool _acceptTerms = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    if (kIsWeb)
      width = width / 3;
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
        child: Container(
          width: width,
          margin: EdgeInsets.all(10.0),
          child: ListView(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(labelText: "Email"),
                keyboardType: TextInputType.emailAddress,
                onChanged: (String value) {
                  setState(() {
                    _email = value;
                  });
                },
              ),
              TextField(
                decoration: InputDecoration(labelText: "Password"),
                keyboardType: TextInputType.visiblePassword,
                onChanged: (String value) {
                  setState(() {
                    _password = value;
                  });
                },
              ),
              SwitchListTile(
                title: Text("Accept Terms"),
                onChanged: (bool value) {
                  setState(() {
                    _acceptTerms = value;
                  });
                },
                value: _acceptTerms,
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(
                      context, Constant.NAVIGATION_PRODUCTS);
                },
                child: returnButton(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget returnButton() {
    try {
      if (kIsWeb)
        return Text("Login Web");
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
