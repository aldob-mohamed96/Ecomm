import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:ui/view/utiles/local_storage/local_storge.dart';

class AppLanguage extends GetxController {
  var appLocal = 'en'; //app lang

  @override
  void onInit() async {
    super.onInit();

    LocalStorage localStorage = LocalStorage();

    appLocal = await localStorage.langaugeSelected == null
        ? 'en'
        : await localStorage.langaugeSelected;
    Get.updateLocale(Locale(appLocal));
    update();
  }

  void changeLangauge(String type) async {
    LocalStorage localStorage = LocalStorage();
    if (appLocal == type) {
      return;
    }
    if (type == 'en') {
      appLocal = 'en';

      localStorage.savelanguageToDisk("en");
    } else {
      appLocal = 'ar';
      localStorage.savelanguageToDisk("ar");
    }
    update();
  }
}
