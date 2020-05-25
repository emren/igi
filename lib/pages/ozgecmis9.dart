import 'package:flutter/material.dart';
import 'package:igi/services/size_config.dart';

import 'ozgecmis4.dart';
import 'ozgecmis_cv.dart';

class Ozgecmis9 extends StatelessWidget {
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
              width: MediaQuery.of(context).size.width * 0.7,
              child: Text(
                "Başarıyla tamamladın :)",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Color(0xff000000),
                  fontSize: c.font(23),
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
            SizedBox(
              height: c.height(50),
            ),
            Container(
                width: c.width(112),
                height: c.height(112),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/pics/tamam.png'),
                    fit: BoxFit.cover,
                  ),
                ),
            ),
            SizedBox(
              height: c.height(50),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OzgecmisCv()),
                );
              },
              child: Container(
                width: c.width(126),
                height: c.height(34),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(23),
                    color: Color(0xffffd500)),
                child: Center(
                  child: Text(
                    "Görüntüle",
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
