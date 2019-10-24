import 'package:flutter/material.dart';
import '../constant.dart';

class ProductCreatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: RaisedButton(
      child: Constant().text16("Create"),
      onPressed: () {
        showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return Container(
                decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.only(
                    topRight: const Radius.circular(4.0),
                    topLeft: const Radius.circular(4.0),
                  ),
                  color: Colors.transparent,
                ),
                child: Center(
                    child: Constant().text16("Hello users. This is model here.")),
              );
            });
      },
    ));
  }
}
