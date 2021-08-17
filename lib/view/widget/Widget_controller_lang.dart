import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui/core/view_model/controller/app_language.dart';

class WidgetControllerLang extends StatelessWidget {
  const WidgetControllerLang({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX<AppLanguage>(
        init: AppLanguage(),
        builder: (controller) {
          return DropdownButton(
            items: [
              DropdownMenuItem(
                child: Text("English"),
                value: 'en',
              ),
              DropdownMenuItem(
                child: Text("عربي"),
                value: 'ar',
              ),
            ],
            value: controller.appLocal,
            onChanged: (value) {
              controller.changeLangauge(value);
              Get.updateLocale(Locale(value));
            },
          );
        });
  }
}
