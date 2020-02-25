import 'dart:async';
import 'dart:convert';
import 'package:crew_art/api/url.dart';
import 'package:http/http.dart' as http;
import 'package:crew_art/component/_colmar_banner.dart';
import 'package:crew_art/screens/service/services_listing/widget/header/index.dart';
import 'package:crew_art/screens/service/services_listing/widget/service_card/index.dart';
import 'package:crew_art/string/strings.dart';
import 'package:crew_art/theme/colors.dart';
import 'package:flutter/material.dart';


class Services extends StatefulWidget {
  static const routeName = '/services';
  const Services();

  @override
  _MyServices createState() => new _MyServices();
}

class _MyServices extends State<Services> {
  List data;
  String header;
  Future<String> makeRequest() async {
    var response = await http.get(
        Uri.encodeFull(url+servicesUrl));

    setState(() {
      var extractdata = json.decode(response.body);
      data = extractdata["services"];
      header = extractdata["header"];
    });
  }

  @override
  void initState() {
    this.makeRequest();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(services),
      ),
      body: data!=null?ListView(children: <Widget>[
        ColmarBanner(bannerTag:'services'),
        Header(header: header,),
        ListView.builder(
          itemCount: data == null ? 0 : data.length,
          shrinkWrap: true,
          physics: ScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return new ServiceCard(data: data[index]);
          },
        ),
        
      
      ]):Center(child: CircularProgressIndicator(valueColor: new AlwaysStoppedAnimation<Color>(primaryColor),),),
    );
  }
}
