
import 'package:flutter/material.dart';

import 'ilan_model.dart';

class IlanPortfoy extends ChangeNotifier{

  List<IlanModel> _ilanlar =[];

  List get ilanlar => _ilanlar;

  void ilanEkle(IlanModel ilan){
    _ilanlar.add(ilan);
    print(_ilanlar.toString());
    notifyListeners();
  }


  IlanModel ilanGetir(int i){
    return  _ilanlar[i];
  }
}