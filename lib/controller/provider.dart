import 'package:flutter/material.dart';

class TextProvider extends ChangeNotifier {
  String c = "";

  TextEditingController textcontroller = TextEditingController();
  TextEditingController textcontroller1 = TextEditingController();

  void add() {
    final a = textcontroller.text;
    final b = textcontroller1.text;
    c = a + b;
    notifyListeners();
  }
}
