import 'package:crew_art/string/strings.dart';
import 'package:flutter/material.dart';


class Media extends StatelessWidget {
  static const routeName = '/media';

  const Media();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text(media)
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