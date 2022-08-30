import 'dart:core';

var value = BigInt.from(1);
var iter = BigInt.from(1);
void main() {
    for (int i = 1; i<31; i++) {
        iter += BigInt.from(1);
        value*=iter;
        if (i == 10) {
            print('Faktorial 10 adalah:  ${value}');
        } else if (i == 20) {
            print('Faktorial 20 adalah:  ${value}');
        } else if (i == 30) {
            print('Faktorial 30 adalah:  ${value}');
        } 
    }
}