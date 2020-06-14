import 'package:flutter/material.dart';
import 'package:igi/models/ilan_portfoy.dart';
import 'package:igi/models/kullanici.dart';
import 'package:igi/pages/ilan_ekle2.dart';
import 'package:igi/services/size_config.dart';
import 'package:igi/widgets/basvuru_widget.dart';
import 'package:igi/widgets/ilan_widget.dart';
import 'package:provider/provider.dart';

class Ilanlar extends StatefulWidget {
  @override
  _IlanlarState createState() => _IlanlarState();
}

class _IlanlarState extends State<Ilanlar> {
  SizeConfig c = SizeConfig();

  @override
  Widget build(BuildContext context) {
    IlanPortfoy ilanPortfoy = Provider.of<IlanPortfoy>(context);
    Kullanici kullanici = Provider.of<Kullanici>(context);
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
                        "ilanlarım",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xff000000),
                          fontSize: c.font(20),
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
            Container(
              //color: Colors.red,
              width: MediaQuery.of(context).size.width * 0.4,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: c.width(70),
                    child: Container(
                      width: c.width(86.40234375),
                      height: c.height(35),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(23),
                        border: Border.all(
                          color: Color(0xff395AFF),
                          width: c.width(2),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => IlanEkle2()),
                      );
                    },
                    child: Container(
                      width: c.width(110.607421875),
                      height: c.height(35),
                      decoration: BoxDecoration(
                          color: Color(0xffffd500),
                          borderRadius: BorderRadius.circular(23)),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: c.width(10.0)),
                            child: Container(
                              width: c.width(18),
                              height: c.height(18),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/icons/ilan_ekle_icon.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: c.width(10.0)),
                            child: Text(
                              "İlan ekle",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(0xff000000),
                                fontSize: c.font(14),
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: c.height(3),
                    left: c.width(120),
                    child: Text(
                      ilanPortfoy.kullaniciIlanlari(kullanici.kullanici).length.toString(),
                      //"12",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xff000000),
                        fontSize: c.font(20),
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * .7,
              child: ListView.builder(
                  //itemCount: ilanPortfoy.ilanlar.length,
                  itemCount:
                      ilanPortfoy.kullaniciIlanlari(kullanici.kullanici).length,
                  itemBuilder: (BuildContext context, int index) {
                    return IlanWidget(index);
                  }),
            )
          ],
        ),
      ),
    );
  }
}
