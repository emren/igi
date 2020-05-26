import 'package:flutter/material.dart';
import 'package:igi/services/size_config.dart';
import 'package:igi/widgets/basvuru_widget.dart';

class ReklamVer extends StatelessWidget {
  SizeConfig c = SizeConfig();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
//                      Padding(
//                        padding: EdgeInsets.only(left: c.width(180.0)),
//                        child: Text(
//                          "hesap ayarları",
//                          style: TextStyle(
//                            fontFamily: 'Poppins',
//                            color: Color(0xff000000),
//                            fontSize: c.font(20),
//                            fontWeight: FontWeight.w700,
//                            fontStyle: FontStyle.normal,
//                          ),
//                        ),
//                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: c.height(50),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: c.width(30.0), right: c.width(30)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Adınız',
                        labelStyle: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xff000000),
                          fontSize: c.font(14),
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'E-Posta',
                        labelStyle: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xff000000),
                          fontSize: c.font(14),
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Telefon',
                        labelStyle: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xff000000),
                          fontSize: c.font(14),
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: c.height(30),
                    ),
                    Text(
                      "Açıklama",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xff000000),
                        fontSize: c.font(14),
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: c.height(10)),
                      child: Container(
                        width: c.width(286),
                        height: c.height(108),
                        decoration: BoxDecoration(
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.circular(22),
                          boxShadow: [
                            BoxShadow(
                                color: Color(0x54000000),
                                offset: Offset(0, 3),
                                blurRadius: 6,
                                spreadRadius: 0),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: c.height(30),
              ),
              Container(
                width: c.width(92),
                height: c.height(29.45361328125),
                decoration: BoxDecoration(
                    color: Color(0xffffd500),
                    borderRadius: BorderRadius.circular(23)),
                child: Center(
                  child: Text(
                    "Gönder",
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
            ],
          ),
        ),
      ),
    );
  }
}
