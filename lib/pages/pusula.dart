import 'package:flutter/material.dart';
import 'package:igi/widgets/pusula_widget.dart';

class Pusula extends StatefulWidget {
  @override
  _PusulaState createState() => _PusulaState();
}

class _PusulaState extends State<Pusula> {
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
                      "Keşfet",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xff000000),
                        fontSize: 30,
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
            height: 50,
          ),

          PusulaWidget(),
          PusulaWidget(),
          PusulaWidget(),

        ],
      ),
    );
  }
}
