import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:ui/core/helper/binding.dart';
import 'package:ui/view/screens/auth/login_screen.dart';
import 'package:ui/view/utiles/languages/translation.dart';
import 'package:get_storage/get_storage.dart';
import 'view/utiles/themes/themes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  await GetStorage.init();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: Binding(),
      theme: lightTheme,
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      translations: Translation(),
      locale: Locale("en"),
      fallbackLocale: Locale("en"),
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
    );
  }
}
