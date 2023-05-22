import 'package:flutter/material.dart';
import 'package:flutter_super_app_1/app/modules/home/controller/home_controller.dart';
import 'package:flutter_super_app_1/app/routes/app_routes.dart';
import 'package:get/get.dart';

import '../../../theme/utils/my_colors.dart';

class SliverAppBarWidget extends GetView<HomeController> {
  const SliverAppBarWidget({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: MyColors.green,
      foregroundColor: MyColors.green,
      flexibleSpace: Align(
        alignment: Alignment.bottomCenter,
        child: Container(color: MyColors.white, height: 26),
      ),
      bottom: PreferredSize(
        preferredSize: const Size(double.infinity, 20),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  height: 56,
                  width: 56,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 6,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: child),
              const SizedBox(width: 16),
              Flexible(
                child: InkWell(
                  onTap: () {
                    Get.toNamed(AppRoutes.search);
                  },
                  child: Container(
                    height: 56,
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 6,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.search,
                              size: 24.0,
                              color: Colors.grey[800],
                            ),
                            const SizedBox(width: 12),
                            Obx(
                              () => Text(
                                controller.text.value,
                                style: const TextStyle(color: Colors.grey),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const VerticalDivider(thickness: 1),
                            Icon(
                              Icons.favorite_border,
                              size: 24.0,
                              color: Colors.grey[800],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
