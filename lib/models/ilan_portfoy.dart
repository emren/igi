
import 'package:flutter/material.dart';
import 'package:igi/models/kullanici_model.dart';

import 'ilan_model.dart';

class IlanPortfoy extends ChangeNotifier{

  List<IlanModel> _ilanlar =[];

  List get ilanlar => _ilanlar;

  void ilanEkle(IlanModel ilan){
    _ilanlar.add(ilan);
    //print(_ilanlar.toString());
    notifyListeners();
  }


  IlanModel ilanGetir(int i){
    return  _ilanlar[i];
  }

  List<IlanModel> kullaniciIlanlari(KullaniciModel kullanici) {
    List<IlanModel> firmaIlanlari = _ilanlar.where((i) => i.ilanVeren == kullanici).toList();
    return firmaIlanlari;
  }
}