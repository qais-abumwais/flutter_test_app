import 'package:flutter/material.dart';

class ColmarCard extends StatefulWidget {
  final Widget child;
  ColmarCard({Key key, @required this.child}) : super(key: key);
  _AppColmarCard createState() => _AppColmarCard();
}

class _AppColmarCard extends State<ColmarCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: new Container(
        child: widget.child,
      ),
    );
  }
}
