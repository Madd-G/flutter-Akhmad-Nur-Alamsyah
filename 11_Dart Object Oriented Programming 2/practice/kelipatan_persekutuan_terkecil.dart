import 'matematika.dart';

class KelipatanPersekutuanTerkecil implements Matematika {
  late int x;
  late int y;

  @override
  int hasil() => (x * y) ~/ gcd(x, y);

  int gcd(int x, int y) {
    while (y != 0) {
      var c = y;
      y = x % c;
      x = c;
    }
    return x;
  }

    KelipatanPersekutuanTerkecil(int x, int y) {
    this.x = x;
    this.y = y;
  }
}
