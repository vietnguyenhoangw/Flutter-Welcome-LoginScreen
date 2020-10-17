import 'package:flutter/material.dart';

// constants
import '../constants/colors.dart';

class LoginScreen extends StatefulWidget {
  @override
  LoginScreenState createState() {
    return new LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: backgroundColor,
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
                  Container(
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
                          Text('SIGN UP',
                              style:
                                  TextStyle(color: primaryColor, fontSize: 18))
                        ],
                      )),
                  Spacer(flex: 2),
                  Container(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Row(children: <Widget>[
                        Icon(
                          Icons.alternate_email_outlined,
                          color: primaryColor,
                        ),
                        SizedBox(width: 10),
                        Container(
                          child: Expanded(
                            child: TextField(
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                hintText: "Email Address",
                                hintStyle: TextStyle(
                                    color: Colors.white.withOpacity(.5)),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white.withOpacity(.5)),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white.withOpacity(.5)),
                                ),
                              ),
                            ),
                          ),
                        )
                      ])),
                  Spacer(flex: 1),
                  Container(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Row(children: <Widget>[
                        Icon(
                          Icons.fiber_pin_sharp,
                          color: primaryColor,
                        ),
                        SizedBox(width: 10),
                        Container(
                          child: Expanded(
                            child: TextField(
                              obscureText: true,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                hintText: "Password",
                                hintStyle: TextStyle(
                                    color: Colors.white.withOpacity(.5)),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white.withOpacity(.5)),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white.withOpacity(.5)),
                                ),
                              ),
                            ),
                          ),
                        )
                      ])),
                  Spacer(flex: 2),
                  Container(
                      padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                      child: Row(children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            print('login with facebook');
                          },
                          child: Container(
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.white.withOpacity(.5),
                              ),
                            ),
                            child: Container(
                              width: 24,
                              child: Image(
                                color: Colors.white,
                                image: AssetImage('assets/facebook.png'),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {
                            print('login with google');
                          },
                          child: Container(
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.white.withOpacity(.5),
                              ),
                            ),
                            child: Container(
                              width: 24,
                              child: Image(
                                image: AssetImage('assets/google.png'),
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            print('signin');
                          },
                          child: Container(
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: primaryColor,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.arrow_forward,
                              color: Colors.black,
                            ),
                          ),
                        )
                      ]))
                ]),
              )),
        ]),
      ),
    );
  }
}
