import 'package:flutter/material.dart';
import 'package:igi/models/kullanici.dart';
import 'package:igi/services/size_config.dart';
import 'package:provider/provider.dart';

import 'ozgecmis5.dart';

class Ozgecmis4 extends StatefulWidget {
  @override
  _Ozgecmis4State createState() => _Ozgecmis4State();
}

class _Ozgecmis4State extends State<Ozgecmis4> {
  String _unvanValue;
  @override
  Widget build(BuildContext context) {
    Kullanici kullanici = Provider.of<Kullanici>(context);
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
              width: MediaQuery.of(context).size.width * 0.5,
              child: Text(
                "Ünva'nın nedir ?",
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
            Container(
              width: c.width(191),
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
                padding: EdgeInsets.only(left: c.width(5.0)),
                child: Container(
//                  width: c.width(18.765625),
//                  height: c.height(10.7412109375),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
//                      hint: Text(
//                        '  Seçiniz',
//                        style: TextStyle(
//                          fontFamily: 'Poppins',
//                          color: Color(0xff9f9f9f),
//                          fontSize: c.font(16),
//                          fontWeight: FontWeight.w700,
//                          fontStyle: FontStyle.normal,
//                        ),
//                      ),
                      isExpanded: true,
                      value: _unvanValue,
                      icon:
                      Image.asset('assets/icons/dropdown_icon_black.png'),
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xff9f9f9f),
                        fontSize: c.font(16),
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                      ),
                      onChanged: (String newValue) {
                        setState(() {
                          _unvanValue = newValue;
                        });
                      },
                      items: <String>[
                        'Microblading Uzmani',
                        'Cilt Bakim Uzmani',
                        'Ipek Kirpik Uzmani',
                        'Kalici Makyaj Uzmani',
                        'Erkek Kuaforu',
                        'Bayan Kuaforu',
                        'Guzellik Uzmani',
                        'Diyetisyen',
                        'Estetisyen'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text('  ' + value),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
            ),

            GestureDetector(
              onTap: (){
                kullanici.kullanici.ozgecmis.unvan = _unvanValue;
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Ozgecmis5()),
                );
              },
              child: Padding(
                padding: EdgeInsets.only(top: c.height(40.0)),
                child: Container(
                  width: c.width(106.0009765625),
                  height: c.height(28),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
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
            ),
          ],
        ),
      ),
    );
  }
}
