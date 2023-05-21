import 'package:get/get.dart';

import '../../main/controllers/main_controller.dart';
import 'payment_controller.dart';

class PaymentBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PaymentController>(() => PaymentController());
    Get.lazyPut<MainController>(() => MainController());
  }
}
