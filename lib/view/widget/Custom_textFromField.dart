import 'package:flutter/material.dart';
import 'custom_text.dart';
import 'package:get/get.dart';

class CustomTextfromfilled extends StatelessWidget {
  final String txt;
  final String hint;
  final Function onSave;
  final Function onValidetor;
  final Alignment alignment;

  const CustomTextfromfilled(
      {Key key,
      this.txt,
      this.hint,
      this.onSave,
      this.onValidetor,
      this.alignment})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        CustomText(
          alignment: alignment,
          txt: txt.tr,
          fontsize: 14,
          color: Colors.grey.shade900,
        ),
        TextFormField(
          onSaved: onSave,
          validator: onValidetor,
          decoration: InputDecoration(
              fillColor: Colors.white,
              hintText: hint,
              hintStyle: TextStyle(color: Colors.grey.shade800)),
        ),
      ],
    ));
  }
}
