import 'package:crew_art/string/strings.dart';
import 'package:flutter/material.dart';
// import 'package:salampizza/screens/product_details/index.dart';

class Cart extends StatefulWidget {
  static const routeName = '/cart';
  const Cart();

 _RemoveListViewState createState() => _RemoveListViewState();
}

class _RemoveListViewState extends State<Cart>{
  List<String> items=new List<String>.generate(30, (i)=>"prodcut ${i+1}");

  onSubmit(int index) {
    setState(() {
      items.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    // final RegistrationArguments args = ModalRoute.of(context).settings.arguments;
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(cart),
      ),
      // body: new ListView.builder(
      //     itemCount: items.length,
      //     itemBuilder: (BuildContext context, int index) {
      //       return new Column(children: <Widget>[
      //         InkWell(
      //             splashColor: primaryColor,
      //             onTap: () {
      //               Navigator.of(context).pushNamed(ProductsDetails.routeName);
      //             },
      //             child: new ListTile(
      //                 title: Text(items[index]),
      //                 leading: Icon(Icons.shopping_cart),
      //                 trailing: IconButton(
      //                   onPressed: () {
      //                     print('icon');
      //                     onSubmit(index);
      //                   },
      //                   tooltip: 'Remove From Cart',
      //                   icon: Icon(
      //                     Icons.remove_shopping_cart,
      //                     color: primaryColor,
      //                   ),
      //                 ))),
      //         Divider(
      //           height: 1.0,
      //         ),
      //       ]);
      //     }),
    );
  }
}
