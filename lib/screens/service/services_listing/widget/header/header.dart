import 'package:crew_art/component/_colmar_card.dart';
import 'package:crew_art/theme/colors.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  var header;

  Header({this.header});

  @override
  Widget build(BuildContext context) {
    return ColmarCard(
      child: ClipPath(
        child: Container(
          decoration: BoxDecoration(
              border: Border(left: BorderSide(color: primaryColor, width: 10))),
              child: Padding(padding: EdgeInsets.all(16),child: Center(child:  Text(header,),),)
        ),
        clipper: ShapeBorderClipper(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(3))),
      ),
    );
  }
}
