import 'matematika.dart';

class KelipatanPersekutuanTerbesar implements Matematika {
  late int x;
  late int y;

  @override
  int hasil() {
    while (y != 0) {
      var z = y;
      y = x % z;
      x = z;
    }
    return x;
  }
  KelipatanPersekutuanTerbesar(int x, int y) {
    this.x = x;
    this.y = y;
  }
 }
