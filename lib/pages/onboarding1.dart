import 'package:flutter/material.dart';
import 'package:igi/services/size_config.dart';
import 'package:igi/widgets/forward_widget.dart';

import 'onboarding2.dart';

class Onboarding1 extends StatelessWidget {

  SizeConfig c = SizeConfig();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            SizedBox(
              //height: 50,
              height: c.height(50),
            ),
            Container(
              width: c.width(100),
              height: c.height(100),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage('assets/icons/onboarding_icon1.png'),
                ),
              ),
            ),
            Stack(
              overflow: Overflow.visible,
              children: <Widget>[
                Container(
                  width: c.width(365),
                  height: c.height(365),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('assets/pics/onboarding_egitim.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: c.height(350),
                  left: c.width(170),
                  child: Container(
                    width: c.width(40),
                    height: c.height(40),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icons/egitim_stack.png'),
                      ),
                    ),
                    child: Center(child: Text('+', style: TextStyle(color: Colors.white,
                        fontSize: c.font(30)), )),
                  ),
                )
              ],
            ),
            SizedBox(
              height: c.height(50),
            ),
            Text(
              "Aradığın İş Burada",
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Color(0xff000000),
                fontSize: c.font(37),
                fontWeight: FontWeight.w800,
                fontStyle: FontStyle.normal,
              ),
            ),
            SizedBox(
              height: c.height(10),
            ),
            Text(
              "Güzellik İş İlanlarında profil oluştur \nistediğin işi hızlıca bul",
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Color(0xff9f9f9f),
                fontSize: c.font(14),
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              ),
            ),
            SizedBox(
              height: c.height(50),
            ),
            GestureDetector(onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Onboarding2()),
              );
            }, child: ForwardWidget()),
          ],
        ),
      ),
    );
  }
}
