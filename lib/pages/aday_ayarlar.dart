import 'package:flutter/material.dart';
import 'package:igi/models/kullanici.dart';
import 'package:igi/services/api.dart';
import 'package:igi/services/size_config.dart';
import 'package:igi/widgets/basvuru_widget.dart';
import 'package:provider/provider.dart';

class AdayAyarlar extends StatefulWidget {
  @override
  _AdayAyarlarState createState() => _AdayAyarlarState();
}

class _AdayAyarlarState extends State<AdayAyarlar> {
  SizeConfig c = SizeConfig();
  TextEditingController _isimController;
  TextEditingController _soyisimController;
  TextEditingController _epostaController;
  TextEditingController _telefonController;
  TextEditingController _faksController;
  TextEditingController _gsmController;

  String _isim;
  String _soyisim;
  String _eposta;
  String _telefon;
  String _faks;
  String _gsm;

  @override
  void initState() {
    super.initState();
    _isimController = TextEditingController();
    _soyisimController = TextEditingController();
    _epostaController = TextEditingController();
    _telefonController = TextEditingController();
    _faksController = TextEditingController();
    _gsmController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _isimController.dispose();
    _soyisimController.dispose();
    _epostaController.dispose();
    _telefonController.dispose();
    _faksController.dispose();
    _gsmController.dispose();
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
                        padding: EdgeInsets.only(left: c.width(180.0)),
                        child: Text(
                          "hesap ayarları",
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
              Padding(
                padding:
                    EdgeInsets.only(left: c.width(30.0), right: c.width(30)),
                child: Column(
                  children: <Widget>[
                    TextField(
                      controller: _isimController,
                      onSubmitted: (isim) {
                        _isim = isim;
                      },
                      autocorrect: false,
                      decoration: InputDecoration(
                        hintText: kullanici.kullanici.ad,
                        labelText: 'Adınız',
                        labelStyle: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xff000000),
                          fontSize: c.font(14),
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                    TextField(
                      controller: _soyisimController,
                      onSubmitted: (soyisim) {
                        _soyisim = soyisim;
                      },
                      autocorrect: false,
                      decoration: InputDecoration(
                        hintText: kullanici.kullanici.soyad,
                        labelText: 'Soyadınız',
                        labelStyle: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xff000000),
                          fontSize: c.font(14),
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                    TextField(
                      controller: _epostaController,
                      onSubmitted: (eposta) {
                        _eposta= eposta;
                      },
                      autocorrect: false,
                      decoration: InputDecoration(
                        hintText: kullanici.kullanici.eposta,
                        labelText: 'E-Posta',
                        labelStyle: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xff000000),
                          fontSize: c.font(14),
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                    TextField(
                      controller: _telefonController,
                      onSubmitted: (telefon) {
                        _telefon = telefon;
                      },
                      autocorrect: false,
                      decoration: InputDecoration(
                        hintText: kullanici.kullanici.telefon,
                        labelText: 'Telefon',
                        labelStyle: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xff000000),
                          fontSize: c.font(14),
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                    TextField(
                      controller: _faksController,
                      onSubmitted: (faks) {
                        _faks = faks;
                      },
                      autocorrect: false,
                      decoration: InputDecoration(
                        hintText: kullanici.kullanici.faks,
                        labelText: 'Faks',
                        labelStyle: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xff000000),
                          fontSize: c.font(14),
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                    TextField(
                      controller: _gsmController,
                      onSubmitted: (gsm) {
                        _gsm = gsm;
                      },
                      autocorrect: false,
                      decoration: InputDecoration(
                        hintText: kullanici.kullanici.gsm,
                        labelText: 'Gsm',
                        labelStyle: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xff000000),
                          fontSize: c.font(14),
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Eski Şifre',
                        labelStyle: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xff000000),
                          fontSize: c.font(14),
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Yeni Şifre',
                        labelStyle: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xff000000),
                          fontSize: c.font(14),
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Tekrar Yeni Şifre',
                        labelStyle: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xff000000),
                          fontSize: c.font(14),
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: c.height(30),
              ),
              GestureDetector(
                onTap: (){
                  _isim == null ? kullanici.kullanici.ad : kullanici.kullanici.ad = _isim;
                  _soyisim == null ? kullanici.kullanici.soyad : kullanici.kullanici.soyad = _soyisim;
                  _eposta == null ? kullanici.kullanici.eposta : kullanici.kullanici.eposta = _eposta;
                  _telefon == null ? kullanici.kullanici.telefon : kullanici.kullanici.telefon = _telefon;
                  _faks == null ? kullanici.kullanici.faks : kullanici.kullanici.faks = _faks;
                  _gsm == null ? kullanici.kullanici.gsm : kullanici.kullanici.gsm = _gsm;
                  kullaniciAdayGuncelle( kullanici.mongoKey,_isim, _soyisim, _eposta, _telefon, _faks, _gsm);
                  Navigator.of(context).pop();

                },
                child: Container(
                  width: c.width(92),
                  height: c.height(29.45361328125),
                  decoration: BoxDecoration(
                      color: Color(0xffffd500),
                      borderRadius: BorderRadius.circular(23)),
                  child: Center(
                    child: Text(
                      "Kaydet",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xff000000),
                        fontSize: c.font(16),
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
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
