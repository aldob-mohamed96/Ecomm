import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomText extends StatelessWidget {
  final String txt;
  final double fontsize;
  final Color color;
  final Alignment alignment;
  CustomText({
    this.txt = "",
    this.fontsize = 18.0,
    this.color = Colors.black,
    this.alignment = Alignment.topLeft,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: Text(
        txt.tr,
        style: TextStyle(fontSize: fontsize, color: color),
      ),
    );
  }
}
