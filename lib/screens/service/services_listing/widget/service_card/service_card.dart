import 'package:crew_art/component/_colmar_card.dart';
import 'package:crew_art/screens/service/service_details/index.dart';
import 'package:crew_art/screens/service/sub_services_listing/index.dart';
import 'package:crew_art/string/strings.dart';
import 'package:crew_art/theme/colors.dart';
import 'package:crew_art/theme/style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ServiceCard extends StatelessWidget {
  var data;

  ServiceCard({this.data});

  @override
  Widget build(BuildContext context) {
    return ColmarCard(
      child: new InkWell(
          splashColor: primaryColor,
          onTap: () {
            List services = data['services'];

            if (services.length != 0) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SubServices(
                      data: services,
                    ),
                  ));
            } else {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ServiceDetails(
                      id: data['id'].toString(),
                    ),
                  ));
            }
          },
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 8),
                child: ListTile(
                    title: new Text(
                      data['name'],
                    ),
                    subtitle: new Text(
                      data['summary'],
                    ),
                    leading: ConstrainedBox(
                      constraints: BoxConstraints(
                        minWidth: 60,
                        minHeight: 60,
                      ),
                      child:
                          Image.network(data["remoteIcon"], fit: BoxFit.fill),
                    )),
              ),
              new Divider(
                color: softGreyColor,
              ),
              Padding(
                padding: EdgeInsets.only(right: 8),
                child: Align(
                    alignment: Alignment.bottomRight,
                    child: InkWell(
                        splashColor: whiteColor,
                        onTap: () {
                          List services = data['services'];
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SubServices(
                                  data: services,
                                ),
                              ));
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
                        ))),
              )
            ],
          )),
    );
  }
}
