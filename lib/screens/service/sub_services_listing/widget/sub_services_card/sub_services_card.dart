import 'package:crew_art/component/_colmar_card.dart';
import 'package:crew_art/screens/service/service_details/index.dart';
import 'package:crew_art/string/strings.dart';
import 'package:crew_art/theme/colors.dart';
import 'package:crew_art/theme/style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SubServicesCard extends StatelessWidget {
  var data;

  SubServicesCard({this.data});

  @override
  Widget build(BuildContext context) {
    return ColmarCard(
      child: new InkWell(
          splashColor: primaryColor,
          onTap: () {
             Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ServiceDetails(
                      id: data['id'].toString(),
                    ),
                  ));
          },
          child: Column(
            children: <Widget>[
              Image.network(
                data['remoteIcon'],
                fit: BoxFit.fill,
              ),
              ListTile(
                title: Container(
                  margin: EdgeInsets.only(top: 8),
                  child: new Text(
                    data['name'],
                  ),
                ),
                subtitle: Container(
                  margin: EdgeInsets.only(top: 8),
                  child: new Text(
                    data['summary'],
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
                    margin: EdgeInsets.only(left: 8,right: 8),
                    child: InkWell(
                        splashColor: whiteColor,
                        onTap: () {
                          // Navigator.pushNamed(context, ProductsDetails.routeName);
                        },
                        child: RaisedButton.icon(
                          label: Text(
                            knowMore,
                            style: buttonTextStyle,
                          ),
                          icon: Icon(
                            FontAwesomeIcons.exclamation,
                            size: 15,
                            color: whiteColor,
                          ),
                          onPressed: () {},
                          color: primaryColor,
                        )),
                  )),
            ],
          )),
    );
  }
}
