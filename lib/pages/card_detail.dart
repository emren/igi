import 'package:flutter/material.dart';
import 'package:igi/models/ilan_portfoy.dart';
import 'package:igi/services/size_config.dart';
import 'package:igi/widgets/bullet_widget.dart';
import 'package:provider/provider.dart';

class CardDetail extends StatelessWidget {
  int index;
  SizeConfig c = SizeConfig();

  CardDetail(this.index);

  @override
  Widget build(BuildContext context) {
    IlanPortfoy ilanPortfoy = Provider.of<IlanPortfoy>(context);

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
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: c.height(30),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: c.width(20.0)),
                      child: Container(
                        width: c.width(10.7412109375),
                        height: c.height(8.764892578125),
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
                  ],
                ),
              ),
            ),
            SizedBox(
              height: c.height(50),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: c.width(20.0)),
                  child: Text(
                    //"Güzellik Uzmanı",
                    ilanPortfoy.ilanGetir(index).unvan,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xff000000),
                      fontSize: c.font(18),
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: c.width(120.0)),
                  child: Container(
                    width: c.width(14.7265625),
                    height: c.height(18),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icons/map-pin.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: c.width(10.0)),
                  child: Text(
                    //"Berlin",
                    ilanPortfoy.ilanGetir(index).il,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xff000000),
                      fontSize: c.font(12),
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: c.height(20.0),
                  bottom: c.height(20.0),
                  left: c.width(20),
                  right: c.width(20)),
              child: Text(
                ilanPortfoy.ilanGetir(index).ilanMetni,
                //"denemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedenemedene",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Color(0xff000000),
                  fontSize: c.font(12),
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
            Text(
              "Aranan Özellikler",
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Color(0xff777777),
                fontSize: c.font(17),
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
              ),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: c.width(50.0)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      BulletWidget(ilanPortfoy.ilanGetir(index).cinsiyet),
                      BulletWidget(ilanPortfoy.ilanGetir(index).calismaSekli),
                      BulletWidget(ilanPortfoy.ilanGetir(index).alinacakKisi.toString()),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: c.width(100.0)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      BulletWidget(ilanPortfoy.ilanGetir(index).calismaSekli),
                      BulletWidget(ilanPortfoy.ilanGetir(index).calismaSekli),
                      BulletWidget(ilanPortfoy.ilanGetir(index).calismaSekli),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: c.height(50),
            ),
            Container(
              width: c.width(100.607421875),
              height: c.height(29),
              decoration: BoxDecoration(
                  color: Color(0xffffd500),
                  borderRadius: BorderRadius.circular(23)),
              child: Center(
                child: Text(
                  "Başvur",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Color(0xff000000),
                    fontSize: c.font(14),
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
