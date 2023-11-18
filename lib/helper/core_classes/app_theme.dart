import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();
  static Color primaryColor = Color(0xff0E0E10);
  static Color accentColor = Color(0xffC4AC69);
  static Color popColor = Color(0xffFFFFFF);
  static Color secondaryColor = Color(0xffA2A2A2);
  static Color appbarColor = AppTheme.backGroundColor;
  static Color activeIconColor = Color(0xffFCF3AF);
  static Color inActiveIconColor = Color(0xffD9D9D9);
  static Color cardColor = Color(0xffFFFFFF);
  static Color backGroundColor = Color(0xffFFFFFF);
  static Color bottomNavigationBackGroundColor = Color(0xffFFFFFF);
  static Color leadingBackGroundColor = Color(0xffE6F8FF);
  static const AssetImage assetImageAr =
      AssetImage("assets/icons/add_img_a.png");
  static const AssetImage assetImageEn =
      AssetImage("assets/icons/add_img_e.png");
  static Color mainButtonColor = Color.fromARGB(0, 113, 202, 196);
  static Color acceptButtonColor = Color(0xff03CB03);
  static Color btnColor = Color(0xff01AAE5);
  static Color subTitleColor = Color(0xffB5BED1);
  static Color toastColor = Color(0xff2E3191);
  static Color rateColor = Color(0xffF2D515);
  static Color priceColor = Color(0xff7BAE3B);
  // static Color priceColor = Color((0xff12BA2D")));
  static Color counterColor = Color(0xff4DD894);
  static Color rejectButtonColor = Color(0xffE24848);
  static Color appBarColor = AppTheme.primaryColor;

  static Color appBarTextColor = Color(0xffFFFFFF);
  static Color mainTextColor = Color(0xff020202);

  static Color inputFilledColor = Color(0xffFFFFFF);
  static Color filledColor = Color(0xffF9F9F9);
  static const double sizedBoxHeight = 18;
  static const int phoneLength = 8;
  static const double cardHeight = 85;
  static const String androidLink = "https://linkerhub.net/";
  static const String iosLink = "https://linkerhub.net/";
  static String link = "https://linkerhub.net/";
  // "https://ui.alalmiyalhura.com/diaa-mashaly/linkerhub/index.html";
  static String mobileHint = "05xxxxxxxx";
  // static String link = Platform.isIOS ? iosLink : androidLink;
  static const Color notWhite = Color(0xFFEDF0F2);
  static const Color nearlyWhite = Color(0xFFFEFEFE);
  static const Color white = Color(0xFFFFFFFF);
  static const Color nearlyBlack = Color(0xFF213333);
  static const Color grey = Color(0xFF3A5160);
  static const Color dark_grey = Color(0xFF313A44);
  // static String currency = context.locale.languageCode == "en" ? "Sar" : "رس";
  static const Color darkText = Color(0xFF253840);
  static const Color darkerText = Color(0xFF17262A);
  static const Color lightText = Color(0xFF4A6572);
  static const Color deactivatedText = Color(0xFF767676);
  static const Color dismissibleBackground = Color(0xFF364A54);
  static const Color chipBackground = Color(0xFFEEF1F3);
  static const Color spacer = Color(0xFFF2F2F2);
  static const String fontName = 'Regular';
  static const String boldFont = 'Bold';
  static const String defaultImage =
      "https://cdn.pixabay.com/photo/2017/12/31/15/56/portrait-3052641_960_720.jpg";
  static const String defaultPersonImage =
      "https://cdn.pixabay.com/photo/2017/12/31/15/56/portrait-3052641_960_720.jpg";
  // static String visitor = context.locale.languageCode == "en"
  //     ? "Please login firstly"
  //     : "قم بتسجيل الدخول أولا";

  static const Radius chatRadius = Radius.circular(20);

  // static const TextTheme textTheme = TextTheme(
  //   display1: display1,
  //   headline: headline,
  //   // title: title,
  //   subtitle: subtitle,
  //   body2: body2,
  //   body1: body1,
  //   caption: caption,
  // );
  static const SliverGridDelegate gridDelegate =
      SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 1,
          mainAxisSpacing: 1,
          childAspectRatio: .75);
  static const TextStyle mainButtonTextStyle = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: 15,
    letterSpacing: -0.31,
    height: 19,
    color: Colors.white,
  );

  static TextStyle inputTextStyle = TextStyle(
    fontFamily: fontName,
    fontSize: 10,
    letterSpacing: -0.17,
    height: 10,
    color: Colors.white,
  );

  static TextStyle inputHintStyle = TextStyle(
      fontFamily: fontName,
      fontSize: 8,
      letterSpacing: -0.17,
      height: 10,
      color: Color(0xff7C8184));

  static TextStyle validateTextStyle = TextStyle(
    color: Colors.red,
    fontWeight: FontWeight.w500,
    fontSize: 12,
  );
  static const TextStyle display1 = TextStyle(
    // h4 -> display1
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: 36,
    letterSpacing: 0.4,
    height: 0.9,
    color: darkerText,
  );
  static const EdgeInsets textFieldPadding =
      EdgeInsets.only(right: 20, left: 20, top: sizedBoxHeight);
  static TextStyle formBuilderLabelStyle = TextStyle(
      fontFamily: AppTheme.fontName,
      fontWeight: FontWeight.w700,
      fontSize: 12,
      color: Color(0xff00152A));

  static TextStyle formBuilderHintStyle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: AppTheme.secondaryColor,
  );

  static const TextStyle headline = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: 24,
    letterSpacing: 0.27,
    color: darkerText,
  );
  static const String apiKey = "AIzaSyAITrPfT5r_qmCm_8ekZyPmnebGo8o_r18";

  static TextStyle titleStyle = TextStyle(
    fontFamily: boldFont,
    fontWeight: FontWeight.w800,
    fontSize: 14,
    color: primaryColor,
  );

  static TextStyle subTitleStyle = TextStyle(
    fontFamily: boldFont,
    fontWeight: FontWeight.w600,
    fontSize: 12,
    color: secondaryColor,
  );

  static const TextStyle subtitle = TextStyle(
    // subtitle2 -> subtitle
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    letterSpacing: -0.04,
    color: darkText,
  );

  static const TextStyle body2 = TextStyle(
    // body1 -> body2
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    letterSpacing: 0.2,
    color: darkText,
  );
  static BoxDecoration mainBoxDecoration = BoxDecoration(
      color: AppTheme.backGroundColor,
      borderRadius: const BorderRadius.only(
          topRight: Radius.circular(25), topLeft: Radius.circular(25)));
  static const BoxDecoration authBoxDecoration = BoxDecoration(
      image: DecorationImage(
          image: AssetImage("assets/icons/auth_bg.png"), fit: BoxFit.fill));
  static const BoxDecoration appBoxDecoration = BoxDecoration(
      image: DecorationImage(
          image: AssetImage("assets/icons/auth_bg.png"), fit: BoxFit.fill));
  static const TextStyle body1 = TextStyle(
    // body2 -> body1
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 16,
    letterSpacing: -0.05,
    color: darkText,
  );

  static const TextStyle caption = TextStyle(
    // Caption -> caption
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 12,
    letterSpacing: 0.2,
    color: lightText, // was lightText
  );
  InputDecoration dropDownInputDecoration = InputDecoration(
    errorStyle: TextStyle(
      fontFamily: AppTheme.fontName,
      color: Colors.red,
      fontSize: 13,
    ),
    contentPadding: EdgeInsets.only(left: 15, top: 15, bottom: 15, right: 15),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(30),
      ),
      borderSide: BorderSide(
        width: 1,
        style: BorderStyle.none,
      ),
    ),
    // border: OutlineInputBorder(
    //     borderRadius: BorderRadius.all(
    //       Radius.circular(30),
    //     ),
    //     borderSide: BorderSide.none),
    filled: true,
    fillColor: AppTheme.inputFilledColor,
    enabled: true,

    // disabledBorder: OutlineInputBorder(),
    hintStyle: TextStyle(
        color: AppTheme.secondaryColor,
        fontSize: 12,
        fontWeight: FontWeight.w600),
  );
}

InputDecoration formBuilderDecoration(String label) {
  return InputDecoration(
      labelText: label,
      fillColor: AppTheme.inputFilledColor,
      // hintText: LocaleKeys.AddProduct_Category,
      //  hintStyle: AppTheme.formBuilderHintStyle,
      labelStyle: AppTheme.formBuilderLabelStyle,
      border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
        Radius.circular(30),
      )));
}

class Family {
  Family._();
  static String bold = "Bold";
  static String regular = "Regular";
  static String fontFamilyMedium = "Medium";
  static String light = "Light";
  static String fontFamilyExtraBold = "ExtraBold";
  static String semiBold = "SemiBold";
}
