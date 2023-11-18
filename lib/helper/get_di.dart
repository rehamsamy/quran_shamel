import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:quran_shamel/screens/quran_pages/controller/quran_pages_controller.dart';
import 'package:quran_shamel/screens/quran_pages/repo/pages_repo.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> init() async {
  // Core
  final sharedPreferences = await SharedPreferences.getInstance();
  Get
    ..lazyPut(() => sharedPreferences)

    // ..lazyPut(
    //       () => ApiClientDio(
    //     appBaseUrl: AppConstants.BASE_URL,
    //     sharedPreferences: Get.find(),
    //   ),
    // )

     ..lazyPut(() => QuranPagesController(Get.find()))
     ..lazyPut(() => TafserRepo());


  //===================================================================>  Retrieving localized data

}
