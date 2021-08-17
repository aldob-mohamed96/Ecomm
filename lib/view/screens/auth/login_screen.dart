import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:ui/core/view_model/controller/AuthViewModel.dart';
import 'package:ui/view/widget/Custom_textFromField.dart';

import 'package:ui/view/widget/Widget_controller_lang.dart';
import 'package:ui/view/widget/custom_Button.dart';
import 'package:ui/view/widget/custom_text.dart';

import 'package:ui/core/view_model/controller/app_language.dart';
import '../../utiles/themes/themes.dart';
import '../../widget/Custom_BUtton_social.dart';

class LoginScreen extends GetWidget<AuthViewModel> {
  final AppLanguage appLanguage = new AppLanguage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        actions: [WidgetControllerLang()],
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  txt: "Welcome,",
                  fontsize: 30,
                  color: Colors.black,
                ),
                CustomText(
                  txt: "Sign Up",
                  fontsize: 18,
                  color: text_primary_color,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            CustomText(
              alignment: appLanguage.appLocal == "en"
                  ? Alignment.topLeft
                  : Alignment.topRight,
              txt: "Sign Up to continue",
              fontsize: 14,
              color: Colors.grey,
            ),
            SizedBox(
              height: 30,
            ),
            CustomTextfromfilled(
              alignment: appLanguage.appLocal == "en"
                  ? Alignment.topLeft
                  : Alignment.topRight,
              txt: "Email",
              hint: "ecommercesite@gmail.com",
              onValidetor: (value) {},
              onSave: (value) {},
            ),
            SizedBox(
              height: 40,
            ),
            CustomTextfromfilled(
              alignment: appLanguage.appLocal == "en"
                  ? Alignment.topLeft
                  : Alignment.topRight,
              txt: "Password",
              hint: "***************",
              onValidetor: (value) {},
              onSave: (value) {},
            ),
            SizedBox(
              height: 20,
            ),
            CustomText(
              txt: "Forget Password?",
              fontsize: 14,
              alignment: appLanguage.appLocal == "ar"
                  ? Alignment.topLeft
                  : Alignment.topRight,
            ),
            SizedBox(
              height: 20,
            ),
            CustomButton(
              txt: "Sign IN",
              onPressed: () {
                WidgetControllerLang();
              },
            ),
            SizedBox(
              height: 10,
            ),
            CustomText(
              fontsize: 22,
              alignment: Alignment.center,
              txt: "-OR-",
            ),
            SizedBox(
              height: 10,
            ),
            CustomButtonSocial(
              onpressed: () {
                controller.googleSiginMothed();
              },
              txt: "Sign In With Google",
              imagename: "asset/img/google.png",
            ),
            SizedBox(
              height: 15,
            ),
            CustomButtonSocial(
              onpressed: () {},
              txt: "Sign In With Facebook",
              imagename: "asset/img/facebook.png",
            ),
          ],
        ),
      ),
    );
  }
}
