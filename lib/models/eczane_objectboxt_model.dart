import 'package:objectbox/objectbox.dart';

@Entity()
class EczaneObjectBox {
  @Id()
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

  EczaneObjectBox(
      {this.eczaneAdi,
      this.adresi,
      this.semt,
      this.yolTarifi,
      this.telefon,
      this.telefon2,
      this.sehir,
      this.ilce,
      this.latitude,
      this.longitude});
}
