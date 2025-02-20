import 'package:flutter/material.dart';
import 'package:igi/pages/giris_aday.dart';
import 'package:igi/pages/giris_firma.dart';
import 'package:igi/services/size_config.dart';

import 'giris.dart';

class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  SizeConfig c = SizeConfig();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: c.height(150),
              //height: 16.74 * SizeConfig.heightMultiplier,
            ),
            Padding(
              padding: EdgeInsets.only(left: c.width(50.0)),
              child: Container(
                  width: c.width(280),
                  height: c.height(256),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      //image: AssetImage('assets/pics/igi_entry.png'),
                      image: AssetImage('assets/pics/igi_logo.png'),
                    ),
                  )),
            ),
            SizedBox(
              height: c.height(150),
              //height: 3.35 * SizeConfig.heightMultiplier,
            ),
            Row(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GirisFirma()),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: c.width(60.0),
                        bottom: c.height(20),
                        right: c.width(20)),
                    child: Container(
                      width: c.width(136),
                      height: c.height(45),
                      decoration: BoxDecoration(
                        color: Color(0xff395aff),
                        borderRadius: BorderRadius.circular(23),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0x29000000),
                              offset: Offset(0, 3),
                              blurRadius: 6,
                              spreadRadius: 0)
                        ],
                      ),
                      child: Center(
                        child: Text(
                          "Firma kayıt",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xffffffff),
                            fontSize: c.font(20),
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GirisAday()),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.only(bottom: c.height(20)),
                    child: Container(
                      width: c.width(136),
                      height: c.height(45),
                      decoration: BoxDecoration(
                        color: Color(0xffffd500),
                        borderRadius: BorderRadius.circular(23),
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
                          "Aday kayıt",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xff000000),
                            fontSize: c.font(20),
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Giris()),
                );
              },
              child: Container(
                width: c.width(300),
                height: c.height(45),
                decoration: BoxDecoration(
                  color: Color(0xff395aff),
                  borderRadius: BorderRadius.circular(23),
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
                    "Giriş Yap",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xffffffff),
                      fontSize: c.font(20),
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
    );
  }
}
