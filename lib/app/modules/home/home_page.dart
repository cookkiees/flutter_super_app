import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../theme/utils/my_colors.dart';
import '../main/controllers/main_controller.dart';
import 'controller/home_controller.dart';
import 'widgets/home_activity_user_widget.dart';
import '../../components/card_product_item_global_widget.dart';
import 'widgets/home_gift_box_widget.dart';
import 'widgets/home_grab_challenges_widget.dart';
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
                    const SliverToBoxAdapter(
                      child: GrabChallengesWidget(),
                    ),
                    const SliverToBoxAdapter(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 16, top: 24),
                            child: Text(
                              "People love food from",
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
                    SliverToBoxAdapter(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding:
                                EdgeInsets.only(left: 16, top: 24, bottom: 16),
                            child: Text(
                              "Diskon makanan s.d. Rp150rb",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 200,
                            width: double.infinity,
                            child: ListView.builder(
                              itemCount: 3,
                              padding: const EdgeInsets.only(left: 16),
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: const EdgeInsets.only(right: 16),
                                  child: SizedBox(
                                    width: 200,
                                    height: 200,
                                    child: Column(
                                      children: [
                                        Container(
                                          width: double.infinity,
                                          height: 150,
                                          padding: const EdgeInsets.all(16),
                                          decoration: BoxDecoration(
                                            color: Colors
                                                .green[100 * (index + 1 % 8)],
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          child: Image.asset(
                                              'assets/images/grab.png'),
                                        ),
                                        const Flexible(
                                          child: Center(
                                            child: Text(
                                                "Pesan Ramean Pakai Group Order"),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding:
                                EdgeInsets.only(left: 16, top: 24, bottom: 16),
                            child: Text(
                              "Kirim pake Grab banyak diskonnya",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 230,
                            width: double.infinity,
                            child: ListView.builder(
                              itemCount: 3,
                              padding: const EdgeInsets.only(left: 16),
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: const EdgeInsets.only(right: 16),
                                  child: SizedBox(
                                    width: 200,
                                    child: Column(
                                      children: [
                                        Container(
                                          width: double.infinity,
                                          height: 200,
                                          padding: const EdgeInsets.all(16),
                                          decoration: BoxDecoration(
                                            color: Colors
                                                .green[100 * (index + 1 % 8)],
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          child: Image.asset(
                                              'assets/images/grab.png'),
                                        ),
                                        const Flexible(
                                          child: Center(
                                            child: Text(
                                                "Coba GRATIS pake onkir flat"),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          )
                        ],
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
