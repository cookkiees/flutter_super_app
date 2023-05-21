import 'package:get/get.dart';

import '../../main/controllers/main_controller.dart';
import 'account_controller.dart';

class AccountBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AccountController>(() => AccountController());
    Get.lazyPut<MainController>(() => MainController());
  }
}
