import 'package:crew_art/component/_colmar_banner.dart';
import 'package:crew_art/string/strings.dart';
import 'package:flutter/material.dart';

class RentEquipment extends StatelessWidget {
  static const routeName = '/rentEquipment';
  const RentEquipment();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
            //2
            title: Text(renting)),
        body: ListView(children: <Widget>[
          ColmarBanner(bannerTag: 'renting'),
        ]));
  }
}
