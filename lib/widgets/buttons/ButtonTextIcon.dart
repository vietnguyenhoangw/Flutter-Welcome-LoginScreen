import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// constants
import '../../constants/colors.dart';

class ButtonTextIcon extends StatefulWidget {
  final GestureTapCallback onPressButton;
  final String btnTitle;

  ButtonTextIcon({this.onPressButton, this.btnTitle});

  @override
  _ButtonTextIconState createState() => _ButtonTextIconState();
}

class _ButtonTextIconState extends State<ButtonTextIcon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FittedBox(
          child: GestureDetector(
        onTap: () {
          widget.onPressButton();
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: ColorsCustom.primaryColor,
          ),
          margin: EdgeInsets.only(bottom: 25),
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Row(
            children: [
              widget.btnTitle != null
                  ? Row(
                      children: [
                        RichText(
                            text: TextSpan(children: <TextSpan>[
                          TextSpan(
                              text: widget.btnTitle,
                              style: TextStyle(
                                  color: ColorsCustom.colorBlack,
                                  fontWeight: FontWeight.bold))
                        ])),
                        SizedBox(width: 10),
                      ],
                    )
                  : Container(),
              Icon(
                Icons.arrow_forward,
                color: ColorsCustom.colorBlack,
              )
            ],
          ),
        ),
      )),
    );
  }
}
