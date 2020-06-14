import 'package:igi/models/kullanici_model.dart';

class IlanModel {
  KullaniciModel ilanVeren;
  String ilanBaslik;
  String unvan;
  String il;
  String ilce;
  String cinsiyet;
  String calismaSekli;
  int tecrube;
  int alinacakKisi;
  String ilanMetni;

  IlanModel(
      {this.ilanVeren,
      this.ilanBaslik,
      this.unvan,
      this.il,
      this.ilce,
      this.cinsiyet,
      this.calismaSekli,
      this.tecrube,
      this.alinacakKisi,
      this.ilanMetni});

  @override
  String toString() {
    print('Baslik: ' +
        ilanBaslik +
        '\nUnvan: ' +
        unvan +
        '\nIl: ' +
        il +
        '\nIlce: ' +
        ilce +
        '\nCinsiyet: ' +
        cinsiyet +
        '\nCalisma sekli: ' +
        calismaSekli +
        '\nTecrube: ' +
        tecrube.toString() +
        '\nAlinacak kisi: ' +
        alinacakKisi.toString() +
        '\nMetin: ' +
        ilanMetni +
        '\nIlan veren: ' +
        ilanVeren.toString());
  }
}
