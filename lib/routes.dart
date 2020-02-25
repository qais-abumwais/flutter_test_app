import 'package:crew_art/screens/Location/index.dart';
import 'package:crew_art/screens/Media/media_listing/index.dart';
import 'package:crew_art/screens/about_us/index.dart';
import 'package:crew_art/screens/blog/blogs_listing/index.dart';
import 'package:crew_art/screens/career/careers_listing/index.dart';
import 'package:crew_art/screens/cart/index.dart';
import 'package:crew_art/screens/casting/casting_listing/index.dart';
import 'package:crew_art/screens/contact_us/index.dart';
import 'package:crew_art/screens/login/index.dart';
import 'package:crew_art/screens/message/message_listing/message_listing.dart';
import 'package:crew_art/screens/more/index.dart';
import 'package:crew_art/screens/order_history/order_history_listing/order_history_listing.dart';
import 'package:crew_art/screens/package/packages_listing/index.dart';
import 'package:crew_art/screens/partner/partners_listing/index.dart';
import 'package:crew_art/screens/renting/rent_equipment/index.dart';
import 'package:crew_art/screens/service/services_listing/index.dart';
import 'package:crew_art/theme/style.dart';
import 'package:flutter/material.dart';
import 'screens/base/index.dart';
import 'screens/home/index.dart';


class Routes {
  final routes = <String, WidgetBuilder>{
    Base.routeName: (BuildContext context) => new Base(),
    Home.routeName: (BuildContext context) => new Home(),
    Services.routeName: (BuildContext context) => new Services(),
    Packages.routeName: (BuildContext context) => new Packages(),
    RentEquipment.routeName: (BuildContext context) => new RentEquipment(),
    More.routeName: (BuildContext context) => new More(),
    Login.routeName: (BuildContext context) => new Login(),
    Casting.routeName: (BuildContext context) => new Casting(),
    Media.routeName: (BuildContext context) => new Media(),
    Partners.routeName: (BuildContext context) => new Partners(),
    Blogs.routeName: (BuildContext context) => new Blogs(),
    Careers.routeName: (BuildContext context) => new Careers(),
    Locations.routeName: (BuildContext context) => new Locations(),
    AboutUs.routeName: (BuildContext context) => new AboutUs(),
    ContactUs.routeName: (BuildContext context) => new ContactUs(),
    Cart.routeName: (BuildContext context) => new Cart(),
    Message.routeName: (BuildContext context) => new Message(),
    OrderHistory.routeName: (BuildContext context) => new OrderHistory(),
  };

  Routes() {
    runApp(new MaterialApp(
      title: 'Flutter Demo',
      routes: routes,
      theme: appTheme,
      home: new Base(),
    ));
  }
}
