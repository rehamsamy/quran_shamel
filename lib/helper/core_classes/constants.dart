import 'package:flutter/material.dart';
import 'package:get/get.dart';

//git token      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

const String userAvatar =
    'https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg';

const String backDrop =
    'https://cdn.eizo.de/typo3temp/fl_realurl_image/office-monitors-at-a-glance-27e.jpg';

 // const Color kPrimaryColor = Color(0xff373D70);
const Color kPrimaryColor = Color(0xffFFF9F1);
// const Color kAccentColor = Color(0xffDA00FF);
// const Color kPrimaryColor= Color(0xffFFF9F1);
const Color kPrimaryColorA= Color(0xffFFF9F1);
const Color kPrimaryColorB= Color(0xffE4D3B5);
const Color kPrimaryColor1=Color(0xffe1c89c);
const Color kPrimaryLight=Color(0xffeadabd);
const Color kAccentColor1=Color(0xff41d253);
const Color kAccentColor= Color(0xff523916);
const Color kBrownColor= Color(0xff8d6122);
const Color kBackgroundColor = Color(0xff373D70);
const Color kBackgroundDarkColor = Color(0xff191E47);
const Color kUnSelectedColor = Color(0xff757DB5);
const Color kAuthGreyColor=Color(0xffF6F6F6);
const Color kPurpleColor=Color(0xffB86AD6);
const Color kBlueColor=Colors.blueAccent;


double sizeFromHeight(double fraction, {bool removeAppBarSize = true}){
  MediaQueryData mediaQuery = MediaQuery.of(Get.context!);
  fraction = (removeAppBarSize
          ? (mediaQuery.size.height - kToolbarHeight - mediaQuery.padding.top)
          : mediaQuery.size.height) /
      (fraction == 0 ? 1 : fraction);
  return fraction;
}

