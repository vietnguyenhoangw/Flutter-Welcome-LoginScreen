import 'package:WelcomeAndLoginScreen/constants/colors.dart';
import 'package:WelcomeAndLoginScreen/constants/colors.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class TextFeildWithIcon extends StatefulWidget {
  @override
  _TextFeildWithIconState createState() => _TextFeildWithIconState();
}

class _TextFeildWithIconState extends State<TextFeildWithIcon> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Row(children: <Widget>[
          Icon(
            Icons.alternate_email_outlined,
            color: ColorsCustom.primaryColor,
          ),
          SizedBox(width: 10),
          Container(
            child: Expanded(
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: "Email Address",
                  hintStyle: TextStyle(color: Colors.white.withOpacity(.5)),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white.withOpacity(.5)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white.withOpacity(.5)),
                  ),
                ),
              ),
            ),
          )
        ]));
  }
}
