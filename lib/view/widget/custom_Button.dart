import 'package:flutter/material.dart';
import 'custom_text.dart';
import 'package:get/get.dart';

class CustomButton extends StatelessWidget {
  final Function onPressed;
  final String txt;

  const CustomButton({Key key, this.onPressed, this.txt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
            backgroundColor: Colors.green[400],
            padding: EdgeInsets.all(10.0),
            shape: const BeveledRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5)))),
        onPressed: onPressed,
        child: CustomText(
          alignment: Alignment.center,
          txt: txt.tr,
          color: Colors.white,
        ));
  }
}
