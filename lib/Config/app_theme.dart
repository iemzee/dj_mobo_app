import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTypoGraphy {
  static const TextStyle errorHintStyle = TextStyle(color: Colors.white70);
}

class AppTheme {
  static const Color nearlyWhite = Color(0xFFFAFAFA);
  static const Color white = Color(0xFFFFFFFF);
  static const Color background = Color(0xFFF2F3F8);
  static const Color background1 = Color(0xFFebebeb);
  static const Color background2 = Color(0xFFd7f0f5);
  static const Color background3 = Color(0xFFb7e0e8);
  static const Color nearlyDarkBlue = Color(0xFF1476F7);
  static const Color nearlyGold = Color(0xFFCFB53B);

  static const Color appDefaultColor = Color(0xFF2d7af6);
  static const Color appDefaultButtonSplashColor = Colors.white12;

  static const Color nearlyRed = Color(0xFFE59007);

  static const Color nearlyBlue = Color(0xFF00B6F0);
  static const Color nearlyBlack = Color(0xFF213333);
  static const Color grey = Color(0xFF3A5160);
  static const Color darkGrey = Color(0xFF313A44);

  static const Color darkText = Color(0xFF253840);
  static const Color darkerText = Color(0xFF17262A);
  static const Color lightText = Color(0xFF4A6572);
  static const Color divideColor = Color(0xFFEEEEEE);
  static const Color deactivatedText = Color(0xFF767676);
  static const Color dismissibleBackground = Color(0xFF364A54);
  static const Color spacer = Color(0xFFF2F2F2);
  static Color lightRed = Colors.red[300]!;
  static Color lightBlue = Colors.blue[300]!;
  static Color lightamber = Colors.amber[300]!;

  static const Color drawerBackgroundColor1 = Color(0xFF367CFE);
  static const Color drawerBackgroundColor2 = Color(0xFF1284DD);
  static const Color drawerBackgroundColor3 = Color(0xFF02ABFF);

  static const Color pieChart1Color1 = Color(0xFFEC6B56);
  static const Color pieChart1Color2 = Color(0xFFFFC154);
  static const Color pieChart1Color3 = Color(0xFF47B39C);

  static const Color pieChart2Color1 = Color(0xFF58508D);
  static const Color pieChart2Color2 = Color(0xFFBC5090);
  static const Color pieChart2Color3 = Color(0xFFFF6361);

  static const Color pieChart3Color1 = Color(0xFF0674C4);
  static const Color pieChart3Color2 = Color(0xFFDDDDDD);
  static const Color pieChart3Color3 = Color(0xFFA9A9A9);

  static const Color pieChartBackgroundColor = Color(0xFFe0f2f1);
  static Color pieChartBackgroundColor1 = Colors.blue[50]!;
  static Color pieChartBackgroundColor2 = Colors.amber[400]!;
  static Color pieChartBackgroundColor3 = Colors.red[300]!;
  static const Color pieChartBackgroundColor4 = Color(0xFFe0f5ff);
  static const Color pieChartBackgroundColor5 = Color(0xFFdcf2e9);
  static const Color pieChartBackgroundColor6 = Color(0xFFf7eded);
  static const Color netPayAbleSalary = Color(0xFF870707);
  static const Color salarySlipDateColor = Color(0xFF624699);
  static const Color salarySlipDateColorBackgrpund = Color(0xFFe4cef5);
  static const Color textFieldOfCartBackbgtoundColor = Color(0xFFf5f5f5);

  static List<Color> pieCahrtColourList1 = [pieChart1Color1, pieChart1Color3];
  static List<Color> pieCahrtColourList2 = [
    pieChart2Color1,
    pieChart2Color2,
    pieChart2Color3
  ];
  static List<Color> pieCahrtColourList3 = [
    pieChart3Color1,
    pieChart3Color2,
    pieChart3Color3
  ];

