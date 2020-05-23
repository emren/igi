import 'package:flutter/material.dart';
import 'package:igi/services/size_config.dart';
import 'package:igi/widgets/anasayfa_card.dart';

class AnaSayfa extends StatefulWidget {
  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {

  SizeConfig c = SizeConfig();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: c.height(50),
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left:c.width(20.0)),
                child: Text(
                  "Anasayfa",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Color(0xff000000),
                    fontSize: c.font(20),
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left:c.width(200.0)),
                child: Container(
                  width: c.width(25.748046875),
                  height: c.height(17.1650390625),
                  decoration: BoxDecoration(image: DecorationImage(
                    image: AssetImage('assets/icons/anasayfa_sort_icon.png'),
                    fit: BoxFit.cover,
                  ),),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left:c.width(20.0)),
                child: Container(
                    width: c.width(24.45703125),
                    height: c.height(21.969757080078125),
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
          SizedBox(height: c.height(50),),
          AnasayfaCard(),
          AnasayfaCard(),
          AnasayfaCard(),
          AnasayfaCard(),
        ],
      ),
    );
  }
}
