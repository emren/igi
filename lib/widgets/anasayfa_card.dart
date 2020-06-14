import 'package:flutter/material.dart';
import 'package:igi/models/ilan_portfoy.dart';
import 'package:igi/pages/card_detail.dart';
import 'package:igi/services/size_config.dart';
import 'package:provider/provider.dart';

class AnasayfaCard extends StatelessWidget {
  int index;
  SizeConfig c = SizeConfig();

  AnasayfaCard(this.index);

  @override
  Widget build(BuildContext context) {
    IlanPortfoy ilanPortfoy = Provider.of<IlanPortfoy>(context);

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CardDetail(index)),
        );
      },
      child: Padding(
        padding: EdgeInsets.only(
            top: c.height(5.0),
            bottom: c.height(5.0),
            left: c.width(5),
            right: c.width(5)),
        child: Container(
          width: c.width(343),
          height: c.height(71.6842041015625),
          decoration: BoxDecoration(
            color: Color(0xffffffff),
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                  color: Color(0x29000000),
                  offset: Offset(0, 3),
                  blurRadius: 6,
                  spreadRadius: 0),
            ],
          ),
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: c.width(10.0)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      //"Uzman Estetisyen Aranıyor",
                      ilanPortfoy.ilanGetir(index).ilanBaslik,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xff000000),
                        fontSize: c.font(12),
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    Text(
                      ilanPortfoy.ilanGetir(index).ilanVeren.firmaAdi,
                      //"Selen Güzellik Akademi",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xff000000),
                        fontSize: c.font(12),
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: c.width(100.0)),
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
        ),
      ),
    );
  }
}
