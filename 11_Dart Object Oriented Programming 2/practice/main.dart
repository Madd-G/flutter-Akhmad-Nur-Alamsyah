import 'Kubus.dart';
import 'balok.dart';
import 'kelipatan_persekutuan_terkecil.dart';
import 'kelipatan_persekutuan_terbesar.dart';

void main() {
  // No 2
  Kubus kubus = Kubus(5);
  print('volume kubus: ${kubus.volume()}');

  Balok balok = Balok(2, 4, 5);
  print('volume balok: ${balok.volume()}');

  // no4
  KelipatanPersekutuanTerkecil kpk = KelipatanPersekutuanTerkecil(12, 20);
  print('Kelipatan persekutuan terkecil: ${kpk.hasil()}');

  KelipatanPersekutuanTerbesar fpb = KelipatanPersekutuanTerbesar(48, 72);
  print('kelipatan persekutuan terbesar: ${fpb.hasil()}');
}
