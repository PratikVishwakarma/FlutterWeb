import 'package:flutter/material.dart';
import '../constant.dart';

class Products extends StatelessWidget {
  final List<Map<String, String>> products;
  final Function actionOnItem;

  Products(this.products, this.actionOnItem);

  @override
  Widget build(BuildContext context) {
    return _buildProductList();
  }

  Widget _buildProductList() {
    //    check if have item in list then render the item else print the message
    return products.length > 0
        ? ListView.builder(
            itemBuilder: buildProductItem,
            itemCount: products.length,
          )
        : Center(
            child: Constant().text16("No product found, please add some."),
          );
  }

  Widget buildProductItem(BuildContext context, int index) {
    return Container(
      margin: EdgeInsets.all(8),
      decoration: new BoxDecoration(
        borderRadius: new BorderRadius.circular(4.0),
        color: Colors.blueAccent,
      ),
      child: Container(
        child: Card(
          child: Column(
            children: <Widget>[
              new GestureDetector(
                  onTap: () {
                    Navigator.pushNamed<bool>(
                            context,
                            "/" +
                                Constant.NAVIGATION_PRODUCTS_DETAILS +
                                "/" +
                                index.toString())
                        .then((bool value) {
                      if (value != null) actionOnItem("image", index);
                    });
                  },
                  child: Image.asset("assets/food.jpg")),
              Constant().text16(products[index]["title"]),
              ButtonBar(
                alignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                      padding: EdgeInsets.all(2.0),
                      child: Text("Delete"),
                      onPressed: () => _showWarningDialog(context, index))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  _showWarningDialog(BuildContext context, int index) {
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
                  actionOnItem("Remove", index);
                },
              )
            ],
          );
        });
  }
}
