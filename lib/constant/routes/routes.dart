import 'package:get/get.dart';
import 'package:visitor_app/constant/routes/routes_name.dart';
import 'package:visitor_app/view/home/home_screen.dart';
import 'package:visitor_app/view/login/login_screen.dart';
import 'package:visitor_app/view/welcome/welcome_screen.dart';
class AppRoutes {
  static appRoutes () => [
    GetPage(name: RoutesName.welcomeScreen, page: () => WelcomeScreen(),
    transitionDuration: Duration(seconds: 2),transition: Transition.leftToRight
    ),
     GetPage(name: RoutesName.loginScreen, page: () => LoginScreen(),
    transitionDuration: Duration(seconds: 2),transition: Transition.leftToRight
    ),
     GetPage(name: RoutesName.homeScreen, page: () => const HomeScreen(),
    transitionDuration: const Duration(seconds: 2),transition: Transition.leftToRight
    ),
  ];

}