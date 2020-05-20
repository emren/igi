import 'package:flutter/material.dart';
import 'package:igi/pages/onboarding.dart';
import 'package:igi/pages/onboarding3.dart';
import 'package:igi/widgets/forward_widget.dart';

class Onboarding2 extends StatelessWidget {
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
                  image: AssetImage('assets/icons/onboarding_icon2.png'),
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
                      image: AssetImage('assets/pics/onboarding_sosyallik.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 350,
                  left: 120,
                  child: Container(
                    width: 112.6669921875,
                    height: 45,
                    decoration: BoxDecoration(
                        color: Color(0xffffd500),
                        borderRadius: BorderRadius.circular(23)),
                    child: Center(
                      child: Text(
                        "katıl",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xff000000),
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Eğitim Burada",
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
              "Güzellik İş İlanlarında MEB onaylı\neğitim alabilirsin hem de iş garantili",
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
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Onboarding3()),
                  );
                },
                child: ForwardWidget()),
          ],
        ),
      ),
    );
  }
}
