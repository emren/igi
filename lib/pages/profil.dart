import 'package:flutter/material.dart';
import 'package:igi/pages/menu_firma.dart';
import 'package:igi/services/size_config.dart';
import 'package:igi/widgets/profil_widget.dart';

import 'menu_aday.dart';

class Profil extends StatefulWidget {
  @override
  _ProfilState createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  SizeConfig c = SizeConfig();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .4,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/pics/arzu.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * .6,
                color: Colors.white,
                child: ProfilWidget(),
              ),
            ),
          ),
          Positioned(
            top: c.height(50),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: c.width(20)),
                  child: Container(
                    width: c.width(10.740234375),
                    height: c.height(18.7650146484375),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icons/back_icon_white.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      //MaterialPageRoute(builder: (context) => MenuAday()),
                      MaterialPageRoute(builder: (context) => MenuFirma()),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.only(left: c.width(340)),
                    child: Container(
                        width: c.width(24),
                        height: c.height(24),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/icons/burger_icon_white.png'),
                            fit: BoxFit.cover,
                          ),
                        )
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
