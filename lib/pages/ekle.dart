import 'package:flutter/material.dart';
import 'package:igi/pages/ilan_ekle.dart';

class Ekle extends StatefulWidget {
  @override
  _EkleState createState() => _EkleState();
}

class _EkleState extends State<Ekle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              width: 208.607421875,
              height: 41,
              decoration: BoxDecoration(
                  color: Color(0xffffd500),
                  borderRadius: BorderRadius.circular(23)),
              child: Center(
                child: Text(
                  "Paylaşım Yap",
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
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => IlanEkle()),
              );
            },
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: 208.607421875,
                height: 41,
                decoration: BoxDecoration(
                    color: Color(0xff395aff),
                    borderRadius: BorderRadius.circular(23)),
                child: Center(
                  child: Text(
                    "İş İlanı Ver",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xffffffff),
                      fontSize: 14,
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
    );
  }
}
