import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../theme/utils/my_colors.dart';
import '../main/controllers/main_controller.dart';
import 'controller/home_controller.dart';
import 'widgets/activity_user_widget.dart';
import 'widgets/card_product_item_widget.dart';
import 'widgets/card_promo_item_widget.dart';
import 'widgets/home_gift_box_widget.dart';
import 'widgets/menu_item_widget.dart';
import 'widgets/sliver_appbar_widget.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    MainController mainController = Get.find<MainController>();
    return Obx(
      () => Container(
        color: mainController.isBottomNavBarVisible.value
            ? MyColors.green
            : MyColors.white,
        child: SafeArea(
          child: SizedBox(
            height: 30,
            child: Scaffold(
              backgroundColor: MyColors.green,
              body: Container(
                color: MyColors.white,
                child: CustomScrollView(
                  controller: mainController.scroll,
                  slivers: [
                    SliverAppBarWidget(
                        child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: SvgPicture.asset(
                        'assets/icons/scan.svg',
                        // ignore: deprecated_member_use
                        color: Colors.grey[800],
                      ),
                    )),
                    const SliverToBoxAdapter(
                      child: MenuItemWidget(),
                    ),
                    const SliverToBoxAdapter(
                      child: ActivityUserWidget(),
                    ),
                    const SliverToBoxAdapter(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 16, top: 24),
                            child: Text(
                              "Recommended for you",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          CardProductItemWidget(),
                          Padding(
                            padding: EdgeInsets.only(left: 16, top: 16),
                            child: Text(
                              "Promo special for you",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          CardItemWidget()
                        ],
                      ),
                    ),
                    const SliverToBoxAdapter(
                      child: HomeGiftBoxWidget(),
                    ),
                    SliverToBoxAdapter(
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 16, top: 16, right: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Complete your challenges now",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(height: 16),
                            Container(
                              height: 140,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(width: 0.1),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(12.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SliverToBoxAdapter(
                      child: Padding(
                        padding: EdgeInsets.only(top: 32),
                        child: Center(
                          child: Text(
                            "That's all for now!",
                            style: TextStyle(
                              fontWeight: FontWeight.w200,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
