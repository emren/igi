import 'package:flutter/material.dart';
import 'package:igi/services/size_config.dart';
import 'package:igi/widgets/pusula_widget.dart';

class Pusula extends StatefulWidget {
  @override
  _PusulaState createState() => _PusulaState();
}

class _PusulaState extends State<Pusula> {

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
                      "Keşfet",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xff000000),
                        fontSize: c.font(30),
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
            height: c.height(50),
          ),

          PusulaWidget(),
          PusulaWidget(),
          PusulaWidget(),

        ],
      ),
    );
  }
}
