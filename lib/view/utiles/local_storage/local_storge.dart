import 'package:get_storage/get_storage.dart';

class LocalStorage {
  //write to disk
  void savelanguageToDisk(String langauge) async {
    await GetStorage().write("lang", langauge);
  }

  //read langage from storage that saved on disk to decied the app lanagauge
  Future<String> get langaugeSelected async {
    return await GetStorage().read("lang");
  }
}
