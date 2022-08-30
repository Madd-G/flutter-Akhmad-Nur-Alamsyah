import 'dart:io';

const num pi = 3.14;

void main() {
  stdout.write("Masukkan panjang jari-jari lingkaran: ");
  double r = double.parse(stdin.readLineSync());
  print('Luas lingkaran dengan radius $r = ${calculateCircleArea(r)}');
}

num calculateCircleArea(num r) => pi * r * r;
