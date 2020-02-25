import 'package:crew_art/screens/home/index.dart';
import 'package:crew_art/screens/more/index.dart';
import 'package:crew_art/screens/package/packages_listing/index.dart';
import 'package:crew_art/screens/renting/rent_equipment/index.dart';
import 'package:crew_art/screens/service/services_listing/index.dart';
import 'package:crew_art/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Base extends StatefulWidget {
  static const routeName = '/base';
  Base({Key key}) : super(key: key);

  @override
  _BaseWidgetState createState() => _BaseWidgetState();
}

class _BaseWidgetState extends State<Base> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
      
  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    Services(),
    Packages(),
    RentEquipment(),
    More()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.cubes),
            title: Text('Services'),
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.packageVariantClosed),
            title: Text('Packages'),
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.videoVintage),
            title: Text('Renting'),
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.dotsHorizontalCircle),
            title: Text('More'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: primaryColor,
        unselectedItemColor: greyColor,
        type: BottomNavigationBarType.fixed,
        elevation: 10,
        selectedFontSize: 12,
        onTap: _onItemTapped,
      ),
    );
  }
}
