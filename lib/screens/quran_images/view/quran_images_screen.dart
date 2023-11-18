import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran_shamel/helper/custom_widgets/app_buttons/app_progress_button.dart';
import 'package:quran_shamel/helper/custom_widgets/app_text.dart';
import 'package:quran_shamel/helper/route_helper.dart';

class QuranImagesScreen extends StatefulWidget {
  const QuranImagesScreen({Key? key}) : super(key: key);

  @override
  State<QuranImagesScreen> createState() => _HomeViewState();
}

class _HomeViewState extends State<QuranImagesScreen> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Directionality(
      textDirection: TextDirection.rtl,
      child: Stack(
        children: [
          Center(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(255, 69, 24, 7),
                      Color.fromARGB(255, 154, 102, 106)
                    ]),
              ),
              child: Image.asset('assets/images/quran.png'),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.only(bottom: 40),
              child: AppProgressButton(
                progressIndicatorColor: Colors.red,
                onPressed: (val){
                  val.forward();
                  Future.delayed(const Duration(seconds: 3)).then((value) {
                    Get.toNamed(RouteHelper.getQuranPagesRoute());
                    val.reverse();
                    });
                },
                width: 220,
                child: const AppText(
                  'المصحف الشريف',color: Colors.red,fontSize: 23,
                ),
              ),
            ),
          ),
        ],
      )));
  }
}
