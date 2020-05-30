import 'package:flutter/material.dart';
import 'package:igi/services/size_config.dart';
import 'package:igi/widgets/basvuru_widget.dart';
import 'package:igi/widgets/ilan_widget.dart';

import 'basvurular.dart';

class IlanDetay extends StatelessWidget {
  SizeConfig c = SizeConfig();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: c.height(50),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: c.height(50),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: c.width(20.0)),
                      child: Container(
                        width: c.width(10.7412109375),
                        height: c.height(18.764892578125),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/icons/back_icon.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: c.width(10)),
                      child: Text(
                        "geri",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xff000000),
                          fontSize: c.font(12),
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
//                    Padding(
//                      padding: EdgeInsets.only(left: c.width(200.0)),
//                      child: Text(
//                        "ilanlarım",
//                        style: TextStyle(
//                          fontFamily: 'Poppins',
//                          color: Color(0xff000000),
//                          fontSize: c.font(20),
//                          fontWeight: FontWeight.w700,
//                          fontStyle: FontStyle.normal,
//                        ),
//                      ),
//                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: c.height(50),
            ),
            Padding(
              padding: EdgeInsets.only(left: c.width(30.0)),
              child: Text(
                "Güzellik Uzmanı",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Color(0xff000000),
                  fontSize: c.font(18),
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: c.width(30.0), top: c.height(20), right: c.width(30)),
              child: Text(
                "denemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedene",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Color(0xff000000),
                  fontSize: c.font(12),
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: c.width(130.0), top: c.height(20)),
              child: Text(
                "Aranan Özellikler",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Color(0xff777777),
                  fontSize: c.font(17),
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: c.height(10.0)),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: c.width(40.0)),
                            child: Container(
                              width: c.width(12),
                              height: c.height(12),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/icons/bullet_blue.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: c.width(20.0)),
                            child: Text(
                              "Bayan",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(0xff000000),
                                fontSize: c.font(15),
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: c.height(10.0)),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: c.width(40.0)),
                            child: Container(
                              width: c.width(12),
                              height: c.height(12),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/icons/bullet_blue.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: c.width(20.0)),
                            child: Text(
                              "Bayan",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(0xff000000),
                                fontSize: c.font(15),
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: c.height(10.0)),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: c.width(40.0)),
                            child: Container(
                              width: c.width(12),
                              height: c.height(12),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/icons/bullet_blue.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: c.width(20.0)),
                            child: Text(
                              "Bayan",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(0xff000000),
                                fontSize: c.font(15),
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
                Padding(
                  padding: EdgeInsets.only(left: c.width(40.0)),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: c.height(10.0)),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: c.width(40.0)),
                              child: Container(
                                width: c.width(12),
                                height: c.height(12),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/icons/bullet_blue.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: c.width(20.0)),
                              child: Text(
                                "Bayan",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xff000000),
                                  fontSize: c.font(15),
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: c.height(10.0)),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: c.width(40.0)),
                              child: Container(
                                width: c.width(12),
                                height: c.height(12),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/icons/bullet_blue.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: c.width(20.0)),
                              child: Text(
                                "Bayan",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xff000000),
                                  fontSize: c.font(15),
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: c.height(10.0)),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: c.width(40.0)),
                              child: Container(
                                width: c.width(12),
                                height: c.height(12),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/icons/bullet_blue.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: c.width(20.0)),
                              child: Text(
                                "Bayan",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xff000000),
                                  fontSize: c.font(15),
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
              ],
            ),
            SizedBox(
              height: c.height(100),
            ),
            Row(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Basvurular()),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.only(left: c.width(30.0)),
                    child: Container(
                      width: c.width(105.6103515625),
                      height: c.height(35),
                      decoration: BoxDecoration(
                          color: Color(0xffffd500),
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                        child: Text(
                          "Başvurular",
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
                ),
                Padding(
                  padding: EdgeInsets.only(left: c.width(30.0)),
                  child: Container(
                    width: c.width(153.08984375),
                    height: c.height(35.2420654296875),
                    decoration: BoxDecoration(
                        color: Color(0xff395aff),
                        borderRadius: BorderRadius.circular(23)),
                    child: Center(
                      child: Text(
                        "Yayından Kaldır",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xffffffff),
                          fontSize:c.font(15),
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
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
