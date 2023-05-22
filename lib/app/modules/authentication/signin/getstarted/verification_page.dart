import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Import Package
import 'package:get/get.dart';

// Import local
import '../../../../theme/utils/my_colors.dart';
import '../../authentication_controller.dart';

class VerificationPage extends GetView<AuthenticationController> {
  const VerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
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
          alignment: Alignment.topCenter,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: const TextSpan(
                        text: 'Enter the 6-digit code send to ',
                        style: TextStyle(color: MyColors.black),
                        children: <TextSpan>[
                          TextSpan(
                              text: '+ 62 812 123 4567',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: ' by SMS.'),
                        ],
                      ),
                    ),
                    TextFormField(
                      mouseCursor: MouseCursor.defer,
                      autofocus: true,
                      showCursor: true,
                      enabled: true,
                      focusNode: controller.focusVerifi,
                      onChanged: (_) => controller.checkInputValue(),
                      controller: controller.verify,
                      keyboardType: TextInputType.number,
                      cursorColor: MyColors.green,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      style: const TextStyle(
                          letterSpacing: 5,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: MyColors.black),
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          splashRadius: 24,
                          icon: const Icon(Icons.clear, size: 28),
                          color: MyColors.grey,
                          onPressed: () => controller.verify.text = '',
                        ),
                        suffixIconColor: MyColors.grey,
                        hintText: '00000',
                        hintStyle: const TextStyle(
                          fontSize: 32,
                          letterSpacing: 5,
                          color: MyColors.grey,
                        ),
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Didn't receive it?",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  RichText(
                    text: const TextSpan(
                      text: 'Get new code ',
                      style: TextStyle(
                          color: MyColors.grey, fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'or',
                          style: TextStyle(fontWeight: FontWeight.w300),
                        ),
                        TextSpan(text: ' send by WhatsApp'),
                        TextSpan(
                          text: ' in 00:19',
                          style: TextStyle(fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
