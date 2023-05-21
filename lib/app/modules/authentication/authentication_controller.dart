import 'package:flutter/material.dart';
import 'package:flutter_super_app_1/app/routes/app_routes.dart';
import 'package:get/get.dart';

class AuthenticationController extends GetxController
    with WidgetsBindingObserver {
  final TextEditingController verify = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController inputName = TextEditingController();

  final RxBool isTextFieldFilled = false.obs;
  final RxBool isValid = false.obs;
  void validatePhoneNumber() {
    isTextFieldFilled.value = phone.text.isNotEmpty;
    isValid.value = phone.text.length < 5;
  }

  void validateInputName() {
    isTextFieldFilled.value = inputName.text.isNotEmpty;
    isValid.value = inputName.text.length < 4;
  }

  void checkInputValue() {
    if (verify.text.length == 5) {
      // Navigasi ke halaman berikutnya
      Get.toNamed(AppRoutes.getStarted);
    }
  }

  final FocusNode focusAddNumber = FocusNode();
  final FocusNode focusVerifi = FocusNode();
  final FocusNode focusAddName = FocusNode();
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      // Setelah kembali ke aplikasi dari background, munculkan keyboard
      Future.microtask(() {
        FocusScope.of(Get.context!).requestFocus(focusAddNumber);
      });
    }
  }

  @override
  void onReady() {
    super.onReady();
    Future.microtask(() {
      FocusScope.of(Get.context!).requestFocus(focusAddNumber);
    });
  }

  @override
  void onInit() {
    super.onInit();

    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void onClose() {
    WidgetsBinding.instance.removeObserver(this);
    verify.dispose();
    super.onClose();
  }
}
