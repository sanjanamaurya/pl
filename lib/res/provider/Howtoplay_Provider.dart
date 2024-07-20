import 'package:playzone/model/aboutus_model.dart';
import 'package:playzone/model/howtoplay_model.dart';
import 'package:flutter/material.dart';


class HowtoplayProvider with ChangeNotifier {
  HowtoplayModel? _HowtoplayData;

  HowtoplayModel? get Howtoplaydata => _HowtoplayData;

  void setrules(HowtoplayModel ruledata) {
    _HowtoplayData = ruledata;
    notifyListeners();
  }
}