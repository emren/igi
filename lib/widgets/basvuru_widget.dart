import 'package:flutter/material.dart';
import 'package:igi/services/size_config.dart';

class BasvuruWidget extends StatelessWidget {
  SizeConfig c = SizeConfig();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: c.height(10.0)),
      child: Container(
        width: c.width(343),
        height: c.height(71.6842041015625),
        decoration: BoxDecoration(
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
                color: Color(0x29000000),
                offset: Offset(0, 3),
                blurRadius: 6,
                spreadRadius: 0),
          ],
        ),
        child: Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: c.width(10.0)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Uzman Estetisyen Aranıyor",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xff000000),
                      fontSize: c.font(12),
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: c.height(6.0)),
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: c.width(14.7275390625),
                          height: c.height(18),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/icons/map-pin.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: c.width(10.0)),
                          child: Text(
                            "Berlin",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xff000000),
                              fontSize: c.font(12),
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left:c.width(80.0)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: c.width(29),
                    height: c.height(29),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icons/basvuru_ok_icon.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    "başvuruldu",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xff000000),
                      fontSize: c.font(12),
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
