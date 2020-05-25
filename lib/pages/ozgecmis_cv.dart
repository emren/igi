import 'package:flutter/material.dart';
import 'package:igi/services/size_config.dart';

import 'ozgecmis4.dart';

class OzgecmisCv extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig c = SizeConfig();

    return Scaffold(
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.height,
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
                    Padding(
                      padding: EdgeInsets.only(left: c.width(200.0)),
                      child: Text(
                        "özgeçmişim",
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
              height: c.height(100),
            ),
            Padding(
              padding: EdgeInsets.only(left:c.width(100.0)),
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: "İSİM SOYİSİM\n",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xff000000),
                      fontSize: c.font(24),
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  TextSpan(
                    text: "Arzu Gök",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xff395aff),
                      fontSize: c.font(20),
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ]),
              ),
            ),
            SizedBox(
              height: c.height(20),
            ),
            Padding(
              padding: EdgeInsets.only(left:c.width(100.0)),
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: "EĞİTİM DURUMU\n",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xff000000),
                        fontSize: c.font(24),
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                      )),
                  TextSpan(
                    text: "Lise Mezunu",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xff395aff),
                      fontSize: c.font(20),
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ]),
              ),
            ),
            SizedBox(
              height: c.height(20),
            ),
            Padding(
              padding: EdgeInsets.only(left:c.width(100.0)),
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: "TECRÜBE DURUMU\n",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xff000000),
                        fontSize: c.font(24),
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                      )),
                  TextSpan(
                    text: "Tecrübeli",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xff395aff),
                      fontSize: c.font(20),
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ]),
              ),
            ),
            SizedBox(
              height: c.height(20),
            ),
            Padding(
              padding: EdgeInsets.only(left:c.width(100.0)),
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: "ÇALIŞIYOR MU ?\n",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xff000000),
                        fontSize: c.font(24),
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                      )),
                  TextSpan(
                    text: "Evet",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xff395aff),
                      fontSize: c.font(20),
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ]),
              ),
            ),
            SizedBox(
              height: c.height(20),
            ),
            Padding(
              padding: EdgeInsets.only(left:c.width(100.0)),
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: "CİNSİYET\n",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xff000000),
                        fontSize: c.font(24),
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                      )),
                  TextSpan(
                    text: "Kadın",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xff395aff),
                      fontSize: c.font(20),
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ]),
              ),
            ),
            SizedBox(
              height: c.height(20),
            ),
            Padding(
              padding: EdgeInsets.only(left:c.width(100.0)),
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: "YAŞADIĞI YER\n",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xff000000),
                        fontSize: c.font(24),
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                      )),
                  TextSpan(
                    text: "Ataşehir - Merkez",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xff395aff),
                      fontSize: c.font(20),
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
