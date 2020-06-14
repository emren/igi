import 'package:flutter/material.dart';
import 'package:igi/models/kullanici.dart';
import 'package:igi/unused/ilan_ekle.dart';
import 'package:igi/services/size_config.dart';
import 'package:provider/provider.dart';

import 'ilan_ekle2.dart';

class Ekle extends StatefulWidget {
  @override
  _EkleState createState() => _EkleState();
}

class _EkleState extends State<Ekle> {

  SizeConfig c = SizeConfig();

  @override
  Widget build(BuildContext context) {
    Kullanici kullanici = Provider.of<Kullanici>(context);
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
                top: c.height(10.0),
                bottom: c.height(10.0),
                left: c.width(10),
                right: c.width(10)),
            child: Container(
              width: c.width(208.607421875),
              height: c.height(41),
              decoration: BoxDecoration(
                  color: Color(0xffffd500),
                  borderRadius: BorderRadius.circular(23)),
              child: Center(
                child: Text(
                  "Paylaşım Yap",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Color(0xff000000),
                    fontSize: c.font(14),
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
            ),
          ),
          kullanici.kullanici.isFirma ? GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                //MaterialPageRoute(builder: (context) => IlanEkle()),
                MaterialPageRoute(builder: (context) => IlanEkle2()),
              );
            },
            child: Padding(
              padding: EdgeInsets.only(
                  top: c.height(10.0),
                  bottom: c.height(10.0),
                  left: c.width(10),
                  right: c.width(10)),
              child: Container(
                width: c.width(208.607421875),
                height: c.height(41),
                decoration: BoxDecoration(
                    color: Color(0xff395aff),
                    borderRadius: BorderRadius.circular(23)),
                child: Center(
                  child: Text(
                    "İş İlanı Ver",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xffffffff),
                      fontSize: c.font(14),
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
            ),
          ) : Container(),
        ],
      ),
    );
  }
}
