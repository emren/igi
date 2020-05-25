import 'package:flutter/material.dart';
import 'package:igi/services/size_config.dart';

import 'ozgecmis4.dart';
import 'ozgecmis9.dart';

class Ozgecmis8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig c = SizeConfig();

    return Scaffold(
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.height,
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
              height: c.height(200),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Text(
                "Yaşadığın il ve ilçe nedir?",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Color(0xff707070),
                  fontSize: c.font(23),
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
            SizedBox(
              height: c.height(50),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: c.width(50.0)),
                  child: Container(
                    width: c.width(130),
                    height: c.height(31),
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0x3d000000),
                            offset: Offset(0, 3),
                            blurRadius: 6,
                            spreadRadius: 0),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: c.width(70.0)),
                      child: Container(
                        width: c.width(18.765625),
                        height: c.height(10.7412109375),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/icons/dropdown_icon_black.png'),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: c.width(20.0)),
                  child: Container(
                    width: c.width(130),
                    height: c.height(31),
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0x3d000000),
                            offset: Offset(0, 3),
                            blurRadius: 6,
                            spreadRadius: 0),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: c.width(70.0)),
                      child: Container(
                        width: c.width(18.765625),
                        height: c.height(10.7412109375),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/icons/dropdown_icon_black.png'),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: c.height(50),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Ozgecmis9()),
                );
              },
              child: Container(
                width: c.width(106.0009765625),
                height: c.height(28),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(23),
                    color: Color(0xffffd500)),
                child: Center(
                  child: Text(
                    "Devam",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xff000000),
                      fontSize: c.font(18),
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
