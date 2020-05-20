import 'package:flutter/material.dart';
import 'package:igi/widgets/forward_widget.dart';

import 'onboarding2.dart';

class Onboarding1 extends StatelessWidget {
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
              height: 50,
            ),
            Container(
              width: 100,
              height: 100,
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
                  width: 365,
                  height: 365,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('assets/pics/onboarding_egitim.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 350,
                  left: 170,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icons/egitim_stack.png'),
                      ),
                    ),
                    child: Center(child: Text('+', style: TextStyle(color: Colors.white, fontSize: 30), )),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Aradığın İş Burada",
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Color(0xff000000),
                fontSize: 37,
                fontWeight: FontWeight.w800,
                fontStyle: FontStyle.normal,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Güzellik İş İlanlarında profil oluştur \nistediğin işi hızlıca bul",
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Color(0xff9f9f9f),
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              ),
            ),
            SizedBox(
              height: 50,
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
