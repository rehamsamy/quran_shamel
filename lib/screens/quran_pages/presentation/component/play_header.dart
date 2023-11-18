import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:quran_shamel/helper/core_classes/constants.dart';
import 'package:quran_shamel/helper/custom_widgets/app_text.dart';
import 'package:quran_shamel/screens/quran_pages/controller/quran_pages_controller.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
class PagePlayheader extends GetView<QuranPagesController>{
  final _audioPlayer = AudioPlayer();
  String? quareeName, quareeIdenifier;
  @override
  Widget build(BuildContext context) {
  return GetBuilder<QuranPagesController>(
    builder: (pagesController) {
      return   Positioned(
          bottom: 100,
          left: 35,
          right: 35,
          child: Visibility(
            visible: pagesController.isHeaderVisible! ? true : false,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              height: pagesController.isAudioLoading ? 90 : 70,
              decoration: BoxDecoration(
                  color: kPrimaryLight, borderRadius: BorderRadius.circular(17)),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              // Navigator.of(context).push(MaterialPageRoute(
                              //     builder: (_) => QuraaScreen(
                              //       selectedQaree: widget.selectedIndex,
                              //     )));
                            },
                            child: Row(
                              children: [
                                SizedBox(
                                    width: 50,
                                    child: AppText(
                                      quareeName ?? 'الحصري',
                                      color: Colors.green.shade700,
                                      fontSize: 14,
                                    )),
                                const Icon(
                                  Icons.arrow_drop_down_sharp,
                                  size: 32,
                                  color: kAccentColor1,
                                )
                              ],
                            ),
                          ),
                          IconButton(
                            onPressed: () async {
                            pagesController.setChangeIsAudioLoading(true);
                              if (!pagesController.isPlayed) {
                                await _audioPlayer
                                    .play(UrlSource(
                                    'https://cdn.islamic.network/quran/audio/128/${quareeIdenifier ?? "ar.husary"}/${pagesController.selectedAyaIndex}.mp3'))
                                    .then((value) {
                                  pagesController.setChangeIsAudioLoading(false);
                                  pagesController.setChangeIsPlayed(true);
                                });
                                _audioPlayer.onPlayerComplete
                                    .listen((event) async {
                                  await _audioPlayer.play(UrlSource(
                                      'https://cdn.islamic.network/quran/audio/128/${quareeIdenifier ?? "ar.husary"}/${pagesController.selectedAyaIndex + 1}.mp3'));
                                 pagesController.setSelectedAyaIndex((pagesController.selectedAyaIndex)+1);
                                });

                                pagesController.setChangeIsAudioLoading(false);
                                pagesController.setChangeIsPlayed(true);
                              } else {
                                await _audioPlayer.pause().then((value) {
                                  pagesController.setChangeIsAudioLoading(false);
                                  pagesController.setChangeIsPlayed(false);
                                });
                              }
                            },
                            icon: Icon(
                              pagesController.isPlayed ? Icons.pause : Icons.play_arrow,
                              size: 32,
                            ),
                            color: kAccentColor1,
                            padding: const EdgeInsets.all(0),
                          ),
                        ],
                      ),
                      // SizedBox(height: 15,),
                      Visibility(
                          visible: pagesController.isAudioLoading,
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: const Center(
                              child: LinearProgressIndicator(
                                backgroundColor: Colors.red,
                                color: Colors.yellow,
                              ),
                            ),
                          )),
                      const SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ));
    }
  );
  }


  void getQuareeStoredData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    quareeIdenifier = prefs.getString('quareeId');
    quareeName = prefs.getString('quareeName');
  }


}