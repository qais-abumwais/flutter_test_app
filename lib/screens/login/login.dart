import 'dart:async';
import 'dart:convert';
import 'package:crew_art/screens/service/services_listing/widget/service_card/index.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  static const routeName = '/login';

  const Login();

    @override
  _MyServices createState() => new _MyServices();
}

  class _MyServices extends State<Login> {
  List data;
  String header;
  Future<String> makeRequest() async {
    var response = await http.get(
        Uri.encodeFull('https://crewart.net/api/web/services'),
        headers: {"Accept": "application/json"});

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
          title: new Text('Contact List gggg'),
        ),
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
          Text('qays'),
          new Builder(
              builder: (BuildContext context) => data == null
                  ? Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: const CircularProgressIndicator()) 
                  : new Container(
                      padding: const EdgeInsets.only(bottom: 50.0),
                      height: MediaQuery.of(context).size.height * 1.0,
                      child: new ListView.builder(
                        itemCount: data.length,
                        itemBuilder: (BuildContext context, int index) {
                             return new ServiceCard(data : data[index]);
                        },
                      ),
                    )),
        ])));
  }
}





