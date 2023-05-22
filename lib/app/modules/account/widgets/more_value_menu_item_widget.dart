import 'package:flutter/material.dart';
import 'package:flutter_super_app_1/app/routes/app_routes.dart';
import 'package:get/get.dart';

class MoreValueMenuItemWidget extends StatelessWidget {
  const MoreValueMenuItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var forMoreValue = [
      'Rewards',
      'Subcriptions',
      'Challenges',
      'Referrals',
    ];
    return SliverList.builder(
      itemCount: forMoreValue.length,
      itemBuilder: (ctx, i) {
        return Column(
          children: [
            ListTile(
              onTap: () {
                (i == 0) ? Get.toNamed(AppRoutes.rewards) : null;
              },
              dense: true,
              title: Text(
                forMoreValue[i],
                style:
                    const TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, size: 18),
            ),
            const Divider(thickness: 1, indent: 16, endIndent: 16)
          ],
        );
      },
    );
  }
}
