import 'package:get/get.dart';
import 'package:ui/core/view_model/controller/AuthViewModel.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthViewModel());
  }
}
