import 'package:flutter/widgets.dart';

class AppControler extends ChangeNotifier {
  int value = 0;
  increment() {
    value++;
    notifyListeners();
  }

  decrement() {
    value--;
    notifyListeners();
  }

  reset() {
    value = 0;
    notifyListeners();
  }
}
