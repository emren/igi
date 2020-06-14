import 'package:flutter/material.dart';
import 'package:igi/models/ilan_model.dart';
import 'package:igi/models/ilan_portfoy.dart';
import 'package:igi/models/kullanici.dart';
import 'package:igi/models/mapper.dart';
import 'package:igi/services/size_config.dart';
import 'package:provider/provider.dart';

class IlanEkle2 extends StatefulWidget {
  @override
  _IlanEkle2State createState() => _IlanEkle2State();
}

class _IlanEkle2State extends State<IlanEkle2> {
  SizeConfig c = SizeConfig();
  TextEditingController _baslikController;
  TextEditingController _metinController;
  FocusNode _focusNode;
  String _baslik;
  String _metin;
  String _unvanValue;
  String _ilValue;
  String _ilceValue;
  String _cinsiyetValue;
  String _calismaValue;
  int _tecrubeValue;
  int _kisiValue;
  bool ilSelected = false;

  void initState() {
    super.initState();
    _baslikController = TextEditingController();
    _metinController = TextEditingController();
    _focusNode = FocusNode();
  }

  void dispose() {
    _baslikController.dispose();
    _metinController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Mapper mapper = Provider.of<Mapper>(context);
    IlanPortfoy ilanPortfoy = Provider.of<IlanPortfoy>(context);
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
                          "ilan ekle",
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
                height: c.height(10),
              ),
              Padding(
                padding: EdgeInsets.only(left: c.width(50.0)),
                child: Text(
                  "İlan Başlığı",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Color(0xff000000),
                    fontSize: c.font(14),
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: c.width(50.0), right: c.width(50)),
                child: TextField(
                  controller: _baslikController,
                  onSubmitted: (baslik) {
                    _baslik = baslik;
                    //print(_baslik);
                  },
                  autocorrect: false,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: c.width(50.0)),
                child: Text(
                  "Ünvan",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Color(0xff000000),
                    fontSize: c.font(14),
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: c.width(40.0)),
                child: Container(
                  width: c.width(121.330078125),
                  height: c.height(31.16748046875),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(23),
                    border: Border.all(color: Color(0xff9f9f9f), width: c.width(2)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: c.height(2.0),
                        bottom: c.height(2),
                        left: c.width(2),
                        right: c.width(2)),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        hint: Text(
                          '  Seçiniz',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xff9f9f9f),
                            fontSize: c.font(16),
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        isExpanded: true,
                        value: _unvanValue,
                        icon:
                            Image.asset('assets/icons/dropdown_icon_gray.png'),
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xff9f9f9f),
                          fontSize: c.font(16),
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                        ),
                        onChanged: (String newValue) {
                          setState(() {
                            _unvanValue = newValue;
                          });
                        },
                        items: <String>[
                          'Microblading Uzmani',
                          'Cilt Bakim Uzmani',
                          'Ipek Kirpik Uzmani',
                          'Kalici Makyaj Uzmani',
                          'Erkek Kuaforu',
                          'Bayan Kuaforu',
                          'Guzellik Uzmani',
                          'Diyetisyen',
                          'Estetisyen'
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text('  ' + value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: c.height(50),
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: c.width(50.0)),
                    child: Text(
                      "İl",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xff000000),
                        fontSize: c.font(14),
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: c.width(200.0)),
                    child: Text(
                      "İlçe",
                      style: TextStyle(
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
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: c.width(40.0)),
                    child: Container(
                      width: c.width(121.330078125),
                      height: c.height(31.16748046875),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(23),
                        border: Border.all(color: Color(0xff9f9f9f), width: c.width(2)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: c.height(2.0),
                            bottom: c.height(2),
                            left: c.width(2),
                            right: c.width(2)),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            hint: Text(
                              '  Seçiniz',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(0xff9f9f9f),
                                fontSize: c.font(16),
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                            isExpanded: true,
                            value: _ilValue,
                            icon: Image.asset(
                                'assets/icons/dropdown_icon_gray.png'),
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xff9f9f9f),
                              fontSize: c.font(16),
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                            ),
                            onChanged: (String newValue) {
                              setState(() {
                                _ilceValue = null;
                                _ilValue = newValue;
                                ilSelected = true;
                              });
                            },
                            items: mapper
                                .getSortedIlIsimleri()
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text('  ' + value),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: c.width(70.0)),
                    child: Container(
                      width: c.width(121.330078125),
                      height: c.height(31.16748046875),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(23),
                        border: Border.all(color: Color(0xff9f9f9f), width: c.width(2)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: c.height(2.0),
                            bottom: c.height(2),
                            left: c.width(2),
                            right: c.width(2)),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            hint: Text(
                              '  Seçiniz',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(0xff9f9f9f),
                                fontSize: c.font(16),
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                            isExpanded: true,
                            value: _ilceValue,
                            icon: Image.asset(
                                'assets/icons/dropdown_icon_gray.png'),
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xff9f9f9f),
                              fontSize: c.font(16),
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                            ),
                            onChanged: ilSelected
                                ? (String newValue) {
                                    setState(() {
                                      _ilceValue = newValue;
                                    });
                                  }
                                : null,
                            items: ilSelected
                                ? mapper
                                    .getSortedIlceIsimleri(_ilValue)
                                    .map<DropdownMenuItem<String>>(
                                        (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text('  ' + value),
                                    );
                                  }).toList()
                                : null,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: c.height(50),
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: c.width(50.0)),
                    child: Text(
                      "Cinsiyet",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xff000000),
                        fontSize: c.font(14),
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: c.width(140.0)),
                    child: Text(
                      "Çalışma Şekli",
                      style: TextStyle(
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
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: c.width(40.0)),
                    child: Container(
                      width: c.width(121.330078125),
                      height: c.height(31.16748046875),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(23),
                        border: Border.all(color: Color(0xff9f9f9f), width: c.width(2)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: c.height(2.0),
                            bottom: c.height(2),
                            left: c.width(2),
                            right: c.width(2)),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            hint: Text(
                              '  Seçiniz',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(0xff9f9f9f),
                                fontSize: c.font(16),
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                            isExpanded: true,
                            value: _cinsiyetValue,
                            icon: Image.asset(
                                'assets/icons/dropdown_icon_gray.png'),
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xff9f9f9f),
                              fontSize: c.font(16),
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                            ),
                            onChanged: (String newValue) {
                              setState(() {
                                _cinsiyetValue = newValue;
                              });
                            },
                            items: <String>['Kadin', 'Erkek']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text('  ' + value),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: c.width(70.0)),
                    child: Container(
                      width: c.width(121.330078125),
                      height: c.height(31.16748046875),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(23),
                        border: Border.all(color: Color(0xff9f9f9f), width: c.width(2)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: c.height(2.0),
                            bottom: c.height(2),
                            left: c.width(2),
                            right: c.width(2)),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            hint: Text(
                              '  Seçiniz',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(0xff9f9f9f),
                                fontSize: c.font(16),
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                            isExpanded: true,
                            value: _calismaValue,
                            icon: Image.asset(
                                'assets/icons/dropdown_icon_gray.png'),
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xff9f9f9f),
                              fontSize: c.font(16),
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                            ),
                            onChanged: (String newValue) {
                              setState(() {
                                _calismaValue = newValue;
                              });
                            },
                            items: <String>['Tam Zamanli', 'Yari Zamanli']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text('  ' + value),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: c.height(50),
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: c.width(50.0)),
                    child: Text(
                      "Tecrübe",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xff000000),
                        fontSize: c.font(14),
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: c.width(140.0)),
                    child: Text(
                      "Alınacak Kişi",
                      style: TextStyle(
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
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: c.width(40.0)),
                    child: Container(
                      width: c.width(121.330078125),
                      height: c.height(31.16748046875),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(23),
                        border: Border.all(color: Color(0xff9f9f9f), width: c.width(2)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: c.height(2.0),
                            bottom: c.height(2),
                            left: c.width(2),
                            right: c.width(2)),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<int>(
                            hint: Text(
                              '  Seçiniz',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(0xff9f9f9f),
                                fontSize: c.font(16),
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                            isExpanded: true,
                            value: _tecrubeValue,
                            icon: Image.asset(
                                'assets/icons/dropdown_icon_gray.png'),
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xff9f9f9f),
                              fontSize: c.font(16),
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                            ),
                            onChanged: (int newValue) {
                              setState(() {
                                _tecrubeValue = newValue;
                              });
                            },
                            items: <int>[
                              1,
                              2,
                              3,
                              4,
                              5,
                              6,
                              7,
                              8,
                              9,
                              10,
                              11,
                              12,
                              13,
                              14,
                              15,
                              16,
                              17,
                              18,
                              19,
                              20
                            ].map<DropdownMenuItem<int>>((int value) {
                              return DropdownMenuItem<int>(
                                value: value,
                                child: Text('  ' + value.toString()),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: c.width(70.0)),
                    child: Container(
                      width: c.width(121.330078125),
                      height: c.height(31.16748046875),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(23),
                        border: Border.all(color: Color(0xff9f9f9f), width: c.width(2)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: c.height(2.0),
                            bottom: c.height(2),
                            left: c.width(2),
                            right: c.width(2)),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<int>(
                            hint: Text(
                              '  Seçiniz',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(0xff9f9f9f),
                                fontSize: c.font(16),
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                            isExpanded: true,
                            value: _kisiValue,
                            icon: Image.asset(
                                'assets/icons/dropdown_icon_gray.png'),
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xff9f9f9f),
                              fontSize: c.font(16),
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                            ),
                            onChanged: (int newValue) {
                              setState(() {
                                _kisiValue = newValue;
                              });
                            },
                            items: <int>[
                              1,
                              2,
                              3,
                              4,
                              5,
                              6,
                              7,
                              8,
                              9,
                              10,
                              11,
                              12,
                              13,
                              14,
                              15,
                              16,
                              17,
                              18,
                              19,
                              20
                            ].map<DropdownMenuItem<int>>((int value) {
                              return DropdownMenuItem<int>(
                                value: value,
                                child: Text('  ' + value.toString()),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: c.height(50),
              ),
              Padding(
                padding: EdgeInsets.only(left: c.width(50.0)),
                child: Text(
                  "İlan Metni",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Color(0xff000000),
                    fontSize: c.font(14),
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: c.width(50.0)),
                child: Container(
                  width: c.width(286),
                  height: c.height(108),
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.circular(11),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0x30000000),
                          offset: Offset(0, 3),
                          blurRadius: 6,
                          spreadRadius: 0),
                    ],
                  ),
                  child: TextField(
                    controller: _metinController,
                    onSubmitted: (metin) {
                      //_focusNode.unfocus();
                      _metin = metin;
                      // print(_metin);
                    },
                    autocorrect: false,
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    focusNode: _focusNode,
                    autofocus: false,
                    onEditingComplete: () {
                      //print("edit");
                      _focusNode.unfocus();
                    },
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      contentPadding: EdgeInsets.only(
                          left: c.width(15),
                          bottom: c.height(11),
                          top: c.height(11),
                          right: c.width(15)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: c.height(20),
              ),
              GestureDetector(
                onTap: () {
                  IlanModel yeniIlan = IlanModel(
                    ilanVeren: kullanici.kullanici,
                    ilanBaslik: _baslik,
                    unvan: _unvanValue,
                    il: _ilValue,
                    ilce: _ilceValue,
                    cinsiyet: _cinsiyetValue,
                    calismaSekli: _calismaValue,
                    tecrube: _tecrubeValue,
                    alinacakKisi: _kisiValue,
                    ilanMetni: _metin,
                  );
                  print(yeniIlan.toString());
                  ilanPortfoy.ilanEkle(yeniIlan);
                },
                child: Center(
                  child: Container(
                    width: c.width(92),
                    height: c.height(29.45361328125),
                    decoration: BoxDecoration(
                      color: Color(0xffffd500),
                      borderRadius: BorderRadius.circular(23),
                    ),
                    child: Center(
                      child: Text(
                        "Yayınla",
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
