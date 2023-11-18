import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:quran_shamel/helper/custom_widgets/app_text.dart';
import 'package:quran_shamel/screens/quran_pages/controller/quran_pages_controller.dart';
import 'package:get/get.dart';
import 'package:quran_shamel/screens/quran_pages/model/page_model.dart';

class BasmalaHeader extends GetView<QuranPagesController> {
  Ayahs model;
  BasmalaHeader({required this.model});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: model.isBasmalaVisible!,
      child: Column(
        children: [
          const SizedBox(
            height: 5,
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              InkWell(
                onTap: () {},
                child: Center(
                    child: Image.asset(
                  'assets/images/sora_name4.png',
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.fill,
                  height: 58,
                )),
              ),
              AppText(
                (model.surah?.name).toString(),
                color: Colors.red,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ',
            style: TextStyle(fontSize: 22),
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
