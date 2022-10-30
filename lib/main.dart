import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_cup_mobile/src/presentation/screens/splash/splash_screen.dart';

import 'src/presentation/routes/pages.dart';
import 'src/presentation/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      getPages: Pages.pages,
      darkTheme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        // appBarTheme: const AppBarTheme(
        //   systemOverlayStyle: SystemUiOverlayStyle(
        //     statusBarColor: Colors.transparent,
        //     statusBarIconBrightness: Brightness.light,
        //     statusBarBrightness: Brightness.dark,
        //   ),
        // ),

        colorScheme: const ColorScheme.dark().copyWith(
          primary: const Color(0xFFAB3948),
          secondary: Colors.white,
          //brightness: Brightness.dark,
        ),
        textTheme: GoogleFonts.robotoTextTheme(
          const TextTheme(
            button: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
            labelMedium: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
            headline1: TextStyle(
              fontSize: 96.0,
              fontWeight: FontWeight.w300,
              letterSpacing: -1.5,
              color: Colors.white,
            ),
            headline2: TextStyle(
              fontSize: 60.0,
              fontWeight: FontWeight.w300,
              letterSpacing: -0.5,
              color: Colors.white,
            ),
            headline3: TextStyle(
              fontSize: 48.0,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.0,
              color: Colors.white,
            ),
            headline4: TextStyle(
              fontSize: 34.0,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.25,
              color: Colors.white,
            ),
            headline5: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.0,
              color: Colors.white,
            ),
            headline6: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.15,
              color: Colors.white,
            ),
            subtitle1: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.15,
              color: Colors.white,
            ),
            subtitle2: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.1,
              color: Colors.white,
            ),
            bodyText1: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.5,
              color: Colors.white,
            ),
          ),
        ),
        scaffoldBackgroundColor: const Color(0xFF0c0e11),
      ),
      home: const AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light, child: SplashScreen()),
    );
  }
}
