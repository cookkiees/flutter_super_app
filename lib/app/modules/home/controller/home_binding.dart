import 'package:flutter_super_app_1/app/data/services/api_service.dart';
import 'package:get/get.dart';
import '../../main/controllers/main_controller.dart';
import '../views/delivery/delivery_controller.dart';
import '../views/search/search_controller.dart';
import 'home_controller.dart';
import 'home_interactor.dart';
import 'home_worker.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ApiService>(() => ApiService());
    Get.lazyPut<HomeWorker>(() => HomeWorker());
    Get.lazyPut<HomeInteractor>(() => HomeInteractor());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<SearchPageController>(() => SearchPageController());
    Get.lazyPut<DeliveryController>(() => DeliveryController());
    Get.lazyPut<MainController>(() => MainController());
  }
}
