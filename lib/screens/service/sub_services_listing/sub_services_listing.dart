import 'package:crew_art/screens/service/sub_services_listing/widget/sub_services_card/index.dart';
import 'package:crew_art/string/strings.dart';
import 'package:flutter/material.dart';

class SubServices extends StatelessWidget {
  static const routeName = '/subServices';
  List data;
  SubServices({this.data});

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(services),
        ),
        body: ListView.builder(
          itemCount: data.length,
          shrinkWrap: true,
          physics: ScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return new SubServicesCard(data: data[index]);
          },
        ));
  }
}
