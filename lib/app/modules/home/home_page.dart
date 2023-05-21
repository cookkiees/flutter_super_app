import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../theme/utils/my_colors.dart';
import 'controller/home_controller.dart';
import 'widgets/activity_user_widget.dart';
import 'widgets/card_product_item_widget.dart';
import 'widgets/card_promo_item_widget.dart';
import 'widgets/menu_item_widget.dart';
import 'widgets/sliver_appbar_widget.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBarWidget(
            child: Icon(
              Icons.qr_code_2,
              size: 28,
              color: AppColors.grey[700],
            ),
          ),
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
          )
        ],
      ),
    );
  }
}
