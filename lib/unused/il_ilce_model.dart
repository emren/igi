
class IlIlceModel {
  IlIlceModel({
    this.data,
  });

  List<Il> data;

  factory IlIlceModel.fromJson(Map<String, dynamic> json) => IlIlceModel(
    data: List<Il>.from(json["data"].map((x) => Il.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Il {
  Il({
    this.ilAdi,
    this.plakaKodu,
    this.alanKodu,
    this.nufus,
    this.bolge,
    this.yuzolcumu,
    this.erkekNufusYuzde,
    this.erkekNufus,
    this.kadinNufusYuzde,
    this.kadinNufus,
    this.nufusYuzdesiGenel,
    this.ilceler,
    this.kisaBilgi,
  });

  String ilAdi;
  String plakaKodu;
  String alanKodu;
  String nufus;
  Bolge bolge;
  String yuzolcumu;
  String erkekNufusYuzde;
  String erkekNufus;
  String kadinNufusYuzde;
  String kadinNufus;
  String nufusYuzdesiGenel;
  List<Ilceler> ilceler;
  String kisaBilgi;

  factory Il.fromJson(Map<String, dynamic> json) => Il(
    ilAdi: json["il_adi"],
    plakaKodu: json["plaka_kodu"],
    alanKodu: json["alan_kodu"],
    nufus: json["nufus"],
    bolge: bolgeValues.map[json["bolge"]],
    yuzolcumu: json["yuzolcumu"],
    erkekNufusYuzde: json["erkek_nufus_yuzde"],
    erkekNufus: json["erkek_nufus"],
    kadinNufusYuzde: json["kadin_nufus_yuzde"],
    kadinNufus: json["kadin_nufus"],
    nufusYuzdesiGenel: json["nufus_yuzdesi_genel"],
    ilceler: List<Ilceler>.from(json["ilceler"].map((x) => Ilceler.fromJson(x))),
    kisaBilgi: json["kisa_bilgi"],
  );

  Map<String, dynamic> toJson() => {
    "il_adi": ilAdi,
    "plaka_kodu": plakaKodu,
    "alan_kodu": alanKodu,
    "nufus": nufus,
    "bolge": bolgeValues.reverse[bolge],
    "yuzolcumu": yuzolcumu,
    "erkek_nufus_yuzde": erkekNufusYuzde,
    "erkek_nufus": erkekNufus,
    "kadin_nufus_yuzde": kadinNufusYuzde,
    "kadin_nufus": kadinNufus,
    "nufus_yuzdesi_genel": nufusYuzdesiGenel,
    "ilceler": List<dynamic>.from(ilceler.map((x) => x.toJson())),
    "kisa_bilgi": kisaBilgi,
  };
}

enum Bolge { AKDENIZ, GUNEYDOGU_ANADOLU, EGE, DOGU_ANADOLU, KARADENIZ, IC_ANADOLU, MARMARA }

final bolgeValues = EnumValues({
  "Akdeniz": Bolge.AKDENIZ,
  "İç Anadolu": Bolge.IC_ANADOLU,
  "Doğu Anadolu": Bolge.DOGU_ANADOLU,
  "Ege": Bolge.EGE,
  "Güneydoğu Anadolu": Bolge.GUNEYDOGU_ANADOLU,
  "Karadeniz": Bolge.KARADENIZ,
  "Marmara": Bolge.MARMARA
});

class Ilceler {
  Ilceler({
    this.ilceAdi,
    this.nufus,
    this.erkekNufus,
    this.kadinNufus,
    this.yuzolcumu,
  });

  String ilceAdi;
  String nufus;
  String erkekNufus;
  String kadinNufus;
  String yuzolcumu;

  factory Ilceler.fromJson(Map<String, dynamic> json) => Ilceler(
    ilceAdi: json["ilce_adi"],
    nufus: json["nufus"],
    erkekNufus: json["erkek_nufus"],
    kadinNufus: json["kadin_nufus"],
    yuzolcumu: json["yuzolcumu"],
  );

  Map<String, dynamic> toJson() => {
    "ilce_adi": ilceAdi,
    "nufus": nufus,
    "erkek_nufus": erkekNufus,
    "kadin_nufus": kadinNufus,
    "yuzolcumu": yuzolcumu,
  };
}

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
