import 'package:flutter/material.dart';
import 'package:igi/widgets/bullet_widget.dart';

class CardDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: 30,
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Container(
                        width: 10.7412109375,
                        height: 18.764892578125,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/icons/back_icon.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        "geri",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xff000000),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    "Güzellik Uzmanı",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xff000000),
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 150.0),
                  child: Container(
                    width: 14.7265625,
                    height: 18,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icons/map-pin.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    "Berlin",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xff000000),
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "denemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedene",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Color(0xff000000),
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
            Text(
              "Aranan Özellikler",
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Color(0xff777777),
                fontSize: 17,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
              ),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 50.0),
                  child: Column(
                    children: <Widget>[
                      BulletWidget(),
                      BulletWidget(),
                      BulletWidget(),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 100.0),
                  child: Column(
                    children: <Widget>[
                      BulletWidget(),
                      BulletWidget(),
                      BulletWidget(),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 100.607421875,
              height: 29,
              decoration: BoxDecoration(
                  color: Color(0xffffd500),
                  borderRadius: BorderRadius.circular(23)),
              child: Center(
                child: Text(
                  "Başvur",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Color(0xff000000),
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
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