  static const Color appBackgroundColor = Colors.white;
  TextStyle listTitleDefaultTextStyle = const TextStyle(
      color: Colors.white70, fontSize: 20.0, fontWeight: FontWeight.w600);
  TextStyle listTitleSelectedTextStyle = const TextStyle(
      color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w600);

  static const Color selectedColor = Color(0xFF4AC8EA);
  static const Color drawerBackgroundColor = Colors.transparent;
  static const Color appBackgroundColorforCard1 = Color(0xFF4C98CF);
  // static const Color appBackgroundColorforCard2 = Color(0xFF4873A6);
  static const Color appBackgroundColorforCard2Dark = Color(0xFF024EA5);
  static const Color appBackgroundColorforCard2 = Color(0xff0073fa);
  static const Color appBackgroundColorforCard2Light = Color(0xff399cff);
  static const Color appBackgroundColorforCard2Yellow = Color(0xffffb739);
  static const Color appBackgroundColorforCard2Green = Color(0xff13cb73);
  static const Color appBackgroundColorforCard3 = Color(0xFF5A5387);
  static const Color appBackgroundColorforCard4 = Color(0xFF524365);
  static Color appBackgroundColorforloginCard = Colors.blue[300]!;

  static const Color appBackgroundColorforCard5 = Color(0xFF2193b0);

  static const Color appBackgroundColorForButtons = Color(0xFF3A4F73);

  static const Color loginGradientStart =  Color(0xFF00c6ff);
  static const Color loginGradientEnd =  Color(0xFF0072ff);

  static const primaryGradient =  LinearGradient(
    colors:  [loginGradientStart, loginGradientEnd],
    stops:  [0.0, 1.0],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  AppTheme._();

  static final Color _iconColor = Colors.blueAccent.shade200;

  static const Color _lightPrimaryColor = Colors.blue;
  static const Color _lightPrimaryVariantColor = Colors.white;
  static const Color _lightSecondaryColor = Colors.green;
  static const Color _lightOnPrimaryColor = Colors.black;

  static const Color _darkPrimaryColor = Colors.white24;
  static const Color _darkPrimaryVariantColor = Colors.black;
  static const Color _darkSecondaryColor = Colors.white;
  static const Color _darkOnPrimaryColor = Colors.white;

  static final ThemeData lightTheme = ThemeData(
      dividerColor: Colors.transparent,
      splashColor: Colors.transparent,
      cursorColor: Colors.blue[500],
      accentColor: Colors.blue,
      hintColor: Colors.blueAccent,
      focusColor: Colors.blueAccent,
      primaryColorLight: Colors.blueAccent,
      highlightColor: Colors.transparent,
      scaffoldBackgroundColor: _lightPrimaryVariantColor,
      appBarTheme: const AppBarTheme(
        color: _lightPrimaryVariantColor,
        iconTheme: IconThemeData(color: _lightOnPrimaryColor),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.blueAccent)),
      ),
      colorScheme: const ColorScheme.light(
          primary: _lightPrimaryColor,
          primaryVariant: _lightPrimaryVariantColor,
          secondary: _lightSecondaryColor,
          onPrimary: _lightOnPrimaryColor,
          background: Colors.white),
      iconTheme: IconThemeData(
        color: _iconColor,
      ),

