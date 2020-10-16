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
                child: Column(
                  children: <Widget>[
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
                  Container(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        children: <Widget>[
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
                                hintStyle: TextStyle(color: Colors.white),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        )
                      ])),
                  Container(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        children: <Widget>[
                        Icon(
                          Icons.fiber_pin_sharp,
                          color: primaryColor,
                        ),
                        SizedBox(width: 10),
                        Container(
                          child: Expanded(
                            child: TextField(
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                hintText: "Password",
                                hintStyle: TextStyle(color: Colors.white),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        )
                      ])),
                  Spacer(),
                  Container(
                      padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                      child: Row(children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            print('123');
                          },
                          child: Container(
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.white.withOpacity(.5),
                              ),
                            ),
                            child: Icon(
                              Icons.android,
                              color: Colors.white.withOpacity(.5),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {
                            print('123');
                          },
                          child: Container(
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.white.withOpacity(.5),
                              ),
                            ),
                            child: Icon(
                              Icons.android,
                              color: Colors.white.withOpacity(.5),
                            ),
                          ),
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            print('123');
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
