import 'package:flutter/material.dart';
import 'package:flutter_super_app_1/app/theme/utils/my_colors.dart';
import 'package:get/get.dart';

import 'controllers/account_controller.dart';
import 'widgets/account_header_widget.dart';
import 'widgets/account_banner_widget.dart';
import 'widgets/account_menu_item_widget.dart';
import 'widgets/general_menu_item_widget.dart';
import 'widgets/more_value_menu_item_widget.dart';
import 'widgets/opportunities_menu_item_widget.dart';

class AccountPage extends GetView<AccountController> {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: AccountHeaderWidget(),
            ),
            SliverToBoxAdapter(
              child: AccountBanner(),
            ),
            SliverPadding(
              padding: EdgeInsets.only(left: 16, top: 32, bottom: 16),
              sliver: SliverToBoxAdapter(
                child: Text(
                  'For more value',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
              ),
            ),
            MoreValueMenuItemWidget(),
            //
            SliverPadding(
              padding: EdgeInsets.only(left: 16, top: 32, bottom: 16),
              sliver: SliverToBoxAdapter(
                child: Text(
                  'My Account',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
              ),
            ),
            AccountMenuItemWidget(),
            //
            SliverPadding(
              padding: EdgeInsets.only(left: 16, top: 32, bottom: 16),
              sliver: SliverToBoxAdapter(
                child: Text(
                  'General',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
              ),
            ),
            GeneralMenuItemWidget(),
            //
            SliverPadding(
              padding: EdgeInsets.only(left: 16, top: 32, bottom: 24),
              sliver: SliverToBoxAdapter(
                child: Text(
                  'Opportunities',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
              ),
            ),
            OpportunitiesMenuItemWidget()
          ],
        ),
      ),
    );
  }
}
