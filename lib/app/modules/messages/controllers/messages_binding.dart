import 'package:get/get.dart';

import '../../main/controllers/main_controller.dart';
import 'messages_controller.dart';

class MessagesBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MessagesController>(() => MessagesController());
    Get.lazyPut<MainController>(() => MainController());
  }
}
