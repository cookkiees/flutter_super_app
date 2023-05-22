import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../theme/utils/my_colors.dart';
import '../main/controllers/main_controller.dart';
import 'controller/home_controller.dart';
import 'widgets/home_activity_user_widget.dart';
import '../../components/card_product_item_global_widget.dart';
import 'widgets/home_gift_box_widget.dart';
import 'widgets/home_menu_item_widget.dart';
import 'widgets/home_appbar_widget.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    MainController mainController = Get.find<MainController>();
    return Obx(
      () => Container(
        color: mainController.isScrollVisible.value
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
                    HomeAppBarWidget(
                        child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: SvgPicture.asset(
                        'assets/icons/scan.svg',
                        // ignore: deprecated_member_use
                        color: Colors.grey[800],
                      ),
                    )),
                    const SliverToBoxAdapter(
                      child: HomeMenuItemWidget(),
                    ),
                    const SliverToBoxAdapter(
                      child: HomeActivityUserWidget(),
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
                          CardProductItemGlobalWidget(),
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
                              height: 120,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(width: 0.1),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(12.0),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    width: 100,
                                    height: double.infinity,
                                    alignment: Alignment.topCenter,
                                    padding: const EdgeInsets.all(14),
                                    child: CircleAvatar(
                                      radius: 24,
                                      backgroundColor: Colors.green[50],
                                      child: const Icon(
                                        Icons.card_giftcard,
                                        size: 32,
                                        color: Colors.green,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      height: double.infinity,
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 18),
                                      child: const Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Win GrabGifts Food!",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14,
                                            ),
                                          ),
                                          SizedBox(height: 12),
                                          Text(
                                            "Ends on 31 May 2023",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12,
                                                color: Colors.grey),
                                          ),
                                          SizedBox(height: 12),
                                          Text(
                                            "Accept this Challenge",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 12,
                                                color: Colors.blue),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
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
