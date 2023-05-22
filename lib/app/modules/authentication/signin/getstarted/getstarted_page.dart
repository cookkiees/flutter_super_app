import 'package:flutter/material.dart';
import 'package:flutter_super_app_1/app/routes/app_routes.dart';

// Import package
import 'package:get/get.dart';

// Import package
import '../../../../components/button_global_widget.dart';
import '../../../../theme/utils/my_colors.dart';
import '../../../../theme/utils/my_strings.dart';
import '../../authentication_controller.dart';

class GetStartedPage extends GetView<AuthenticationController> {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Get Started',
          style: TextStyle(color: MyColors.black),
        ),
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: MyColors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Name'),
                  const SizedBox(height: 8),
                  Obx(() => TextFormField(
                        autofocus: true,
                        showCursor: true,
                        focusNode: controller.focusAddName,
                        controller: controller.inputName,
                        keyboardType: TextInputType.name,
                        cursorColor: MyColors.green,
                        onChanged: (value) => controller.validateInputName(),
                        decoration: InputDecoration(
                          suffixIcon: const Icon(Icons.clear, size: 24),
                          suffixIconColor: MyColors.grey,
                          isDense: false,
                          hintText: 'Enter your name',
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: controller.isValid.value
                                      ? Colors.red
                                      : Colors.grey)),
                          enabledBorder: const UnderlineInputBorder(),
                          disabledBorder: const UnderlineInputBorder(),
                        ),
                      )),
                  const SizedBox(height: 32),
                  MyStrings.privacyAndPolicy
                ],
              ),
              Column(
                children: [
                  Obx(
                    () => ButtonGlobalWidget(
                      label: 'Next',
                      radius: 24,
                      onPressed: controller.isTextFieldFilled.value
                          ? () => Get.offNamed(AppRoutes.main)
                          : null,
                      disabledBackgroundColor:
                          controller.isTextFieldFilled.value
                              ? null
                              : Colors.green[100],
                      backgroundColor: MyColors.green,
                      minimumSize: const Size(double.infinity, 48),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
