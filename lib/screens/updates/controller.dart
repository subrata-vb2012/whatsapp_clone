import 'dart:async';
import 'package:reactiv/reactiv.dart';

class UpdateScreenController extends ReactiveController {
  ReactiveDouble sliderValue = ReactiveDouble(0);
  List<String> statusList = [
    'assets/status/status_1.jpg',
    'assets/status/status_2.jpg',
    'assets/status/status_3.jpg',
    'assets/status/status_4.jpg',
    'assets/status/status_5.jpg',
    'assets/status/status_6.jpg',
    'assets/status/status_7.jpg',
    'assets/status/status_8.jpg',
    'assets/status/status_9.jpg',
    'assets/status/status_10.jpg',
    'assets/status/status_11.jpg',
    'assets/status/status_12.jpg',
    'assets/status/status_13.jpg',
    'assets/status/status_14.jpg',
  ];

  Future sliderChange() async {
    Timer.periodic(const Duration(seconds: 4), (timer) {
      if (sliderValue.value < statusList.length - 1) {
        sliderValue.value++;
      } else {
        timer.cancel();
      }
    });
  }

  @override
  void onInit() {
    sliderChange();
    super.onInit();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
