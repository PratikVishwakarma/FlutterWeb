import 'package:flutter/material.dart';
import '../constant.dart';

class ProductCreatePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProductCreatePage();
  }
}

class _ProductCreatePage extends State<ProductCreatePage> {
  String titleValue = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Constant().text16("Title"),
        TextField(
          onChanged: (String value) {
//            setState(() {
//              titleValue = value;
//            });
          },
        ),
        Constant().text16("Description"),
        TextField(
          keyboardType: TextInputType.multiline,
          onChanged: (String value) {
//            setState(() {
//              titleValue = value;
//            });
          },
        ),
        Constant().text16("Price"),
        TextField(
          keyboardType: TextInputType.number,
          onChanged: (String value) {
//            setState(() {
//              titleValue = value;
//            });
          },
        ),
      ],
    );

//      Center(
//        child: RaisedButton(
//      child: Constant().text16("Create"),
//      onPressed: () {
//        showModalBottomSheet(
//            context: context,
//            builder: (BuildContext context) {
//              return Container(
//                decoration: new BoxDecoration(
//                  borderRadius: new BorderRadius.only(
//                    topRight: const Radius.circular(4.0),
//                    topLeft: const Radius.circular(4.0),
//                  ),
//                  color: Colors.transparent,
//                ),
//                child: Center(
//                    child: Constant().text16("This is a Model!")),
//              );
//            });
//      },
//    ));
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return null;
  }
}
