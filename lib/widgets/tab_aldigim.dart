import 'package:flutter/material.dart';
import 'package:igi/widgets/aldigim_widget.dart';

class TabAldigim extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(
        children: <Widget>[
          AldigimWidget(),
          AldigimWidget(),
          AldigimWidget(),
        ],
      ),
    );
  }
}
