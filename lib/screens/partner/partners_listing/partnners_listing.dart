import 'package:crew_art/string/strings.dart';
import 'package:flutter/material.dart';


class Partners extends StatelessWidget {
  static const routeName = '/partners';

  const Partners();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        //2
        title: Text(partners)
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