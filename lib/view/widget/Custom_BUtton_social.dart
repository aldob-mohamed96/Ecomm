import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomButtonSocial extends StatelessWidget {
  final String txt;
  final String imagename;
  final Function onpressed;

  const CustomButtonSocial({Key key, this.txt, this.imagename, this.onpressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.grey.shade100, borderRadius: BorderRadius.circular(12)),
      child: TextButton(
          style: TextButton.styleFrom(
              shape: const BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(18)))),
          onPressed: onpressed,
          child: Row(
            children: [
              Image.asset(
                imagename,
                height: 40,
                width: 40,
              ),
              SizedBox(
                width: 70,
              ),
              CustomText(
                txt: txt,
              )
            ],
          )),
    );
  }
}
