import 'package:crew_art/string/strings.dart';
import 'package:flutter/material.dart';


class OrderHistory extends StatelessWidget {
  static const routeName = '/orderHistory';

  const OrderHistory();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text(orderHistory)
      ),
      // body: new ListView.builder(
      //   itemCount: 60,

      //   itemBuilder: (BuildContext context, int index) {
      //     switch (index) {
      //       case 0:
      //         return HomeBanner();
      //       default:
      //         return CategoryCard();
      //     }
      //   },
      // ),
    );
  }
}