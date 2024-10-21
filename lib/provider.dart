import 'package:flutter/material.dart';

class nameprovider extends ChangeNotifier {
  int num;
  nameprovider({this.num = 0});
  increase() {
    num++;
    notifyListeners();
  }

  decrease() {
    num--;
    notifyListeners();
  }
}
