import 'package:crew_art/screens/more/model/more_entity.dart';
import 'package:crew_art/string/strings.dart';
import 'package:crew_art/theme/colors.dart';
import 'package:flutter/material.dart';

class More extends StatelessWidget {
  static const routeName = '/more';

  const More();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: Text(more)),
      body: Container(
        child: ListView.builder(
          itemCount: MoreEntity.moreEntityData.length,
          itemBuilder: (context, index) {
            final MoreEntity _model = MoreEntity.moreEntityData[index];
            return Column(
              children: <Widget>[
                InkWell(
                    splashColor: primaryColor,
                    onTap: () {
                      _model.launch(context);
                    },
                    child: _model.name != ''
                        ? new Container(
                            decoration: new BoxDecoration(color: whiteColor),
                            child: ListTile(
                              leading: Icon(
                                _model.icon,
                                color: _model.name!=logOut? softBlackColor:red,
                              ),
                              title: Text(
                                _model.name,
                                style: TextStyle(color: _model.name!=logOut? softBlackColor:red,),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                size: 14.0,
                                color: _model.name!=logOut? softBlackColor:red,
                              ),
                            ))
                        : new Container(
                            decoration: new BoxDecoration(color: softGreyColor),
                            child: ListTile(
                            ))),
                Divider(
                  height: 1.0,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
