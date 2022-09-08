import 'hewan.dart';

class Mobil {
  int kapasitas = 10;
  List<String> muatan = ['Sapi', 'Ayam', 'Kambing'];

  String tambahMuatan() {
    int totalBerat = totalMuatan(muatan)[0];
    List<String> isi = [];
    print('Total muatan yang ingin ditambahkan: ${totalMuatan(muatan)[1]}');
    print('Total berat: $totalBerat kg');
    if (totalBerat <= kapasitas) {
      for (var i in muatan) {
        isi.add(i);
      }
      print('====== SUKSES Menambahkan muatan ======');
    } else {
      print('====== DITOLAK Berat Muatan melebihi kapasitas (berat maks 10) ======');
    }
    return 'muatan: $isi';
  }

  // No 2
  List<int> totalMuatan(List<String> muatan) {
    Hewan h = Hewan();
    int jumlahBerat = 0;
    int jumlahMuatan = 0;

    jumlahMuatan = muatan.length;
    for (var i in h.berat.entries) {
    if (muatan.contains(i.key)){
      jumlahBerat+=i.value;
    }
  }
    return [jumlahBerat, jumlahMuatan];
  }
}