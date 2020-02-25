import 'package:crew_art/string/strings.dart';
import 'package:flutter/material.dart';

class Casting extends StatelessWidget {
  static const routeName = '/casting';

  const Casting();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        //2
        title: Text(casting)
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
