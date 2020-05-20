import 'package:flutter/material.dart';

class ForwardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: 113,
          height: 45,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/icons/ileri.png'),
            ),
          ),
        ),
        Positioned(
          top: 9,
          left: 40,
          child: Text(
            "İleri",
            style: TextStyle(
              fontFamily: 'Poppins',
              color: Color(0xff395aff),
              fontSize: 20,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
      ],
    );
  }
}
