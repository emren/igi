import 'package:flutter/material.dart';
import 'package:igi/models/kullanici_model.dart';

class KullaniciPortfoy extends ChangeNotifier{

  List<KullaniciModel> _kullanicilar =[];

  void kullaniciEkle(KullaniciModel kullanici){
    _kullanicilar.add(kullanici);
    print(_kullanicilar.toString());
    notifyListeners();
  }

}