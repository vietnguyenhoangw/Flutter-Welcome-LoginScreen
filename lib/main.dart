import 'package:WelcomeAndLoginScreen/bindings/LoginBinding.dart';
import 'package:WelcomeAndLoginScreen/bindings/SplashBinding.dart';
import 'package:WelcomeAndLoginScreen/controllers/LoginController.dart';
import 'package:WelcomeAndLoginScreen/demoGetX.dart';
import 'package:WelcomeAndLoginScreen/screens/SplashScreen.dart';
import 'package:WelcomeAndLoginScreen/screens/loginScreen.dart';
import 'package:WelcomeAndLoginScreen/widgets/buttons/ButtonTextIcon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Constants
import './constants/colors.dart';

void main() {
  // runApp(MyApp());
  runApp(GetMaterialApp(
      // It is not mandatory to use named routes, but dynamic urls are interesting.
      initialRoute: '/SplashScreen',
      defaultTransition: Transition.native,
      translations: MyTranslations(),
      locale: Locale('pt', 'BR'),
      getPages: [
        GetPage(
            name: '/SplashScreen',
            page: () => SplashScreen(),
            binding: SplashBinding()),
        GetPage(
            name: '/LoginScreen',
            page: () => LoginScreen(),
            binding: LoginBinding())
      ]));
}

// void main() {
//   runApp(GetMaterialApp(
//     // It is not mandatory to use named routes, but dynamic urls are interesting.
//     initialRoute: '/home',
//     defaultTransition: Transition.native,
//     translations: MyTranslations(),
//     locale: Locale('pt', 'BR'),
//     getPages: [
//       //Simple GetPage
//       GetPage(name: '/home', page: () => First()),
//       // GetPage with custom transitions and bindings
//       GetPage(
//         name: '/second',
//         page: () => Second(),
//         customTransition: SizeTransitions(),
//         binding: SampleBind(),
//       ),
//       // GetPage with default transitions
//       GetPage(
//         name: '/third',
//         transition: Transition.cupertino,
//         page: () => Third(),
//       ),
//     ],
//   ));
// }
