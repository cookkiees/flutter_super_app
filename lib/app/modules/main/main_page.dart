import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_super_app_1/app/theme/utils/my_colors.dart';
import 'package:get/get.dart';

import '../../routes/app_routes.dart';
import 'controllers/main_controller.dart';

class MainPage extends GetView<MainController> {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: Obx(
        () => IndexedStack(
          index: controller.pageIndex.value,
          children: [
            (controller.isLoading.value)
                ? const Center(
                    child: CupertinoActivityIndicator(color: MyColors.green))
                : GetRouterOutlet(
                    anchorRoute: AppRoutes.home,
                    initialRoute: AppRoutes.home,
                    filterPages: (pages) {
                      return pages
                          .where((page) => page.name.startsWith('/home'))
                          .toList();
                    },
                  ),
            (controller.isLoading.value)
                ? const Center(
                    child: CupertinoActivityIndicator(color: MyColors.green))
                : GetRouterOutlet(
                    anchorRoute: AppRoutes.activity,
                    initialRoute: AppRoutes.activity,
                    filterPages: (pages) {
                      return pages
                          .where((page) => page.name.startsWith('/activity'))
                          .toList();
                    },
                  ),
            (controller.isLoading.value)
                ? const Center(
                    child: CupertinoActivityIndicator(color: MyColors.green))
                : GetRouterOutlet(
                    anchorRoute: AppRoutes.payment,
                    initialRoute: AppRoutes.payment,
                    filterPages: (pages) {
                      return pages
                          .where((page) => page.name.startsWith('/payment'))
                          .toList();
                    },
                  ),
            (controller.isLoading.value)
                ? const Center(
                    child: CupertinoActivityIndicator(color: MyColors.green))
                : GetRouterOutlet(
                    anchorRoute: AppRoutes.messages,
                    initialRoute: AppRoutes.messages,
                    filterPages: (pages) {
                      return pages
                          .where((page) => page.name.startsWith('/messages'))
                          .toList();
                    },
                  ),
            (controller.isLoading.value)
                ? const Center(
                    child: CupertinoActivityIndicator(color: MyColors.green))
                : GetRouterOutlet(
                    anchorRoute: AppRoutes.account,
                    initialRoute: AppRoutes.account,
                    filterPages: (pages) {
                      return pages
                          .where((page) => page.name.startsWith('/account'))
                          .toList();
                    },
                  )
          ],
        ),
      ),
      bottomNavigationBar: Obx(
        () => SafeArea(
          top: false,
          child: Theme(
            data: ThemeData(splashColor: Colors.transparent),
            child: Visibility(
              visible: controller.isScrollVisible.value,
              child: BottomNavigationBar(
                currentIndex: controller.pageIndex.value,
                onTap: controller.onTabSelected,
                showSelectedLabels: true,
                showUnselectedLabels: true,
                type: BottomNavigationBarType.fixed,
                backgroundColor: MyColors.white,
                elevation: 0.1,
                iconSize: 26,
                unselectedFontSize: 14,
                selectedFontSize: 15,
                unselectedLabelStyle:
                    const TextStyle(fontWeight: FontWeight.w300),
                selectedLabelStyle:
                    const TextStyle(fontWeight: FontWeight.w500),
                unselectedItemColor: Colors.grey[500],
                selectedItemColor: MyColors.green,
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.explore_outlined),
                    activeIcon: Icon(Icons.explore),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.receipt_long_outlined),
                    activeIcon: Icon(Icons.receipt_long),
                    label: 'Acticity',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.monetization_on_outlined),
                    activeIcon: Icon(Icons.monetization_on),
                    label: 'Payment',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.chat_outlined),
                    activeIcon: Icon(Icons.chat),
                    label: 'Messages',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.account_circle_outlined),
                    activeIcon: Icon(Icons.account_circle),
                    label: 'Account',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
