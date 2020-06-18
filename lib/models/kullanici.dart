import 'package:flutter/material.dart';
import 'package:igi/models/kullanici_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Kullanici extends ChangeNotifier{

  KullaniciModel _kullanici;
  String _mongoKey;

  KullaniciModel get kullanici => _kullanici;
  String get mongoKey => _mongoKey;

  set kullanici(KullaniciModel value) {
    _kullanici = value;
  }

  void cikisYap(){
    _kullanici = null;
    _mongoKey = null;
  }

  void setMongoKey(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('mongodb', key);
    _mongoKey = key;
  }

  getMongoKey() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String stringValue = prefs.getString('mongodb');
    _mongoKey = stringValue;
    return stringValue;
  }
}