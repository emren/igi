import 'package:flutter/material.dart';
import 'package:igi/pages/onboarding.dart';
import 'package:igi/services/size_config.dart';
import 'package:igi/widgets/forward_widget.dart';

class Onboarding3 extends StatelessWidget {

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
              height: c.height(50),
            ),
            Container(
              width: c.width(100),
              height: c.height(100),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage('assets/icons/onboarding_icon3.png'),
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
                      image: AssetImage('assets/pics/onboarding_ilan.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: c.height(350),
                  left: c.width(120),
                  child: Container(
                    width: c.height(112.6669921875),
                    height: c.height(45),
                    decoration: BoxDecoration(
                        color: Color(0xff395aff),
                        borderRadius: BorderRadius.circular(23)),
                    child: Center(
                      child: Text(
                        "Sosyalleş",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xffffffff),
                          fontSize: c.font(20),
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: c.height(50),
            ),
            Text(
              "Network Burada",
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
              "Profil ve paylaşım özellikleri ile yaptığın \nişleri paylaş istediğin firmalarla iletişim \nkurmayı kolaylaştır ",
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
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Onboarding()),
                  );
                },
                child: ForwardWidget()),
          ],
        ),
      ),
    );
  }
}
