import 'package:flutter/material.dart';

class IlanEkle extends StatefulWidget {
  @override
  _IlanEkleState createState() => _IlanEkleState();
}

class _IlanEkleState extends State<IlanEkle> {
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
              height: 50,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: 50,
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
                    Padding(
                      padding: EdgeInsets.only(left: 200.0),
                      child: Text(
                        "ilan ekle",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xff000000),
                          fontSize: 20,
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
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: 50.0),
              child: Text(
                "İlan Başlığı",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Color(0xff000000),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 50.0, right: 50),
              child: TextField(),
            ),
            Padding(
              padding: EdgeInsets.only(left: 50.0),
              child: Text(
                "Ünvan",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Color(0xff000000),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40.0),
              child: Container(
                width: 121.330078125,
                height: 31.16748046875,
                decoration: BoxDecoration(
                  //borderRadius: BorderRadius.circular(23),
                  image: DecorationImage(
                    image: AssetImage('assets/pics/select_button.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 50.0),
                  child: Text(
                    "İl",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xff000000),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 200.0),
                  child: Text(
                    "İlçe",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xff000000),
                      fontSize: 14,
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
                  padding: EdgeInsets.only(left: 40.0),
                  child: Container(
                    width: 121.330078125,
                    height: 31.16748046875,
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
                  padding: EdgeInsets.only(left: 80.0),
                  child: Container(
                    width: 121.330078125,
                    height: 31.16748046875,
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
            Padding(
              padding: EdgeInsets.only(left: 50.0),
              child: Text(
                "Cinsiyet ",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Color(0xff000000),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40.0),
              child: Container(
                width: 121.330078125,
                height: 31.16748046875,
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
              padding: EdgeInsets.only(left: 50.0),
              child: Text(
                "Yaş Aralığı",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Color(0xff000000),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 40.0),
                  child: Container(
                    width: 121.330078125,
                    height: 31.16748046875,
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
                  padding: EdgeInsets.only(left: 80.0),
                  child: Container(
                    width: 121.330078125,
                    height: 31.16748046875,
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
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 50.0),
                  child: Text(
                    "Çalışma Şekli",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xff000000),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 120.0),
                  child: Text(
                    "Maaş",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xff000000),
                      fontSize: 14,
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
                  padding: EdgeInsets.only(left: 40.0),
                  child: Container(
                    width: 121.330078125,
                    height: 31.16748046875,
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
                  padding: EdgeInsets.only(left: 80.0),
                  child: Container(
                    width: 121.330078125,
                    height: 31.16748046875,
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
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 50.0),
                  child: Text(
                    "Tecrübe",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xff000000),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 140.0),
                  child: Text(
                    "Alınacak Kişi",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xff000000),
                      fontSize: 14,
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
                  padding: EdgeInsets.only(left: 40.0),
                  child: Container(
                    width: 121.330078125,
                    height: 31.16748046875,
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
                  padding: EdgeInsets.only(left: 80.0),
                  child: Container(
                    width: 121.330078125,
                    height: 31.16748046875,
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
            Padding(
              padding: EdgeInsets.only(left: 50.0),
              child: Text(
                "İlan Metni",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Color(0xff000000),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 50.0),
              child: Container(
                width: 286,
                height: 108,
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
            SizedBox(height: 20,),
            Center(
              child: Container(
                width: 92,
                height: 29.45361328125,
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
                      fontSize: 16,
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
