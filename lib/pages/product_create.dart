import 'package:flutter/material.dart';

class ProductCreatePage extends StatefulWidget {
  final Function addProduct;

  ProductCreatePage(this.addProduct);

  @override
  State<StatefulWidget> createState() {
    return _ProductCreatePage();
  }
}

class _ProductCreatePage extends State<ProductCreatePage> {
  String _titleValue;
  String _descriptionValue;
  double _priceValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: ListView(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(labelText: "Title"),
            onChanged: (String value) {
              setState(() {
                _titleValue = value;
              });
            },
          ),
          TextField(
            decoration: InputDecoration(labelText: "Description"),
            maxLines: 4,
            keyboardType: TextInputType.multiline,
            onChanged: (String value) {
              setState(() {
                _descriptionValue = value;
              });
            },
          ),
          TextField(
            decoration: InputDecoration(labelText: "Price"),
            keyboardType: TextInputType.number,
            onChanged: (String value) {
              setState(() {
                _priceValue = double.parse(value);
              });
            },
          ),
          RaisedButton(
            child: Text("Save"),
            color: Theme.of(context).accentColor,
            textColor: Colors.white,
            onPressed: () {
              widget.addProduct({
                'title': _titleValue,
                'description': _descriptionValue,
                'price': _priceValue,
                'image': 'assets/food.jpg'
              });
//              Navigator.pop(context);
            },
          )
        ],
      ),
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

  State<StatefulWidget> createState() {
    // TODO: implement createState
    return null;
  }
}
