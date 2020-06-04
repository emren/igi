class IlanModel {
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
      {this.ilanBaslik,
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
        '\nCalisma Sekli: ' +
        calismaSekli +
        '\nTecrube: ' +
        tecrube.toString() +
        '\nAlinacak Kisi: ' +
        alinacakKisi.toString() +
        '\nMetin: ' +
        ilanMetni);
  }
}