      //textTheme: GoogleFonts.robotoTextTheme(lightTextTheme)
      textTheme: lightTextTheme);

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: _darkPrimaryVariantColor,
    appBarTheme: const AppBarTheme(
      color: _darkPrimaryVariantColor,
      iconTheme: IconThemeData(color: _darkOnPrimaryColor),
    ),
    colorScheme: const ColorScheme.light(
      primary: _darkPrimaryColor,
      primaryVariant: _darkPrimaryVariantColor,
      secondary: _darkSecondaryColor,
      onPrimary: _darkOnPrimaryColor,
      background: Colors.black
    ),
    iconTheme: IconThemeData(
      color: _iconColor,
    ),
    textTheme: _darkTextTheme,
  );

  static final TextTheme lightTextTheme = TextTheme(
    displayLarge: _lightScreenTextStyleDisplayLarge,
    displayMedium: _lightScreenTextStyleDisplayMedium,
    displaySmall: _lightScreenTextStyleDisplaySmall,
    headlineLarge: _lightScreenTextStyleHeadlineLarge,
    headlineMedium: _lightScreenTextStyleHeadlineMedium,
    headlineSmall: _lightScreenTextStyleHeadlineSmall,
    titleLarge: _lightScreenTextStyleTitleLarge,
    titleMedium: _lightScreenTextStyleTitleMedium,
    titleSmall: _lightScreenTextStyleTitleSmall,
    labelLarge: _lightScreenTextStyleLableLarge,
    labelMedium: _lightScreenTextStyleLableMedium,
    labelSmall: _lightScreenTextStyleLableSmall,
    bodyLarge: _lightScreenTextStyleBodyLarge,
    bodyMedium: _lightScreenTextStyleBodyMedium,
    bodySmall: _lightScreenTextStyleBodySmall,
    //Depricated in 2021 Material Design Update
    // subtitle1:_lightScreenTextStyleSubTitle1,
    // subtitle2: _lightScreenTextStyleSubTitle2,
    // bodyText1: _lightScreenTextStyleBody1,
    // bodyText2: _lightScreenTextStyleBody2,
    // caption: _lightScreenTextStyleCaption,
    // button: _lightScreenTextStyleButton,
    // overline: _lightScreenTextStyleSubOverLine,
    // headline5: _lightScreenTextStyleHeadline5,
    // headline6: _lightScreenTextStyleHeadline6,
    // headline4: _lightScreenTextStyleHeadline4,
    // headline3: _lightScreenTextStyleHeadline3,
    // headline2: _lightScreenTextStyleHeadline2,
    // headline1: _lightScreenTextStyleHeadline1,
      );

  static final TextTheme _darkTextTheme = TextTheme(
    displayLarge: _darkScreenTextStyleDisplayLarge,
    displayMedium: _darkScreenTextStyleDisplayMedium,
    displaySmall: _darkScreenTextStyleDisplaySmall,
    headlineLarge: _darkScreenTextStyleHeadlineLarge,
    headlineMedium: _darkScreenTextStyleHeadlineMedium,
    headlineSmall: _darkScreenTextStyleHeadlineSmall,
    titleLarge: _darkScreenTextStyleTitleLarge,
    titleMedium: _darkScreenTextStyleTitleMedium,
    titleSmall: _darkScreenTextStyleTitleSmall,
    labelLarge: _darkScreenTextStyleLableLarge,
    labelMedium: _darkScreenTextStyleLableMedium,
    labelSmall: _darkScreenTextStyleLableSmall,
    bodyLarge: _darkScreenTextStyleBodyLarge,
    bodyMedium: _darkScreenTextStyleBodyMedium,
    bodySmall: _darkScreenTextStyleBodySmall,
    //Depricated in 2021 Material Design Update
    // subtitle1:_darkScreenTextStyleSubTitle1,
    // subtitle2: _darkScreenTextStyleSubTitle2,
    // bodyText1: _darkScreenTextStyleBody1,
    // bodyText2: _darkScreenTextStyleBody2,
    // caption: _darkScreenTextStyleCaption,
    // button: _darkScreenTextStyleButton,
    // overline: _darkScreenTextStyleSubOverLine,
    // headline5: __darkScreenTextStyleHeadline5,
    // headline6: __darkScreenTextStyleHeadline6,
    // headline4: __darkScreenTextStyleHeadline4,
    // headline3: __darkScreenTextStyleHeadline3,
    // headline2: __darkScreenTextStyleHeadline2,
    // headline1: __darkScreenTextStyleHeadline1,

  );

  /// For light theme
  /// Depricated in 2021 Material Design Update
