import 'package:flutter/material.dart';
import 'package:igi/services/size_config.dart';

class IlanEkle2 extends StatefulWidget {
  @override
  _IlanEkle2State createState() => _IlanEkle2State();
}

class _IlanEkle2State extends State<IlanEkle2> {
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
                    Padding(
                      padding: EdgeInsets.only(left: c.width(200.0)),
                      child: Text(
                        "ilan ekle",
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
              height: c.height(10),
            ),
            Padding(
              padding: EdgeInsets.only(left: c.width(50.0)),
              child: Text(
                "İlan Başlığı",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Color(0xff000000),
                  fontSize: c.font(14),
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: c.width(50.0), right: c.width(50)),
              child: TextField(),
            ),
            Padding(
              padding: EdgeInsets.only(left: c.width(50.0)),
              child: Text(
                "Ünvan",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Color(0xff000000),
                  fontSize: c.font(14),
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: c.width(40.0)),
              child: Container(
                width: c.width(121.330078125),
                height: c.height(31.16748046875),
                decoration: BoxDecoration(
                  //borderRadius: BorderRadius.circular(23),
                  image: DecorationImage(
                    image: AssetImage('assets/pics/select_button.png'),
                    fit: BoxFit.cover,
                  ),
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
                  child: Text(
                    "İl",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xff000000),
                      fontSize: c.font(14),
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: c.width(200.0)),
                  child: Text(
                    "İlçe",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xff000000),
                      fontSize: c.font(14),
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ],
            ),

            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: c.width(40.0)),
                  child: Container(
                    width: c.width(121.330078125),
                    height: c.height(31.16748046875),
                    decoration: BoxDecoration(
                      //borderRadius: BorderRadius.circular(23),
                      image: DecorationImage(
                        image: AssetImage('assets/pics/select_button.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: c.width(80.0)),
                  child: Container(
                    width: c.width(121.330078125),
                    height: c.height(31.16748046875),
                    decoration: BoxDecoration(
                      //borderRadius: BorderRadius.circular(23),
                      image: DecorationImage(
                        image: AssetImage('assets/pics/select_button.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
//            Padding(
//              padding: EdgeInsets.only(left: 50.0),
//              child: Text(
//                "Cinsiyet ",
//                style: TextStyle(
//                  fontFamily: 'Poppins',
//                  color: Color(0xff000000),
//                  fontSize: 14,
//                  fontWeight: FontWeight.w500,
//                  fontStyle: FontStyle.normal,
//                ),
//              ),
//            ),
//            Padding(
//              padding: EdgeInsets.only(left: 40.0),
//              child: Container(
//                width: 121.330078125,
//                height: 31.16748046875,
//                decoration: BoxDecoration(
//                  //borderRadius: BorderRadius.circular(23),
//                  image: DecorationImage(
//                    image: AssetImage('assets/pics/select_button.png'),
//                    fit: BoxFit.cover,
//                  ),
//                ),
//              ),
//            ),
//            Padding(
//              padding: EdgeInsets.only(left: 50.0),
//              child: Text(
//                "Yaş Aralığı",
//                style: TextStyle(
//                  fontFamily: 'Poppins',
//                  color: Color(0xff000000),
//                  fontSize: 14,
//                  fontWeight: FontWeight.w500,
//                  fontStyle: FontStyle.normal,
//                ),
//              ),
//            ),
//            Row(
//              children: <Widget>[
//                Padding(
//                  padding: EdgeInsets.only(left: 40.0),
//                  child: Container(
//                    width: 121.330078125,
//                    height: 31.16748046875,
//                    decoration: BoxDecoration(
//                      //borderRadius: BorderRadius.circular(23),
//                      image: DecorationImage(
//                        image: AssetImage('assets/pics/select_button.png'),
//                        fit: BoxFit.cover,
//                      ),
//                    ),
//                  ),
//                ),
//                Padding(
//                  padding: EdgeInsets.only(left: 80.0),
//                  child: Container(
//                    width: 121.330078125,
//                    height: 31.16748046875,
//                    decoration: BoxDecoration(
//                      //borderRadius: BorderRadius.circular(23),
//                      image: DecorationImage(
//                        image: AssetImage('assets/pics/select_button.png'),
//                        fit: BoxFit.cover,
//                      ),
//                    ),
//                  ),
//                ),
//              ],
//            ),
            SizedBox(
              height: c.height(50),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: c.width(50.0)),
                  child: Text(
                    "Cinsiyet",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xff000000),
                      fontSize: c.font(14),
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: c.width(140.0)),
                  child: Text(
                    "Çalışma Şekli",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xff000000),
                      fontSize: c.font(14),
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: c.width(40.0)),
                  child: Container(
                    width: c.width(121.330078125),
                    height: c.height(31.16748046875),
                    decoration: BoxDecoration(
                      //borderRadius: BorderRadius.circular(23),
                      image: DecorationImage(
                        image: AssetImage('assets/pics/select_button.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: c.width(80.0)),
                  child: Container(
                    width: c.width(121.330078125),
                    height: c.height(31.16748046875),
                    decoration: BoxDecoration(
                      //borderRadius: BorderRadius.circular(23),
                      image: DecorationImage(
                        image: AssetImage('assets/pics/select_button.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: c.height(50),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: c.width(50.0)),
                  child: Text(
                    "Tecrübe",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xff000000),
                      fontSize: c.font(14),
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: c.width(140.0)),
                  child: Text(
                    "Alınacak Kişi",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xff000000),
                      fontSize: c.font(14),
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: c.width(40.0)),
                  child: Container(
                    width: c.width(121.330078125),
                    height: c.height(31.16748046875),
                    decoration: BoxDecoration(
                      //borderRadius: BorderRadius.circular(23),
                      image: DecorationImage(
                        image: AssetImage('assets/pics/select_button.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: c.width(80.0)),
                  child: Container(
                    width: c.width(121.330078125),
                    height: c.height(31.16748046875),
                    decoration: BoxDecoration(
                      //borderRadius: BorderRadius.circular(23),
                      image: DecorationImage(
                        image: AssetImage('assets/pics/select_button.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: c.height(50),
            ),
            Padding(
              padding: EdgeInsets.only(left: c.width(50.0)),
              child: Text(
                "İlan Metni",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Color(0xff000000),
                  fontSize: c.font(14),
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: c.width(50.0)),
              child: Container(
                width: c.width(286),
                height: c.height(108),
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.circular(11),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0x30000000),
                        offset: Offset(0, 3),
                        blurRadius: 6,
                        spreadRadius: 0),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: c.height(20),
            ),
            Center(
              child: Container(
                width: c.width(92),
                height: c.height(29.45361328125),
                decoration: BoxDecoration(
                  color: Color(0xffffd500),
                  borderRadius: BorderRadius.circular(23),
                ),
                child: Center(
                  child: Text(
                    "Yayınla",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xff000000),
                      fontSize: c.font(16),
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
