import 'package:flutter/material.dart';
import 'package:igi/widgets/anasayfa_card.dart';

class AnaSayfa extends StatefulWidget {
  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left:20.0),
                child: Text(
                  "Anasayfa",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Color(0xff000000),
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left:200.0),
                child: Container(
                  width: 25.748046875,
                  height: 17.1650390625,
                  decoration: BoxDecoration(image: DecorationImage(
                    image: AssetImage('assets/icons/anasayfa_sort_icon.png'),
                    fit: BoxFit.cover,
                  ),),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left:20.0),
                child: Container(
                    width: 24.45703125,
                    height: 21.969757080078125,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icons/anasayfa_arrow_icon.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                ),
              ),
            ],
          ),
          SizedBox(height: 50,),
          AnasayfaCard(),
          AnasayfaCard(),
          AnasayfaCard(),
          AnasayfaCard(),
        ],
      ),
    );
  }
}
