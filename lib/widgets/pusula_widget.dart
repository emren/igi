import 'package:flutter/material.dart';
import 'package:igi/services/size_config.dart';

class PusulaWidget extends StatelessWidget {
  SizeConfig c = SizeConfig();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: c.height(10),
          bottom: c.height(10),
          left: c.width(10),
          right: c.width(10)),
      child: Container(
        width: c.width(296),
        height: c.height(178),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          boxShadow: [
            BoxShadow(
                color: Color(0x66000000),
                offset: Offset(0, 3),
                blurRadius: 6,
                spreadRadius: 0),
          ],
          image: DecorationImage(
            image: AssetImage('assets/pics/pusula_picture.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
