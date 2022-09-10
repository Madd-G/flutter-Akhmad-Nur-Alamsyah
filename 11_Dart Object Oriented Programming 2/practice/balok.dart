import 'bangun_ruang.dart';

class Balok extends BangunRuang {
  @override
  int volume() {
    return panjang * lebar * tinggi;
  }

  Balok(int panjang, int lebar, int tinggi) {
    this.panjang = panjang;
    this.lebar = lebar;
    this.tinggi = tinggi;
  }
}
