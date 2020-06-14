import 'package:igi/models/ozgecmis_model.dart';

class KullaniciModel {
  bool isFirma;
  String firmaAdi;
  String ad;
  String soyad;
  String eposta;
  String telefon;
  String faks;
  String gsm;
  String sifre;
  String eskiSifre;
  bool ozgecmisVarmi;
  OzgecmisModel ozgecmis;

  KullaniciModel(
      {this.isFirma,
      this.firmaAdi,
      this.ad,
      this.soyad,
      this.eposta,
      this.telefon,
      this.faks,
      this.gsm,
      this.sifre,
      this.eskiSifre,
      this.ozgecmisVarmi,
      this.ozgecmis});
}
