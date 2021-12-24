class Eczane {
  int id;
  String eczaneAdi;
  String adresi;
  String semt;
  String yolTarifi;
  String telefon;
  String telefon2;
  String sehir;
  String ilce;
  double latitude;
  double longitude;
  bool isFav;

  Eczane(
      {this.eczaneAdi,
      this.adresi,
      this.semt,
      this.yolTarifi,
      this.telefon,
      this.telefon2,
      this.sehir,
      this.ilce,
      this.latitude,
      this.longitude,
      this.isFav});

  Eczane.fromJson(Map<String, dynamic> json) {
    eczaneAdi = json['EczaneAdi'];
    adresi = json['Adresi'];
    semt = json['Semt'];
    yolTarifi = json['YolTarifi'];
    telefon = json['Telefon'];
    telefon2 = json['Telefon2'];
    sehir = json['Sehir'];
    ilce = json['ilce'];
    latitude = json['latitude'];
    longitude = json['longitude'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['EczaneAdi'] = this.eczaneAdi;
    data['Adresi'] = this.adresi;
    data['Semt'] = this.semt;
    data['YolTarifi'] = this.yolTarifi;
    data['Telefon'] = this.telefon;
    data['Telefon2'] = this.telefon2;
    data['Sehir'] = this.sehir;
    data['ilce'] = this.ilce;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    return data;
  }
}
