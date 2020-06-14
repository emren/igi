import 'package:flutter/material.dart';
import 'package:igi/models/kullanici.dart';
import 'package:igi/models/kullanici_model.dart';
import 'package:igi/models/kullanici_portfoy.dart';
import 'package:igi/services/size_config.dart';
import 'package:provider/provider.dart';

import 'home.dart';

class GirisFirma extends StatefulWidget {
  @override
  _GirisFirmaState createState() => _GirisFirmaState();
}

class _GirisFirmaState extends State<GirisFirma> {
  SizeConfig c = SizeConfig();
  TextEditingController _numaraController;
  TextEditingController _firmaIsimController;
  TextEditingController _sifreController;
  TextEditingController _sifreTekrarController;
  String _numara;
  String _firmaIsim;
  String _sifre;
  String _sifreTekrar;

  @override
  void initState() {
    super.initState();
    _numaraController = TextEditingController();
    _firmaIsimController = TextEditingController();
    _sifreController = TextEditingController();
    _sifreTekrarController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _numaraController.dispose();
    _firmaIsimController.dispose();
    _sifreController.dispose();
    _sifreTekrarController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Kullanici kullanici = Provider.of<Kullanici>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                        padding: EdgeInsets.only(left: c.width(300.0)),
                        child: Text(
                          "Kayıt",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xff9f9f9f),
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
              SizedBox(height: c.height(50)),
              Padding(
                padding:
                    EdgeInsets.only(left: c.width(50.0), right: c.width(50)),
                child: TextField(
                  controller: _numaraController,
                  onSubmitted: (numara) {
                    _numara = numara;
                  },
                  autocorrect: false,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: ('Numara'),
                    hintStyle: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xff000000),
                      fontSize: c.font(14),
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: c.height(20),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: c.width(50.0), right: c.width(50.0)),
                child: TextField(
                  controller: _firmaIsimController,
                  onSubmitted: (isim) {
                    _firmaIsim = isim;
                  },
                  autocorrect: false,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: ('Firma İsmi'),
                    hintStyle: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xff000000),
                      fontSize: c.font(14),
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: c.height(20),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: c.width(50.0), right: c.width(50.0)),
                child: TextField(
                  controller: _sifreController,
                  onSubmitted: (sifre) {
                    _sifre = sifre;
                  },
                  obscureText: true,
                  autocorrect: false,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: ('Şifre'),
                    hintStyle: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xff000000),
                      fontSize: c.font(14),
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: c.height(20),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: c.width(50.0), right: c.width(50.0)),
                child: TextField(
                  controller: _sifreTekrarController,
                  onSubmitted: (sifretekrar) {
                    _sifreTekrar = sifretekrar;
                  },
                  obscureText: true,
                  autocorrect: false,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: ('Şifre onay'),
                    hintStyle: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xff000000),
                      fontSize: c.font(14),
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: c.height(100),
              ),
              GestureDetector(
                onTap: () {
                  if (_sifre == _sifreTekrar) {
                    print('sifre ok');
                    KullaniciModel yeniKullanici = KullaniciModel(
                      isFirma: true,
                      gsm: _numara,
                      firmaAdi: _firmaIsim,
                      //ad: _isimSoyisim,
                      sifre: _sifre,

                    );
                    kullanici.kullanici = yeniKullanici;
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  }
                  print('sifre not ok');
                },
                child: Padding(
                  padding: EdgeInsets.only(left: c.width(50.0)),
                  child: Container(
                    width: c.width(300),
                    height: c.height(45),
                    decoration: BoxDecoration(
                      color: Color(0xff395aff),
                      borderRadius: BorderRadius.circular(23),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0x29000000),
                            offset: Offset(0, 3),
                            blurRadius: 6,
                            spreadRadius: 0),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "Kayıt Ol",
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
