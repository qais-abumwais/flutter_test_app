import 'dart:async';
import 'dart:convert';
import 'package:crew_art/api/url.dart';
import 'package:crew_art/theme/style.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:crew_art/string/strings.dart';
import 'package:crew_art/theme/colors.dart';
import 'package:flutter/material.dart';

class ServiceDetails extends StatefulWidget {
  static const routeName = '/serviceDetails';
  String id;

  ServiceDetails({this.id});

  @override
  _MyServiceDetails createState() => new _MyServiceDetails(id:id);
}

class _MyServiceDetails extends State<ServiceDetails> {
  var extractdata;
  String id;
  _MyServiceDetails({this.id});

  Future<String> makeRequest() async {
    var response = await http.get(Uri.encodeFull(url + serviceDetailsUrl+id));

    setState(() {
      extractdata = json.decode(response.body);
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
          title: extractdata != null
              ? new Text(extractdata['name'])
              : new Text('')),
      body: extractdata != null
          ? ListView(children: <Widget>[
              Column(
                children: <Widget>[
                  Image.network(
                    extractdata['remoteImage'],
                    fit: BoxFit.fill,
                  ),
                  ListTile(
                    title: Container(
                      margin: EdgeInsets.only(top: 8),
                      child: new Text(
                        extractdata['name'],
                      ),
                    ),
                    subtitle: Container(
                      margin: EdgeInsets.only(top: 8),
                      child: new Text(
                        extractdata['summary'],
                      ),
                    ),
                  ),
                  new Divider(
                    color: softGreyColor,
                  ),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(left: 8, right: 8),
                        child: InkWell(
                            splashColor: whiteColor,
                            onTap: () {
                              // Navigator.pushNamed(context, ProductsDetails.routeName);
                            },
                            child: RaisedButton.icon(
                              label: Text(
                                requestService,
                                style: buttonTextStyle,
                              ),
                              icon: Icon(
                                FontAwesomeIcons.exclamation,
                                size: 15,
                                color: whiteColor,
                              ),
                              onPressed: () {},
                              color: red,
                            )),
                      )),
                ],
              )
            ])
          : Center(
              child: CircularProgressIndicator(
                valueColor: new AlwaysStoppedAnimation<Color>(primaryColor),
              ),
            ),
    );
  }
}