double sizeFromWidth(double fraction) {
  fraction =
      MediaQuery.of(Get.context!).size.width / (fraction == 0 ? 1 : fraction);
  return fraction;
}


 const List<Map<String, dynamic>> suraImages = [
  {'name': 'سُورَةُ ٱلْفَاتِحَةِ', 'image': 1},
  {'name': 'سُورَةُ البَقَرَةِ', 'image': 2},
  {'name': 'سُورَةُ آلِ عِمۡرَانِ', 'image': 50},
  {'name': 'سُورَةُ النِّسَاءِِ', 'image': 76},
  {'name': 'سُورَةُ المَائـِدَةِِ', 'image': 106},
  {'name': 'سُورَةُ الأَنۡعَامِِ', 'image': 128},
  {'name': 'سُورَةُ الأَعۡرَافِِ', 'image': 151},
  {'name': 'سُورَةُ الأَنفَالِِ', 'image': 177},
  {'name': 'سُورَةُ التَّوۡبَةِ', 'image': 187},
  {'name': 'سُورَةُ يُونُسَ', 'image': 207},
  {'name': 'سُورَةُ هُودٍ', 'image': 221},
  {'name': 'سُورَةُ يُوسُفَ', 'image': 235},
  {'name': 'سُورَةُ الرَّعۡدِ', 'image': 249},
  {'name': 'سُورَةُ إِبۡرَاهِيمَ', 'image': 255},
  {'name': 'سُورَةُ الحِجۡرِ', 'image': 262},
  {'name': 'سُورَةُ النَّحۡلِِ', 'image': 267},
  {'name': 'سُورَةُ الإِسۡرَاءِ', 'image': 282},
  {'name': 'سُورَةُ الكَهۡفِ', 'image': 293},
  {'name': 'سُورَةُ مَرۡيَمَ', 'image': 305},
  {'name': 'سُورَةُ طه', 'image': 312},
  {'name': 'سُورَةُ الأَنبِيَاءِ', 'image': 322},
  {'name': 'سُورَةُ الحَجِّ', 'image': 331},
  {'name': 'سُورَةُ المُؤۡمِنُونَ', 'image': 341},
  {'name': 'سُورَةُ النُّورِ', 'image': 349},
  {'name': 'سُورَةُ الفُرۡقَانِ', 'image': 359},
  {'name': 'سُورَةُ الشُّعَرَاءِ', 'image': 366},
  {'name': 'سُورَةُ النَّمۡلِ', 'image': 376},
  {'name': 'سُورَةُ القَصَصِ', 'image': 385},
  {'name': 'سُورَةُ العَنكَبُوتِ', 'image': 396},
  {'name': 'سُورَةُ الرُّومِ', 'image': 404},
  {'name': 'سُورَةُ لُقۡمَانَ', 'image': 411},
  {'name': 'سُورَةُ السَّجۡدَةِ', 'image': 414},
  {'name': 'سُورَةُ الأَحۡزَابِ', 'image': 417},
  {'name': 'سُورَةُ سَبَإٍ', 'image': 428},
  {'name': 'سُورَةُ فَاطِرٍ', 'image': 434},
  {'name': 'سُورَةُ يسٓ', 'image': 440},
  {'name': 'سُورَةُ الصَّافَّاتِ', 'image': 445},
  {'name': 'سُورَةُ صٓ', 'image': 452},
  {'name': 'سُورَةُ الزُّمَرِ', 'image': 458},
  {'name': 'سُورَةُ غَافِرٍ', 'image': 467},
  {'name': 'سُورَةُ فُصِّلَتۡ', 'image': 477},
  {'name': 'سُورَةُ الشُّورَىٰ', 'image': 483},
  {'name': 'سُورَةُ الزُّخۡرُفِ', 'image': 489},
  {'name': 'سُورَةُ الدُّخَانِ', 'image': 496},
  {'name': 'سُورَةُ الجَاثِيَةِ', 'image': 498},
  {'name': 'سُورَةُ الأَحۡقَافِ', 'image': 502},
  {'name': 'سُورَةُ مُحَمَّدٍ', 'image': 506},
  {'name': 'سُورَةُ الفَتۡحِ', 'image': 511},
  {'name': 'سُورَةُ الحُجُرَاتِ', 'image': 515},
  {'name': 'سُورَةُ قٓ', 'image': 518},
  {'name': 'سُورَةُ الذَّارِيَاتِ', 'image': 520},
  {'name': 'سُورَةُ الطُّورِ', 'image': 523},
  {'name': 'سُورَةُ النَّجۡمِ', 'image': 525},
  {'name': 'سُورَةُ القَمَرِ', 'image': 528},
  {'name': 'سُورَةُ الرَّحۡمَٰن', 'image': 531},
  {'name': 'سُورَةُ الوَاقِعَةِ', 'image': 534},
  {'name': 'سُورَةُ الحَدِيدِ', 'image': 537},
  {'name': 'سُورَةُ المُجَادلَةِ', 'image': 542},
  {'name': 'سُورَةُ الحَشۡرِ', 'image': 545},
  {'name': 'سُورَةُ المُمۡتَحنَةِ', 'image': 548},
  {'name': 'سُورَةُ الصَّفِّ', 'image': 551},
  {'name': 'سُورَةُ الجُمُعَةِ', 'image': 553},
  {'name': 'سُورَةُ المُنَافِقُونَ', 'image': 554},
  {'name': 'سُورَةُ التَّغَابُنِ', 'image': 555},
  {'name': 'سُورَةُ الطَّلَاقِ', 'image': 557},
  {'name': 'سُورَةُ التَّحۡرِيمِ', 'image': 560},
  {'name': 'سُورَةُ المُلۡكِ', 'image': 562},
  {'name': 'سُورَةُ القَلَمِ', 'image': 564},
  {'name': 'سُورَةُ الحَاقَّةِ', 'image': 566},
  {'name': 'سُورَةُ المَعَارِجِ', 'image': 568},
  {'name': 'سُورَةُ نُوحٍ', 'image': 570},
  {'name': 'سُورَةُ الجِنِّ', 'image': 572},
  {'name': 'سُورَةُ المُزَّمِّلِ', 'image': 574},
  {'name': 'سُورَةُ المُدَّثِّرِ', 'image': 575},
  {'name': 'سُورَةُ القِيَامَةِ', 'image': 577},
  {'name': 'سُورَةُ الإِنسَانِ', 'image': 578},
  {'name': 'سُورَةُ المُرۡسَلَاتِ', 'image': 580},
  {'name': 'سُورَةُ النَّبَإِ', 'image': 582},
  {'name': 'سُورَةُ النَّازِعَاتِ', 'image': 583},
  {'name': 'سُورَةُ عَبَسَ', 'image': 584},
  {'name': 'سُورَةُ التَّكۡوِيرِ', 'image': 586},
  {'name': 'سُورَةُ الانفِطَارِ', 'image': 586},
  {'name': 'سُورَةُ المُطَفِّفِينَ', 'image': 587},
  {'name': 'سُورَةُ الانشِقَاقِ', 'image': 589},
  {'name': 'سُورَةُ البُرُوجِ', 'image': 590},
  {'name': 'سُورَةُ الطَّارِقِ', 'image': 590},
  {'name': 'سُورَةُ الأَعۡلَىٰ', 'image': 591},
  {'name': 'سُورَةُ الغَاشِيَةِ', 'image': 592},
  {'name': 'سُورَةُ الفَجۡرِ', 'image': 593},
  {'name': 'سُورَةُ البَلَدِ', 'image': 594},
  {'name': 'سُورَةُ الشَّمۡسِ', 'image': 594},
  {'name': 'سُورَةُ اللَّيۡلِ', 'image': 595},
  {'name': 'سُورَةُ الضُّحَىٰ', 'image': 596},
  {'name': 'سُورَةُ الشَّرۡحِ', 'image': 596},
  {'name': 'سُورَةُ التِّينِ', 'image': 597},
  {'name': 'سُورَةُ العَلَقِ', 'image': 597},
  {'name': 'سُورَةُ القَدۡرِ', 'image': 598},
  {'name': 'سُورَةُ البَيِّنَةِ', 'image': 598},
  {'name': 'سُورَةُ الزَّلۡزَلَةِ', 'image': 599},
  {'name': 'سُورَةُ العَادِيَاتِ', 'image': 599},
  {'name': 'سُورَةُ القَارِعَةِ', 'image': 600},
  {'name': 'سُورَةُ التَّكَاثُرِ', 'image': 600},
  {'name': 'سُورَةُ العَصۡرِ', 'image': 601},
  {'name': 'سُورَةُ الهُمَزَةِ', 'image': 601},
  {'name': 'سُورَةُ الفِيلِ', 'image': 601},
  {'name': 'سُورَةُ قُرَيۡشٍ', 'image': 602},
  {'name': 'سُورَةُ المَاعُونِ', 'image': 602},
  {'name': 'سُورَةُ الكَوۡثَرِ', 'image': 602},
  {'name': 'سُورَةُ الكَافِرُونَ', 'image': 603},
  {'name': 'سُورَةُ النَّصۡرِ', 'image': 603},
  {'name': 'سُورَةُ المَسَدِ', 'image': 603},
  {'name': 'سُورَةُ الإِخۡلَاصِ', 'image': 604},
  {'name': 'سُورَةُ الفَلَقِ', 'image': 604},
  {'name': 'سُورَةُ النَّاسِ', 'image': 604}
];