import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:diacritic/diacritic.dart';

import 'il_object.dart';
import 'ililce_model.dart';

class Mapper extends ChangeNotifier{
  List<IlObject> ilListesi = [];

  Future<String> loadMapperJson() async {
    return await rootBundle.loadString('json/il_ilce2.json');
  }

  Future<List> loadMapObjects() async {
    String jsonString = await loadMapperJson();
    final jsonResponse = json.decode(jsonString);
    List<IlIlce> mapper = [];
    if (jsonResponse != null) {
      mapper = List<IlIlce>.from(jsonResponse.map((i) => IlIlce.fromJson(i)));
    }
    for (var i = 0; i < mapper.length; i++) {
      List<String> ilceler =[];
      for (var y = 0; y < mapper[i].ilceler.length ; y++) {
        ilceler.add(mapper[i].ilceler[y].ilceAdi);
      }
      ilListesi.add(IlObject(ilIsmi: mapper[i].ilAdi, ilceler: ilceler));
    }
    return mapper;
  }

  void initMapper(){
    loadMapObjects().whenComplete(()=> print('map loaded'));
  }

  List<String> getIlIsimleri(){
    List<String> ilIsimler = [];
    for (var i = 0; i < ilListesi.length; i++) {
      ilIsimler.add(ilListesi[i].ilIsmi);
    }
    return ilIsimler;
  }

  List<String> getIlceIsimleri(String il){
    List<String> ilceIsimler = [];
    IlObject secilen = ilListesi.firstWhere((i) => i.ilIsmi == il, orElse: () => null);
    ilceIsimler = secilen.ilceler;
    return ilceIsimler;
  }


  List<String> getSortedIlIsimleri(){
    List<String> ilIsimler = [];
    for (var i = 0; i < ilListesi.length; i++) {
      //ilIsimler.add(removeDiacritics(ilListesi[i].ilIsmi));
      ilIsimler.add(ilListesi[i].ilIsmi);
    }
    ilIsimler.sort((a, b) {
      return a.compareTo(b);
    });
    return ilIsimler;
  }

  List<String> getSortedIlceIsimleri(String il){
    List<String> ilceIsimler = [];
    IlObject secilen = ilListesi.firstWhere((i) => i.ilIsmi == il, orElse: () => null);
    ilceIsimler = secilen.ilceler;
    ilceIsimler.sort((a, b) {
      return a.compareTo(b);
    });

    return ilceIsimler;
  }
}