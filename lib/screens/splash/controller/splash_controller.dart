import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class SplashController extends GetxController implements GetxService {

  SplashController();

  DateTime _currentTime = DateTime.now();
  bool _firstTimeConnectionCheck = true;

  DateTime get currentTime => _currentTime;
  bool get firstTimeConnectionCheck => _firstTimeConnectionCheck;


  void setFirstTimeConnectionCheck(bool isChecked) {
    _firstTimeConnectionCheck = isChecked;
  }
}
