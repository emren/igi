import 'package:flutter/material.dart';
import 'package:igi/services/size_config.dart';

class EgitimWidget extends StatelessWidget {
  SizeConfig c = SizeConfig();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: c.width(178),
      height: c.height(172),
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        borderRadius: BorderRadius.circular(23),
        boxShadow: [
          BoxShadow(
              color: Color(0x33000000),
              offset: Offset(0, 3),
              blurRadius: 6,
              spreadRadius: 0),
        ],
      ),
      child: Column(
        children: <Widget>[
          Container(
            width: c.width(178),
            height: c.height(50),
            decoration: BoxDecoration(
                color: Color(0xffffd500),
                borderRadius: BorderRadius.circular(23)),
            child: Center(
              child: Text(
                "İPEK KİRPİK EĞİTİMİ",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Color(0xff000000),
                  fontSize: c.font(15),
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
          ),
          SizedBox(
            height: c.height(10),
          ),
          Padding(
            padding: EdgeInsets.only(top: c.height(5.0)),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: c.width(10.0)),
                  child: Container(
                    width: c.width(13),
                    height: c.height(13),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image:
                            AssetImage('assets/icons/egitim_bullet_icon.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: c.width(10.0)),
                  child: Text(
                    "Meb onaylı sertifika",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xff000000),
                      fontSize: c.font(10),
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: c.height(5.0)),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: c.width(10.0)),
                  child: Container(
                    width: c.width(13),
                    height: c.height(13),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image:
                            AssetImage('assets/icons/egitim_bullet_icon.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: c.width(10.0)),
                  child: Text(
                    "İş Garantisi",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xff000000),
                      fontSize: c.font(10),
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: c.height(5.0)),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: c.width(10.0)),
                  child: Container(
                    width: c.width(13),
                    height: c.height(13),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image:
                            AssetImage('assets/icons/egitim_bullet_icon.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: c.width(10.0)),
                  child: Text(
                    "08 Ekimde Çekmeköyde",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xff000000),
                      fontSize: c.font(10),
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: c.height(18.0)),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: c.width(10.0)),
                  child: Container(
                    width: c.width(71.3662109375),
                    height: c.height(26.777099609375),
                    decoration: BoxDecoration(
                        color: Color(0xffffd500),
                        borderRadius: BorderRadius.circular(23)),
                    child: Center(
                      child: Text(
                        "Bilgi",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xff000000),
                          fontSize: c.font(14),
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: c.width(10.0)),
                  child: Container(
                    width: c.width(71.3662109375),
                    height: c.height(26.777099609375),
                    decoration: BoxDecoration(
                        color: Color(0xffffd500),
                        borderRadius: BorderRadius.circular(23)),
                    child: Center(
                      child: Text(
                        "Satın Al",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xff000000),
                          fontSize: c.font(14),
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
