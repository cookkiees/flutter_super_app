import 'package:flutter/material.dart';
import 'package:flutter_super_app_1/app/modules/home/views/delivery/delivery_page.dart';
import 'package:flutter_super_app_1/app/routes/app_routes.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../theme/utils/my_colors.dart';
import '../../../theme/utils/my_strings.dart';
import '../controller/home_controller.dart';

class MenuItemWidget extends GetView<HomeController> {
  const MenuItemWidget({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 130,
          child: ListView.builder(
            controller: controller.scrollController,
            padding: const EdgeInsets.only(right: 16),
            scrollDirection: Axis.horizontal,
            itemCount: MyStrings.url.length,
            itemBuilder: (context, index) {
              final bool showBanner = index == 0 || index == 4 || index == 6;
              return Padding(
                padding: const EdgeInsets.only(left: 16, top: 16),
                child: Column(
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      onTap: () {
                        (index == 0 || index == 1)
                            ? Get.toNamed(AppRoutes.delivery)
                            : null;
                      },
                      child: Stack(
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: SvgPicture.asset(
                              MyStrings.url[index],
                            ),
                          ),
                          if (showBanner)
                            Positioned(
                              right: 6,
                              top: 6,
                              child: banerDiscount(index),
                            ),
                        ],
                      ),
                    ),
                    Text(MyStrings.name[index])
                  ],
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 32),
          child: Stack(
            children: [
              Container(
                height: 6,
                width: 70,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(3)),
              ),
              AnimatedBuilder(
                animation: controller.animationController!,
                builder: (context, child) {
                  return Obx(
                    () => AnimatedContainer(
                      duration: controller.animationController?.duration ??
                          Duration.zero,
                      width: 20,
                      height: 6,
                      decoration: BoxDecoration(
                        color: AppColors.darkGreen,
                        borderRadius: BorderRadius.circular(3),
                      ),
                      margin: EdgeInsets.only(
                        left: controller.indicatorPosition.value.clamp(0.0, 50),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        )
      ],
    );
  }
}

Widget banerDiscount(int index) {
  return Container(
    height: 20,
    width: 40,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: Colors.red,
      borderRadius: BorderRadius.circular(20),
      border: Border.all(color: AppColors.white, width: 2),
    ),
    child: const Center(
      child: Text(
        'PROMO',
        style: TextStyle(
          color: AppColors.white,
          fontSize: 8,
          fontWeight: FontWeight.w800,
        ),
      ),
    ),
  );
}
