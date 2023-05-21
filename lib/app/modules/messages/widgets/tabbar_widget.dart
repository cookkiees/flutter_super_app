import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/messages_controller.dart';

class TabBarWidget extends GetView<MessagesController> {
  const TabBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () => controller.changeTabIndex(0),
            child: Container(
              height: 45,
              width: 188,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: (controller.tabIndex.value == 0)
                    ? const Color.fromARGB(255, 28, 96, 58)
                    : Colors.green[50],
                borderRadius: BorderRadius.circular(25),
              ),
              child: Text(
                'Messages',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: (controller.tabIndex.value == 0)
                      ? Colors.green[50]
                      : Colors.green[900],
                ),
              ),
            ),
          ),
          const SizedBox(width: 12),
          InkWell(
            onTap: () => controller.changeTabIndex(1),
            child: Container(
              height: 45,
              width: 188,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: (controller.tabIndex.value == 1)
                    ? const Color.fromARGB(255, 28, 96, 58)
                    : Colors.green[50],
                borderRadius: BorderRadius.circular(25),
              ),
              child: Text(
                'Notifications',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: (controller.tabIndex.value == 1)
                      ? Colors.green[50]
                      : Colors.green[900],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
