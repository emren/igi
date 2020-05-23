import 'package:flutter/material.dart';
import 'package:igi/services/size_config.dart';

class ForwardWidget extends StatelessWidget {

  SizeConfig c = SizeConfig();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: c.width(113),
          height: c.height(45),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/icons/ileri.png'),
            ),
          ),
        ),
        Positioned(
          top: c.height(9),
          left: c.width(40),
          child: Text(
            "İleri",
            style: TextStyle(
              fontFamily: 'Poppins',
              color: Color(0xff395aff),
              fontSize: c.font(20),
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
      ],
    );
  }
}
