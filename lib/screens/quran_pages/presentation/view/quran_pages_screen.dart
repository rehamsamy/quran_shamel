import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:quran_shamel/helper/core_classes/constants.dart';
import 'package:quran_shamel/helper/custom_widgets/app_text.dart';
import 'package:quran_shamel/screens/quran_pages/controller/quran_pages_controller.dart';
import 'package:quran_shamel/screens/quran_pages/model/page_model.dart';
import 'package:quran_shamel/screens/quran_pages/presentation/component/above_header.dart';
import 'package:quran_shamel/screens/quran_pages/presentation/component/aya_body.dart';
import 'package:quran_shamel/screens/quran_pages/presentation/component/basmala_header.dart';
import 'package:quran_shamel/screens/quran_pages/presentation/component/play_header.dart';

class QuranPagesScreen extends GetView<QuranPagesController> {
  final PageController _pageController = PageController(initialPage: 0);
  var pagesController =Get.find<QuranPagesController>();
  int selectedPage = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SafeArea(
      child: Container(
          height: double.infinity,
          padding: const EdgeInsets.only(top: 0, left: 10, right: 8),
          decoration: const BoxDecoration(
            color: kPrimaryColorA,
          ),
        child:
        GetBuilder<QuranPagesController>(builder: (pagesController) {
          if (!pagesController.isLoading) {
            return   PageView.builder(
                physics: const BouncingScrollPhysics(),
                controller: _pageController,
                onPageChanged: (index) {
                  print('change -->'+index.toString());
                  pagesController.setPageSelected(index);
                },
                itemCount: 604,
                itemBuilder: (context, index) {
                  print('length -->'+pagesController.ayatPageList.length.toString());
                  final List<Ayahs> list =
                      pagesController.ayatPageList ?? [];
                  return SizedBox(
                    child: Column(
                      children: [
                        Expanded(
                          child: Stack(
                            children: [
                              Padding(
                                padding:
                                const EdgeInsets.only(top: 8.0),
                                child: Column(
                                  children: [
                                    // AyatAboveHeader(isHeadersVisible: isHeadersVisible,scaffolKey: scaffolKey,),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment
                                          .spaceBetween,
                                      children: [
                                        AppText(
                                          'الجزء ${pagesController.juzName}',
                                          color: Colors.black,
                                          fontSize: 12,
                                        ),
                                        AppText(
                                          pagesController.suraName,
                                          color: Colors.black,
                                          fontSize: 12,
                                        ),
                                      ],
                                    ),
                                    AyaBody( ayasList: list)

                                  ],
                                ),
                              ),
                              PageAboveheader(),
                              // getAboveHeader(context),
                              PagePlayheader()
                              // getPlayHeader(),
                              // getSliderHeader(),
                              // SliderHeader(isHeadersVisible:isHeadersVisible,selectedPage:selectedPage,
                              //     toAyaId:toAyaId,fromAyaId:fromAyaId, suraId:suraId,pageController:_pageController)
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                });
          } else {
            return // else
              const Center(
                child: CupertinoActivityIndicator(
                  color: Colors.red,
                  radius: 20,
                ),
              );
          }
        })
    ))


    );
  }
}
