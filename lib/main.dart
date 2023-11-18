import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:quran_shamel/helper/route_helper.dart';
import 'helper/get_di.dart' as di;

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
 await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title:'القران الشامل',
      debugShowCheckedModeBanner: false,
      navigatorKey: Get.key,
      // theme: Themes.dark(),
      // locale: localizeController.locale,
      // translations: Messages(languages: widget.languages),
      // fallbackLocale: Locale(AppConstants.languages[0].languageCode,
      //     AppConstants.languages[0].countryCode),
       initialRoute: RouteHelper.getSplashRoute(),
      getPages: RouteHelper.routes,
      transitionDuration: const Duration(milliseconds: 500),
       builder: EasyLoading.init(),
    );
  }
}


