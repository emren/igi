import 'package:http/http.dart' as http;
import 'dart:convert';

Future kullaniciAdayYarat(String ad, String gsm, String sifre) async {
  String url = 'http://localhost:3000/kullanicilar';
  final response = await http.post(url,
      headers: {"Content-Type": "application/json"},
      body:
          jsonEncode({"isFirma": false, "ad": ad, "gsm": gsm, "sifre": sifre}));
  var convertedData = jsonDecode(response.body);
  print(convertedData);
  return convertedData['_id'];
}

Future kullaniciFirmaYarat(String firmaAdi, String gsm, String sifre) async {
  String url = 'http://localhost:3000/kullanicilar';
  final response = await http.post(url,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({
        "isFirma": true,
        "firmaIsmi": firmaAdi,
        "gsm": gsm,
        "sifre": sifre
      }));
  var convertedData = jsonDecode(response.body);
  print(convertedData);
  return convertedData['_id'];
}

Future kullaniciAdayGuncelle(String key, String isim, String soyisim,
    String eposta, String telefon, String faks, String gsm) async {
  String url = 'http://localhost:3000/kullanicilar' + '/' + key;
  final response = await http.patch(url,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({
        "ad": isim,
        "soyad": soyisim,
        "eposta": eposta,
        "telefon": telefon,
        "faks": faks,
        "gsm": gsm
      }));
  var convertedData = jsonDecode(response.body);
  print(convertedData);
}

Future kullaniciFirmaGuncelle(
    String key,
    String firmaIsim,
    String isim,
    String soyisim,
    String eposta,
    String telefon,
    String faks,
    String gsm) async {
  String url = 'http://localhost:3000/kullanicilar' + '/' + key;
  final response = await http.patch(url,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({
        "firmaIsmi": firmaIsim,
        "ad": isim,
        "soyad": soyisim,
        "eposta": eposta,
        "telefon": telefon,
        "faks": faks,
        "gsm": gsm
      }));
  var convertedData = jsonDecode(response.body);
  print(convertedData);
}

Future ilanYarat(
    String ilanVeren,
    String ilanBaslik,
    String unvan,
    String il,
    String ilce,
    String cinsiyet,
    String calismaSekli,
    int tecrube,
    int alinacakKisi,
    String ilanMetni) async {
  String url = 'http://localhost:3000/ilanlar';
  final response = await http.post(url,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({
        "ilanVeren": ilanVeren,
        "ilanBaslik": ilanBaslik,
        "unvan": unvan,
        "il": il,
        "ilce": ilce,
        "cinsiyet": cinsiyet,
        "calismaSekli": calismaSekli,
        "tecrube": tecrube,
        "alinacakKisi": alinacakKisi,
        "ilanMetni": ilanMetni,
      }));
  var convertedData = jsonDecode(response.body);
  print(convertedData);
  return convertedData['_id'];
}
