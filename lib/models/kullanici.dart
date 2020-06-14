import 'package:flutter/material.dart';
import 'package:igi/models/kullanici_model.dart';

class Kullanici extends ChangeNotifier{

  KullaniciModel _kullanici;

  KullaniciModel get kullanici => _kullanici;

  set kullanici(KullaniciModel value) {
    _kullanici = value;
  }

  void cikisYap(){
    _kullanici = null;
  }
}