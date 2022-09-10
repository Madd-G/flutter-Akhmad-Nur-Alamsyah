import 'bangun_ruang.dart';

class Kubus extends BangunRuang {
  late int sisi;

  @override
  int volume() {
    return sisi * sisi * sisi;
  }

  Kubus(this.sisi);
}
