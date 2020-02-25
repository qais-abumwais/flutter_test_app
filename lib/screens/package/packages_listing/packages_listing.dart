import 'package:crew_art/component/_colmar_banner.dart';
import 'package:crew_art/string/strings.dart';
import 'package:flutter/material.dart';

class Packages extends StatelessWidget {
  static const routeName = '/packages';

  const Packages();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
            //2
            title: Text(packages)),
        body: ListView(children: <Widget>[
          ColmarBanner(bannerTag: 'package'),
        ]));
  }
}
