import 'package:flutter/material.dart';
import 'package:igi/pages/aday_ayarlar.dart';
import 'package:igi/pages/favori_ilan.dart';
import 'package:igi/pages/ozgecmis1.dart';
import 'package:igi/pages/reklam_ver.dart';
import 'package:igi/services/size_config.dart';

import 'basvuru.dart';
import 'egitim.dart';
import 'firma_ayarlar.dart';

class MenuFirma extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig c = SizeConfig();

    return Scaffold(
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
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
                    Padding(
                      padding: EdgeInsets.only(left: c.width(250.0)),
                      child: Text(
                        "Menü",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xff000000),
                          fontSize: c.font(20),
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: c.height(50),
            ),
            Container(
              width: c.width(343),
              height: c.height(288.68408203125),
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
              child: Column(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Basvuru()),
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: c.height(30),
                          left: c.width(20),
                          right: c.width(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "İlanlarım",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xff000000),
                              fontSize: c.font(14),
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          Container(
                            width: c.width(10),
                            height: c.height(10),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/icons/arrow_icon_gray.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Ozgecmis1()),
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: c.height(30),
                          left: c.width(20),
                          right: c.width(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Üyelik Paketleri",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xff000000),
                              fontSize: c.font(14),
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          Container(
                            width: c.width(10),
                            height: c.height(10),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/icons/arrow_icon_gray.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Egitim()),
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: c.height(30),
                          left: c.width(20),
                          right: c.width(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Siparişlerim",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xff000000),
                              fontSize: c.font(14),
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          Container(
                            width: c.width(10),
                            height: c.height(10),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/icons/arrow_icon_gray.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ReklamVer()),
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: c.height(30),
                          left: c.width(20),
                          right: c.width(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Reklam  Ver",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xff000000),
                              fontSize: c.font(14),
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          Container(
                            width: c.width(10),
                            height: c.height(10),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/icons/arrow_icon_gray.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FirmaAyarlar()),
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: c.height(30),
                          left: c.width(20),
                          right: c.width(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Hesap Ayarları",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xff000000),
                              fontSize: c.font(14),
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          Container(
                            width: c.width(10),
                            height: c.height(10),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/icons/arrow_icon_gray.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: c.height(20),
            ),
            Container(
              width: c.width(343),
              height: c.height(44.68408203125),
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
              child: GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: EdgeInsets.only(
                      top: c.height(8), left: c.width(20), right: c.width(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Çıkış Yap",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xff000000),
                          fontSize: c.font(14),
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                      Container(
                        width: c.width(10),
                        height: c.height(10),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image:
                                AssetImage('assets/icons/arrow_icon_gray.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
