import 'package:WelcomeAndLoginScreen/controllers/LoginController.dart';
import 'package:WelcomeAndLoginScreen/widgets/buttons/ButtonTextIcon.dart';
import 'package:WelcomeAndLoginScreen/widgets/textfeilds/TextFeildWithIcon.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

// constants
import '../constants/colors.dart';

class LoginScreen extends StatefulWidget {
  @override
  LoginScreenState createState() {
    return new LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  logToast(
    String toastContent,
    Color backgroundColors,
    Color textColors,
  ) {
    Fluttertoast.showToast(
        msg: toastContent,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: backgroundColors,
        textColor: textColors != null ? textColors : Colors.white,
        fontSize: 16.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorsCustom.colorBlack,
        child: Column(children: <Widget>[
          Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        alignment: Alignment(-1.0, 0.5),
                        fit: BoxFit.cover,
                        image: AssetImage('assets/background.jpg'))),
              )),
          Expanded(
              flex: 4,
              child: Container(
                child: Column(children: <Widget>[
                  RenderHeader(),
                  Spacer(flex: 2),
                  TextFeildWithIcon(),
                  Spacer(flex: 1),
                  TextFeildWithIcon(),
                  Spacer(flex: 2),
                  RenderFooter(),
                ]),
              )),
        ]),
      ),
    );
  }
}

class RenderHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'SIGN IN',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 45),
            ),
            Container(
              child: GestureDetector(
                onTap: () {
                  Get.find<LoginController>().onPressSignUp();
                },
                child: Text('SIGN UP',
                    style: TextStyle(
                        color: ColorsCustom.primaryColor, fontSize: 18)),
              ),
            ),
          ],
        ));
  }
}

class RenderFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 20, right: 20, bottom: 0),
        child: Row(children: <Widget>[
          ButtonTextIcon(
            onPressButton: () {
              Get.find<LoginController>().onPressLoginWithFb();
            },
          ),
          SizedBox(width: 10),
          ButtonTextIcon(
            onPressButton: () {
              Get.find<LoginController>().onPressLoginWithFb();
            },
          ),
          Spacer(),
          ButtonTextIcon(onPressButton: () {
            Get.find<LoginController>().onPressLogin();
          })
        ]));
  }
}
