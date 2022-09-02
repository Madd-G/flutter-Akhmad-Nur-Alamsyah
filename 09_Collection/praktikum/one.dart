import 'dart:io';

var hasil = [];

Future<List> calculate(List list_data, double pengali) async {
    for (int i=0; i < list_data.length; i++) {
        await Future.delayed(const Duration(seconds: 1), () {
            var data = list_data[i] * pengali;
            hasil.add(data);
            print('Hasil ${i+1}: ' + hasil.last.toString());
        });  
    }
    return hasil;   
}

void main() async {
    stdout.write("Masukkan bilangan (pisah dengan (,)): ");
    List<int> list_data = stdin.readLineSync()?.split(RegExp(r',')).map((e) => int.parse(e)).toList() ?? 0;
    stdout.write("Masukkan pengali: ");
    var pengali = double.parse(stdin.readLineSync());
    var data = await calculate(list_data, pengali);
    print('Hasil akhir: $data');
}