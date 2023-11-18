
import 'package:get/get.dart';
import 'package:quran_shamel/screens/quran_pages/presentation/view/quran_pages_screen.dart';
import 'package:quran_shamel/screens/splash/view/splash.dart';
class RouteHelper {
  static const String splash = '/';
  static const String main = '/main';
  static const String tafser = '/tafser';
  static const String quranPages = '/quranPages';


  static String getSplashRoute() => splash;
  static String getmainScreenRoute() => main;

  static String getQuranPagesRoute() => quranPages;


  static List<GetPage> routes = [
    GetPage(
        name: splash,
        page: () => const SplashScreen(),
        transition: Transition.fadeIn),
    GetPage(
        name: quranPages,
        page: () =>  QuranPagesScreen(),
        transition: Transition.fadeIn),


  ];
}
