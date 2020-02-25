import 'package:carousel_pro/carousel_pro.dart';
import 'package:crew_art/api/url.dart';
import 'package:crew_art/theme/colors.dart';
import 'package:crew_art/util/util.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Banner {
  final int id;
  final String name;
  final String link;
  final String remoteImage;

  Banner({this.id, this.name, this.link, this.remoteImage});

  factory Banner.fromJson(Map<String, dynamic> json) {
    return Banner(
      id: json['id'] as int,
      name: json['name'] as String,
      link: json['link'] as String,
      remoteImage: json['remoteImage'] as String,
    );
  }
}

class ColmarBanner extends StatefulWidget {
  String bannerTag;

  ColmarBanner({this.bannerTag});

  @override
  _MyBanner createState() => new _MyBanner(bannerTag:bannerTag);
}

class _MyBanner extends State<ColmarBanner> {
  List<Banner> bannerList;
  String bannerTag;
   _MyBanner({@required this.bannerTag}) ;
   
  Future<String> makeRequest() async {
    final response =
        await http.get(url+bannerUrl+bannerTag);

    setState(() {
      print(bannerTag);
      final parsed = jsonDecode(response.body).cast<Map<String, dynamic>>();
      bannerList = parsed.map<Banner>((json) => Banner.fromJson(json)).toList();
      print( bannerList.length);
    });
  }

  @override
  void initState() {
    this.makeRequest();
  }

  @override
  Widget build(BuildContext context) {
    return bannerList != null
        ? Container(
            height: 200.0,
            child: new Carousel(
              boxFit: BoxFit.cover,
              autoplay: true,
              animationCurve: Curves.fastLinearToSlowEaseIn,
              animationDuration: Duration(milliseconds: 2000),
              dotBgColor: Colors.purple.withOpacity(0.5),
              dotSize: 4.0,
              dotSpacing: 15.0,
              indicatorBgPadding: 5.0,
              images: bannerList.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        child: GestureDetector(
                            child: Image.network(i.remoteImage,
                                fit: BoxFit.fill),
                            onTap: () {
                              AppUtil.launchURL(i.link);
                            }));
                  },
                );
              }).toList(),
            ))
        : Container(
            height: 200,
            child: Center(child: CircularProgressIndicator(valueColor: new AlwaysStoppedAnimation<Color>(primaryColor),),),
          );
  }
}
