import 'package:get/get.dart';
import 'package:world_cup_mobile/src/presentation/screens/splash/splash_screen.dart';

import '../screens/home/home_screen.dart';

class Pages {
  static final List<GetPage<dynamic>> pages = [
    GetPage<SplashScreen>(
      name: '/',
      page: () => const SplashScreen(),
    ),
    GetPage<HomeScreen>(
      name: '/home',
      page: () => const HomeScreen(),
      preventDuplicates: true,
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 500),
    ),
  ];
}
