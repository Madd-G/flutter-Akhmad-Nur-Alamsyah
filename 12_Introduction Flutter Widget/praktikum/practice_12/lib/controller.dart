import 'dart:async';
import 'package:get/get.dart';

class Controller extends GetxController {
  @override
  void onInit() {
    startTimer();
    super.onInit();
  }

  Timer? timer;
  RxInt _hours = 0.obs;
  RxInt _minutes = 0.obs;
  RxInt _seconds = 0.obs;

  List<RxInt> counter() {
    _seconds += 1;
    if (timer?.tick == null) {
      _seconds = 0.obs;
    } else {
      if (timer!.tick == 60) {
        timer?.cancel();
        startTimer();
        _seconds = 0.obs;
        _minutes += 1;
        if (_minutes.value == 60) {
          _minutes = 0.obs;
          _hours += 1;
        }
      } else {
        _seconds = timer!.tick.obs;
      }
    }
    return [_hours, _minutes, _seconds];
  }

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (Timer t) => counter());
  }
}