// static final TextStyle _lightScreenTextStyleHeadline1 = GoogleFonts.montserrat(
//       textStyle: const TextStyle(fontSize: 96.0, color: _lightOnPrimaryColor));
//        static final TextStyle _lightScreenTextStyleHeadline2 = GoogleFonts.montserrat(
//       textStyle: const TextStyle(fontSize: 60.0, color: _lightOnPrimaryColor));
//        static final TextStyle _lightScreenTextStyleHeadline3 = GoogleFonts.montserrat(
//       textStyle: const TextStyle(fontSize: 48.0, color: _lightOnPrimaryColor));
//        static final TextStyle _lightScreenTextStyleHeadline4 = GoogleFonts.montserrat(
//       textStyle: const TextStyle(fontSize: 34.0, color: _lightOnPrimaryColor));
//        static final TextStyle _lightScreenTextStyleHeadline5 = GoogleFonts.montserrat(
//       textStyle: const TextStyle(fontSize: 24.0, color: _lightOnPrimaryColor));
//        static final TextStyle _lightScreenTextStyleHeadline6 = GoogleFonts.montserrat(
//       textStyle: const TextStyle(fontSize: 20.0, color: _lightOnPrimaryColor));
//  static final TextStyle _lightScreenTextStyleSubTitle1  =  GoogleFonts.montserrat(
//       textStyle: const TextStyle(fontSize: 16.0, color: _lightOnPrimaryColor));
//  static final TextStyle _lightScreenTextStyleSubTitle2  =  GoogleFonts.montserrat(
//       textStyle: const TextStyle(fontSize: 14.0, color: _lightOnPrimaryColor));
//  static final TextStyle _lightScreenTextStyleBody1  =  GoogleFonts.montserrat(
//       textStyle: const TextStyle(fontSize: 11.0, color:Colors.white70));
//   static final TextStyle _lightScreenTextStyleBody2  =  GoogleFonts.montserrat(
//       textStyle: const TextStyle(fontSize: 10.0, color:Colors.white70));
// static final TextStyle _lightScreenTextStyleCaption  =  GoogleFonts.montserrat(
//       textStyle: const TextStyle(fontSize: 12.0, color: _lightOnPrimaryColor));
//  static final TextStyle _lightScreenTextStyleButton  =  GoogleFonts.montserrat(
//       textStyle: const TextStyle(fontSize: 14.0, color: _lightOnPrimaryColor));
//  static final TextStyle _lightScreenTextStyleSubOverLine  =  GoogleFonts.montserrat(
//       textStyle: const TextStyle(fontSize: 10.0, color: _lightOnPrimaryColor));
      static final TextStyle _lightScreenTextStyleDisplayLarge  =  GoogleFonts.montserrat(
      textStyle: const TextStyle(fontSize: 57.0, color: _lightOnPrimaryColor));
 static final TextStyle _lightScreenTextStyleDisplayMedium  =  GoogleFonts.montserrat(
      textStyle: const TextStyle(fontSize: 45.0, color: _lightOnPrimaryColor));
 static final TextStyle _lightScreenTextStyleDisplaySmall  =  GoogleFonts.montserrat(
      textStyle: const TextStyle(fontSize: 36.0, color: _lightOnPrimaryColor));
 static final TextStyle _lightScreenTextStyleHeadlineLarge  =  GoogleFonts.montserrat(
      textStyle: const TextStyle(fontSize: 32.0, color: _lightOnPrimaryColor));
  static final TextStyle _lightScreenTextStyleHeadlineMedium  =  GoogleFonts.montserrat(
      textStyle: const TextStyle(fontSize: 28.0, color: _lightOnPrimaryColor));
   static final TextStyle _lightScreenTextStyleHeadlineSmall  =  GoogleFonts.montserrat(
      textStyle: const TextStyle(fontSize: 24.0, color: _lightOnPrimaryColor));
 static final TextStyle _lightScreenTextStyleTitleLarge  =  GoogleFonts.montserrat(
      textStyle: const TextStyle(fontSize: 22.0, color: _lightOnPrimaryColor));
  static final TextStyle _lightScreenTextStyleTitleMedium  =  GoogleFonts.montserrat(
      textStyle: const TextStyle(fontSize: 16.0, color: _lightOnPrimaryColor));
   static final TextStyle _lightScreenTextStyleTitleSmall  =  GoogleFonts.montserrat(
      textStyle: const TextStyle(fontSize: 14.0, color: _lightOnPrimaryColor));
 static final TextStyle _lightScreenTextStyleBodyLarge  =  GoogleFonts.montserrat(
      textStyle: const TextStyle(fontSize: 16.0, color: _lightOnPrimaryColor));
  static final TextStyle _lightScreenTextStyleBodyMedium  =  GoogleFonts.montserrat(
      textStyle: const TextStyle(fontSize: 14.0, color: _lightOnPrimaryColor));
   static final TextStyle _lightScreenTextStyleBodySmall  =  GoogleFonts.montserrat(
      textStyle: const TextStyle(fontSize: 12.0, color: _lightOnPrimaryColor));
  static final TextStyle _lightScreenTextStyleLableLarge  =  GoogleFonts.montserrat(
      textStyle: const TextStyle(fontSize: 14.0, color: _lightOnPrimaryColor));
   static final TextStyle _lightScreenTextStyleLableMedium  =  GoogleFonts.montserrat(
      textStyle: const TextStyle(fontSize: 12.0, color: _lightOnPrimaryColor));
    static final TextStyle _lightScreenTextStyleLableSmall  =  GoogleFonts.montserrat(
      textStyle: const TextStyle(fontSize: 11.0, color: _lightOnPrimaryColor));



  /// For dark theme
  /// Depricated in 2021 Material Design Update
  //  static final TextStyle __darkScreenTextStyleHeadline1 = GoogleFonts.montserrat(
  //     textStyle: const TextStyle(fontSize: 96.0, color: _darkOnPrimaryColor));
  //      static final TextStyle __darkScreenTextStyleHeadline2 = GoogleFonts.montserrat(
  //     textStyle: const TextStyle(fontSize: 60.0, color: _darkOnPrimaryColor));
  //      static final TextStyle __darkScreenTextStyleHeadline3 = GoogleFonts.montserrat(
  //     textStyle: const TextStyle(fontSize: 48.0, color: _darkOnPrimaryColor));
  //      static final TextStyle __darkScreenTextStyleHeadline4 = GoogleFonts.montserrat(
  //     textStyle: const TextStyle(fontSize: 34.0, color: _darkOnPrimaryColor));
  //      static final TextStyle __darkScreenTextStyleHeadline5 = GoogleFonts.montserrat(
  //     textStyle: const TextStyle(fontSize: 24.0, color: _darkOnPrimaryColor));
  //      static final TextStyle __darkScreenTextStyleHeadline6 = GoogleFonts.montserrat(
  //     textStyle: const TextStyle(fontSize: 20.0, color: _darkOnPrimaryColor));
