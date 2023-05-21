import 'package:flutter/material.dart';

// Import package
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:flutter_svg/svg.dart';

// Import package
import '../../../routes/app_routes.dart';
import '../../../theme/utils/my_colors.dart';
import '../authentication_controller.dart';
import '../widgets/elevated_button_widget.dart';

class SignInWithPhonePage extends GetView<AuthenticationController> {
  const SignInWithPhonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Get Started',
          style: TextStyle(color: AppColors.black),
        ),
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: AppColors.black,
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
                  const Text('Phone Number'),
                  Obx(
                    () => InternationalPhoneNumberInput(
                      formatInput: true,
                      focusNode: controller.focusAddNumber,
                      textFieldController: controller.phone,
                      keyboardType: TextInputType.number,
                      selectorConfig: const SelectorConfig(
                          setSelectorButtonAsPrefixIcon: false,
                          selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                          trailingSpace: false),
                      selectorTextStyle: const TextStyle(fontSize: 14),
                      spaceBetweenSelectorAndTextField: 16,
                      inputDecoration: InputDecoration(
                        hintText: '812 123 4567',
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: controller.isValid.value
                                ? Colors.red
                                : Colors.grey,
                          ),
                        ),
                      ),
                      cursorColor: AppColors.green,
                      countrySelectorScrollControlled: true,
                      initialValue: PhoneNumber(dialCode: '+62', isoCode: 'ID'),
                      onInputChanged: (_) => controller.validatePhoneNumber(),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Send me a',
                      style: TextStyle(color: Colors.grey[900]),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' verification code',
                          style: TextStyle(
                              color: Colors.grey[900],
                              fontWeight: FontWeight.w700),
                        ),
                        TextSpan(
                          text: ' through',
                          style: TextStyle(color: Colors.grey[900]),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  Obx(() => ElevatedButtonIconWidget(
                        onPressed: controller.isTextFieldFilled.value
                            ? () => Get.toNamed(AppRoutes.verify)
                            : null,
                        icon: Opacity(
                          opacity: 0.7,
                          child: SvgPicture.asset('assets/icons/whatsapp.svg'),
                        ),
                        label: 'Whatsapp',
                        labelColor: AppColors.white,
                        disabledBackgroundColor:
                            controller.isTextFieldFilled.value
                                ? null
                                : Colors.green[100],
                        backgroundColor: AppColors.green,
                      )),
                  const SizedBox(height: 16),
                  Obx(
                    () => ElevatedButtonIconWidget(
                      onPressed: controller.isTextFieldFilled.value
                          ? () => Get.toNamed(AppRoutes.verify)
                          : null,
                      icon: Opacity(
                        opacity: 0.7,
                        child: Icon(Icons.chat, color: Colors.green[900]),
                      ),
                      label: 'SMS',
                      labelColor: Colors.green[900],
                      backgroundColor: Colors.green[50],
                      disabledBackgroundColor:
                          controller.isTextFieldFilled.value
                              ? null
                              : Colors.green[5],
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
