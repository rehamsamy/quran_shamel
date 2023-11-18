import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:quran_shamel/helper/core_classes/constants.dart';
import 'package:quran_shamel/screens/quran_pages/controller/quran_pages_controller.dart';
import 'package:quran_shamel/screens/quran_pages/model/page_model.dart';
import 'package:quran_shamel/screens/quran_pages/presentation/component/basmala_header.dart';

class AyaBody extends GetView<QuranPagesController> {
  List<Ayahs>ayasList;

  AyaBody({required this.ayasList});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuranPagesController>(builder: (pagesController) {
      return  Expanded(
        child: Padding(
          padding: const EdgeInsets.only(
              left: 5.0, top: 1),
          child: Container(
            child: RichText(
              selectionColor: Colors.red,
              textAlign:
              TextAlign.justify,
              textDirection:
              TextDirection.rtl,
              softWrap: true,
              textScaleFactor: 0.89,
              text: TextSpan(
                  children: List.generate(
                      ayasList.length,
                          (index) {
                            String newText = _textSelect((ayasList[index].numberInSurah).toString());
                        return TextSpan(
                          children: [
                            WidgetSpan(
                                child: BasmalaHeader(
                                    model: ayasList[
                                    index])),
                            TextSpan(
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    pagesController.setHeaderVisible(!pagesController.isHeaderVisible);
                                    pagesController.setSelectedAyaIndex(ayasList[index].number as int);
                                  },
                                text: ((ayasList[index].text)!
                                    .contains('بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ'))
                                    ? (ayasList[index].text)?.replaceRange(0, 39, '')
                                    : (ayasList[index].text),
                                //?.substring(7,state.data?[index].text!.length),
                                style: TextStyle(
                                  // background: Paint()..color = Colors.blue,
                                    backgroundColor:
                                    pagesController.selectedAyaIndex == (ayasList[index].number as int)
                                        ? kPrimaryColor1
                                        : kPrimaryColorA,
                                    color: Colors.black,
                                    fontSize: 21,
                                    height: 2)),
                            const TextSpan(
                              text: "\uFD3F",
                              style: TextStyle(
                                fontSize: 26,
                                color: Colors.black,
                                fontFamily: 'me_quran',
                              ),
                            ),
                            TextSpan(
                              text: newText,
                              style: const TextStyle(
                                fontSize: 20,
                                color: Colors.redAccent,
                                // color: Color.fromARGB(255, 255, 0, 0),
                                fontFamily: 'me_quran',
                              ),
                            ),
                            const TextSpan(
                              text: "\uFD3E",
                              style: TextStyle(
                                fontSize: 26,
                                color: Colors.black,
                                fontFamily: 'me_quran',
                              ),
                            ),

                          ],
                        );
                      })),
            ),
          ),
        ),
      );

    });
  }

  String _textSelect(String str) {
    str = str.replaceAll('0', '٠');
    str = str.replaceAll('1', '١');
    str = str.replaceAll('2', '٢');
    str = str.replaceAll('3', '٣');
    str = str.replaceAll('4', '٤');
    str = str.replaceAll('5', '٥');
    str = str.replaceAll('6', '٦');
    str = str.replaceAll('7', '٧');
    str = str.replaceAll('8', '٨');
    str = str.replaceAll('9', '٩');

    return str;
  }
}
