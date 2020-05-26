import 'package:flutter/material.dart';
import 'package:igi/services/size_config.dart';
import 'package:igi/widgets/egitim_widget.dart';

class TabEgitim extends StatelessWidget {
  SizeConfig c = SizeConfig();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: GridView.count(
      padding: EdgeInsets.only(
          top: c.height(20),
          bottom: c.height(20),
          left: c.width(20),
          right: c.width(20)),
      crossAxisSpacing: c.width(10),
      mainAxisSpacing: c.height(10),
      crossAxisCount: 2,
      children: <Widget>[
        EgitimWidget(),
        EgitimWidget(),
        EgitimWidget(),
        EgitimWidget(),
        EgitimWidget(),
        EgitimWidget(),
        EgitimWidget(),
      ],
    ));
  }
}
