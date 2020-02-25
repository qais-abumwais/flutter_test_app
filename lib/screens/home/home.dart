import 'package:crew_art/string/strings.dart';
import 'package:flutter/material.dart';
import 'package:crew_art/component/_colmar_banner.dart';


class Home extends StatelessWidget {
  static const routeName = '/home';

  const Home();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        //2
        title: Text(home)
      ),
      body: ListView(children: <Widget>[
        ColmarBanner(bannerTag:'home'),
      ])
    );
  }
}