//    static final TextStyle _darkScreenTextStyleCaption  =  GoogleFonts.montserrat(
//       textStyle: const TextStyle(fontSize: 12.0, color: _darkOnPrimaryColor));
//  static final TextStyle _darkScreenTextStyleButton  =  GoogleFonts.montserrat(
//       textStyle: const TextStyle(fontSize: 14.0, color: _darkOnPrimaryColor));
//    static final TextStyle _darkScreenTextStyleSubTitle1  =  GoogleFonts.montserrat(
//       textStyle: const TextStyle(fontSize: 16.0, color: _darkOnPrimaryColor));
//  static final TextStyle _darkScreenTextStyleSubTitle2  =  GoogleFonts.montserrat(
//       textStyle: const TextStyle(fontSize: 14.0, color: _darkOnPrimaryColor));
//  static final TextStyle _darkScreenTextStyleBody1  =  GoogleFonts.montserrat(
//       textStyle: const TextStyle(fontSize: 11.0, color:Colors.white70));
//   static final TextStyle _darkScreenTextStyleBody2  =  GoogleFonts.montserrat(
//       textStyle: const TextStyle(fontSize: 10.0, color:Colors.white70));
//       static final TextStyle _darkScreenTextStyleSubOverLine  =  GoogleFonts.montserrat(
//       textStyle: const TextStyle(fontSize: 10.0, color: _darkOnPrimaryColor));
 static final TextStyle _darkScreenTextStyleDisplayLarge  =  GoogleFonts.montserrat(
      textStyle: const TextStyle(fontSize: 57.0, color: _darkOnPrimaryColor));
 static final TextStyle _darkScreenTextStyleDisplayMedium  =  GoogleFonts.montserrat(
      textStyle: const TextStyle(fontSize: 45.0, color: _darkOnPrimaryColor));
 static final TextStyle _darkScreenTextStyleDisplaySmall  =  GoogleFonts.montserrat(
      textStyle: const TextStyle(fontSize: 36.0, color: _darkOnPrimaryColor));
 static final TextStyle _darkScreenTextStyleHeadlineLarge  =  GoogleFonts.montserrat(
      textStyle: const TextStyle(fontSize: 32.0, color: _darkOnPrimaryColor));
  static final TextStyle _darkScreenTextStyleHeadlineMedium  =  GoogleFonts.montserrat(
      textStyle: const TextStyle(fontSize: 28.0, color: _darkOnPrimaryColor));
   static final TextStyle _darkScreenTextStyleHeadlineSmall  =  GoogleFonts.montserrat(
      textStyle: const TextStyle(fontSize: 24.0, color: _darkOnPrimaryColor));
 static final TextStyle _darkScreenTextStyleTitleLarge  =  GoogleFonts.montserrat(
      textStyle: const TextStyle(fontSize: 22.0, color: _darkOnPrimaryColor));
  static final TextStyle _darkScreenTextStyleTitleMedium  =  GoogleFonts.montserrat(
      textStyle: const TextStyle(fontSize: 16.0, color: _darkOnPrimaryColor));
   static final TextStyle _darkScreenTextStyleTitleSmall  =  GoogleFonts.montserrat(
      textStyle: const TextStyle(fontSize: 14.0, color: _darkOnPrimaryColor));
 static final TextStyle _darkScreenTextStyleBodyLarge  =  GoogleFonts.montserrat(
      textStyle: const TextStyle(fontSize: 16.0, color: _darkOnPrimaryColor));
  static final TextStyle _darkScreenTextStyleBodyMedium  =  GoogleFonts.montserrat(
      textStyle: const TextStyle(fontSize: 14.0, color: _darkOnPrimaryColor));
   static final TextStyle _darkScreenTextStyleBodySmall  =  GoogleFonts.montserrat(
      textStyle: const TextStyle(fontSize: 12.0, color: _darkOnPrimaryColor));
  static final TextStyle _darkScreenTextStyleLableLarge  =  GoogleFonts.montserrat(
      textStyle: const TextStyle(fontSize: 14.0, color: _darkOnPrimaryColor));
   static final TextStyle _darkScreenTextStyleLableMedium  =  GoogleFonts.montserrat(
      textStyle: const TextStyle(fontSize: 12.0, color: _darkOnPrimaryColor));
    static final TextStyle _darkScreenTextStyleLableSmall  =  GoogleFonts.montserrat(
      textStyle: const TextStyle(fontSize: 11.0, color: _darkOnPrimaryColor));
 

}
