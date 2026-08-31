import 'package:get/get.dart';
import 'package:myproject/homepage/controller/controller.dart';

class HomepageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomepageController>(
      () => HomepageController(),
    );
  }
}