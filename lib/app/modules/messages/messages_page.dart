import 'package:flutter/material.dart';
import 'package:flutter_super_app_1/app/theme/utils/my_colors.dart';
import 'package:get/get.dart';

import 'controllers/messages_controller.dart';
import 'widgets/tabbar_widget.dart';

class MessagesPage extends GetView<MessagesController> {
  const MessagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: MyColors.white,
        title: const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Messages',
            style: TextStyle(
              fontSize: 24,
              color: MyColors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        bottom: const PreferredSize(
          preferredSize: Size(double.infinity, 60),
          child: TabBarWidget(),
        ),
      ),
      body: Obx(
        () {
          if (controller.tabIndex.value == 0) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Find your chats with our support specialists her!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(height: 12),
                  RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                        text: "Your can also get help form them via our",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' Help\nCentre',
                            style: TextStyle(color: MyColors.green),
                          )
                        ]),
                  )
                ],
              ),
            );
          } else {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                        text: "Notifications will appear here",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text:
                                ' \n\nWatch this space for offers,updates,and more',
                            style: TextStyle(
                              color: MyColors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ]),
                  )
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
