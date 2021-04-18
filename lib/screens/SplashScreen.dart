import 'package:WelcomeAndLoginScreen/controllers/SplashController.dart';
import 'package:WelcomeAndLoginScreen/widgets/buttons/ButtonTextIcon.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../constants/colors.dart';
import '../demoGetX.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
          // This makes the visual density adapt to the platform that you run
          // the app on. For desktop platforms, the controls will be smaller and
          // closer together (more dense) than on mobile platforms.
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: TextTheme(
            button: TextStyle(color: ColorsCustom.colorBlack),
          )),
      home: Scaffold(
        body: Container(
            color: ColorsCustom.colorBlack,
            child: Container(
              child: Column(
                children: [
                  Expanded(
                      flex: 2,
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/background.jpg'))),
                      )),
                  Expanded(
                      flex: 1,
                      child: Container(
                        color: ColorsCustom.colorBlack,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(children: <TextSpan>[
                                  TextSpan(
                                      text: 'Welcome and Login\n',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 35)),
                                  TextSpan(
                                      text:
                                          "CREATE WELCOME AND LOGIN WITH FLUTTER")
                                ])),
                            ButtonTextIcon(
                                btnTitle: "START LOGIN",
                                onPressButton: () {
                                  Get.find<SplashController>()
                                      .onStartLoginPress();
                                }),
                          ],
                        ),
                      )),
                ],
              ),
            )),
      ),
    );
  }
}
