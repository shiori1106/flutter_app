import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier{
  String appText = "あああ!!";

  void changeText(){
    appText = 'いいい!!!!';
    notifyListeners();
  }
}