import 'package:crew_art/screens/Location/index.dart';
import 'package:crew_art/screens/Media/media_listing/index.dart';
import 'package:crew_art/screens/about_us/index.dart';
import 'package:crew_art/screens/base/base.dart';
import 'package:crew_art/screens/blog/blogs_listing/index.dart';
import 'package:crew_art/screens/career/careers_listing/index.dart';
import 'package:crew_art/screens/cart/index.dart';
import 'package:crew_art/screens/casting/casting_listing/index.dart';
import 'package:crew_art/screens/contact_us/index.dart';
import 'package:crew_art/screens/login/index.dart';
import 'package:crew_art/screens/message/message_listing/index.dart';
import 'package:crew_art/screens/order_history/order_history_listing/index.dart';
import 'package:crew_art/screens/partner/partners_listing/index.dart';
import 'package:crew_art/string/strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../../../util/util.dart';

enum MoreListTypes { screen, web, logout }

class MoreEntity {
  final String name;
  final IconData icon;
  final MoreListTypes type;
  final String route;

  MoreEntity({this.name, this.icon, this.type, this.route = ""});

  static final List<MoreEntity> moreEntityData = [
    MoreEntity(
        name: login_SignUp,
        icon: MdiIcons.keyVariant,
        type: MoreListTypes.screen,
        route: Login.routeName),
    MoreEntity(
        name: message,
        icon: MdiIcons.email,
        type: MoreListTypes.screen,
        route: Message.routeName),
    MoreEntity(
        name: orderHistory,
        icon: FontAwesomeIcons.history,
        type: MoreListTypes.screen,
        route: OrderHistory.routeName),
    MoreEntity(
        name: cart,
        icon: MdiIcons.cart,
        type: MoreListTypes.screen,
        route: Cart.routeName),
    MoreEntity(
        name: '',
        icon: MdiIcons.cart,
        type: MoreListTypes.screen,
        route: Cart.routeName),
    MoreEntity(
        name: casting,
        icon: MdiIcons.humanMale,
        type: MoreListTypes.screen,
        route: Casting.routeName),
    MoreEntity(
        name: media,
        icon: MdiIcons.televisionClassic,
        type: MoreListTypes.screen,
        route: Media.routeName),
    MoreEntity(
        name: partners,
        icon: MdiIcons.account,
        type: MoreListTypes.screen,
        route: Partners.routeName),
    MoreEntity(
        name: blogs,
        icon: MdiIcons.account,
        type: MoreListTypes.screen,
        route: Blogs.routeName),
    MoreEntity(
        name: '',
        icon: MdiIcons.cart,
        type: MoreListTypes.screen,
        route: Cart.routeName),
    MoreEntity(
        name: careers,
        icon: MdiIcons.account,
        type: MoreListTypes.screen,
        route: Careers.routeName),
    MoreEntity(
        name: locations,
        icon: MdiIcons.mapMarkerMultiple,
        type: MoreListTypes.screen,
        route: Locations.routeName),
    MoreEntity(
        name: aboutUs,
        icon: MdiIcons.accountCardDetails,
        type: MoreListTypes.screen,
        route: AboutUs.routeName),
    MoreEntity(
        name: contactUs,
        icon: MdiIcons.phone,
        type: MoreListTypes.screen,
        route: ContactUs.routeName),
    MoreEntity(
        name: '',
        icon: MdiIcons.cart,
        type: MoreListTypes.screen,
        route: Cart.routeName),
    MoreEntity(
        name: facebook,
        icon: FontAwesomeIcons.facebookSquare,
        type: MoreListTypes.web,
        route: "https://www.facebook.com/CrewArtProductions"),
    MoreEntity(
        name: instagram,
        icon: FontAwesomeIcons.instagram,
        type: MoreListTypes.web,
        route: "https://www.instagram.com/crewartpro/"),
    MoreEntity(
        name: twitter,
        icon: FontAwesomeIcons.twitterSquare,
        type: MoreListTypes.web,
        route: "https://twitter.com/crewartprod"),
    MoreEntity(
        name: youtube,
        icon: FontAwesomeIcons.youtubeSquare,
        type: MoreListTypes.web,
        route: "https://www.youtube.com/c/crewtv"),
    MoreEntity(
        name: pinterest,
        icon: FontAwesomeIcons.pinterestSquare,
        type: MoreListTypes.web,
        route: "https://www.pinterest.com/CrewArtProduction/"),
    MoreEntity(
        name: linkedln,
        icon: FontAwesomeIcons.linkedinIn,
        type: MoreListTypes.web,
        route: "https://www.linkedin.com/in/crewartproduction/"),
    MoreEntity(
        name: '',
        icon: MdiIcons.cart,
        type: MoreListTypes.screen,
        route: Cart.routeName),
    MoreEntity(
        name: logOut,
        icon: MdiIcons.login,
        type: MoreListTypes.logout,
        route: Base.routeName),
  ];

  launch(BuildContext context) {
    if (type == MoreListTypes.screen) {
      Navigator.of(context).pushNamed(route);
    } else if (type == MoreListTypes.web) {
      AppUtil.launchURL(this.route);
    } else if (type == MoreListTypes.logout) {
      Navigator.pushReplacement(context,
          new MaterialPageRoute(builder: (BuildContext context) => Base()));
    }
  }
}
