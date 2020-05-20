import 'package:flutter/material.dart';
import 'package:igi/pages/card_detail.dart';

class AnasayfaCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CardDetail()),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          width: 343,
          height: 71.6842041015625,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                  color: Color(0x29000000),
                  offset: Offset(0, 3),
                  blurRadius: 6,
                  spreadRadius: 0),
            ],
          ),
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Uzman Estetisyen Aranıyor",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xff000000),
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    Text(
                      "Selen Güzellik Akademi",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xff000000),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left:100.0),
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
                padding: EdgeInsets.only(left:10.0),
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
        ),
      ),
    );
  }
}
