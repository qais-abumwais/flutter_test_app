import 'package:crew_art/string/strings.dart';
import 'package:flutter/material.dart';


class Message extends StatelessWidget {
  static const routeName = '/message';

  const Message();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text(message)
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