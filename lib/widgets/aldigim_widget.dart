import 'package:flutter/material.dart';
import 'package:igi/services/size_config.dart';

class AldigimWidget extends StatelessWidget {
  SizeConfig c = SizeConfig();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: c.height(10.0),
          bottom: c.height(10.0),
          right: c.width(10),
          left: c.width(10)),
      child: Container(
        width: c.width(342),
        height: c.height(126),
        decoration: BoxDecoration(
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
                color: Color(0x54000000),
                offset: Offset(0, 3),
                blurRadius: 6,
                spreadRadius: 0),
          ],
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                  left: c.width(10), right: c.width(10), top: c.height(10)),
              child: Row(
                children: <Widget>[
                  Container(
                    width: c.width(50),
                    height: c.height(50),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/pics/arzu_avatar.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: c.width(15.0)),
                    child: Column(
                      children: <Widget>[
                        Text(
                          "İpek Kirpik Eğitimi",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xff000000),
                            fontSize: c.font(15),
                            fontWeight: FontWeight.w800,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        Text(
                          "Sizinle İletişime geçilecek",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xff395aff),
                            fontSize: c.font(8),
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: c.width(30.0)),
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Tarih",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xff000000),
                            fontSize: c.font(14),
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        Text(
                          "12:30, 6 NOV",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xff9f9f9f),
                            fontSize: c.font(12),
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: c.width(10.0)),
                  child: Container(
                    width: c.width(50),
                    height: c.height(50),
                    //color: Colors.red,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icons/pay_icon.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: c.width(30.0)),
                  child: Text(
                    "Ödendi",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xff000000),
                      fontSize: c.font(12),
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: c.width(120.0)),
                  child: Text(
                    "429TL",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xff000000),
                      fontSize: c.font(18),
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
