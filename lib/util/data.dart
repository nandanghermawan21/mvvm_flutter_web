import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:suzuki/util/colour.dart';
import 'package:suzuki/util/global.dart';

class Data extends ChangeNotifier {
  Global global = Global();
  Map<String, Widget Function(BuildContext)>? route;
  String initialRouteName = "";
  Colour? color;
  SharedPreferences? session;

  Data();

  Future<void> initialize() async {
    await _initSharedPreference();
  }

  Future<bool> _initSharedPreference() async {
    session = await SharedPreferences.getInstance();
    return true;
  }

  void commit() {
    notifyListeners();
  }
}
