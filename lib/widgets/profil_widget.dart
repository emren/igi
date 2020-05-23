import 'package:flutter/material.dart';
import 'package:igi/services/size_config.dart';

class ProfilWidget extends StatelessWidget {

  SizeConfig c = SizeConfig();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: c.height(10.0), left: c.width(120)),
            child: Text(
              " Arzu Gök",
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Color(0xff000000),
                fontSize: c.font(34),
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: c.width(120.0)),
            child: Text(
              "İpek Kirpik Uzmanı",
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Color(0xff000000),
                fontSize: c.font(17),
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: c.height(10.0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: c.width(17.009765625),
                  height: c.height(17.334259033203125),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icons/star_icon_yellow.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: c.width(17.009765625),
                  height: c.height(17.334259033203125),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icons/star_icon_yellow.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: c.width(17.009765625),
                  height: c.height(17.334259033203125),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icons/star_icon_yellow.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: c.width(17.009765625),
                  height: c.height(17.334259033203125),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icons/star_icon_yellow.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: c.height(50.0), left: c.width(30)),
            child: Row(
              children: <Widget>[
                Container(
                  width: c.width(30),
                  height: c.height(30),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/pics/arzu_avatar.png"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: c.width(10.0)),
                  child: Text(
                    "Arzu Gök",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xff000000),
                      fontSize: c.font(14),
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: c.height(10), left: c.width(30.0)),
            child: Container(
              width: c.width(343),
              height: c.height(232),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                boxShadow: [
                  BoxShadow(
                      color: Color(0x29000000),
                      offset: Offset(0, 3),
                      blurRadius: 6,
                      spreadRadius: 0),
                ],
                image: DecorationImage(
                  image: AssetImage('assets/pics/post_image.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: c.width(30)),
            child: Container(
              width: c.width(343),
              height: c.height(81),
              decoration: BoxDecoration(
                color: Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                      color: Color(0x29000000),
                      offset: Offset(0, 3),
                      blurRadius: 6,
                      spreadRadius: 0),
                ],
              ),
              child: Center(
                child: Text(
                  "On a trip to America, looking for someone to \njoin me on this epic journey through American",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Color(0xff777777),
                    fontSize: c.font(12),
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
