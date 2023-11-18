import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:quran_shamel/helper/core_classes/constants.dart';
import 'package:quran_shamel/screens/quran_pages/controller/quran_pages_controller.dart';
import 'package:get/get.dart';
class PageAboveheader extends GetView<QuranPagesController>{
  @override
  Widget build(BuildContext context) {
  return GetBuilder<QuranPagesController>(
    builder: (pagesController) {
      return Positioned(
          top: 0,
          child: SizedBox(
            child: Visibility(
              visible: pagesController.isHeaderVisible! ? true : false,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                height: 60,
                width: MediaQuery.of(context).size.width,
                color: kPrimaryLight,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          // controller.openDrawer(const PagesDrawer(pageIndex: 0));
                          // scaffolKey.currentState!.openDrawer();
                          //  Scaffold.of(context).openDrawer();
                        },
                        icon: const Icon(
                          Icons.menu,
                          size: 32,
                        ),
                        color: kAccentColor1,
                      ),
                      IconButton(
                        onPressed: () {
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (_) => SearchScreen()));
                        },
                        icon: const Icon(
                          Icons.search,
                          size: 32,
                        ),
                        color: kAccentColor1,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.book,
                          size: 32,
                        ),
                        color: kAccentColor1,
                      ),
                      IconButton(
                        onPressed: () {
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (_) => SettingScreen()));
                        },
                        icon: const Icon(
                          Icons.settings,
                          size: 32,
                        ),
                        color: kAccentColor1,
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

}