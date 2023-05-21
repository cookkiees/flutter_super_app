import 'package:get/get.dart';

import '../../main/controllers/main_controller.dart';
import 'activity_controller.dart';

class ActivityBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ActivityController>(() => ActivityController());
    Get.lazyPut<MainController>(() => MainController());
  }
}
