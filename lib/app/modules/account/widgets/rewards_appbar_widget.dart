import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../theme/utils/my_colors.dart';

class RewardsAppbarWidget extends StatelessWidget {
  const RewardsAppbarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.1,
      toolbarHeight: 120,
      backgroundColor: MyColors.green,
      automaticallyImplyLeading: false,
      leading: IconButton(
        splashColor: Colors.transparent,
        onPressed: () => Get.back(),
        icon: const Icon(
          Icons.arrow_back_ios,
          size: 24.0,
        ),
      ),
      bottom: PreferredSize(
        preferredSize: const Size(double.infinity, 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 80,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "member",
                          style: GoogleFonts.zenTokyoZoo(
                            color: MyColors.white,
                            fontSize: 50,
                          ),
                        ),
                        const Text(
                          "0 OVO Points",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: MyColors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: MyColors.white,
                      minimumSize: const Size(130, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                    icon: const Icon(
                      Icons.confirmation_num_outlined,
                      size: 24.0,
                      color: MyColors.green,
                    ),
                    label: const Text(
                      'My Rewards',
                      style: TextStyle(
                        color: MyColors.green,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 50,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
              ),
              child: const ListTile(
                dense: true,
                minLeadingWidth: 20,
                leading: CircleAvatar(
                  radius: 12,
                  backgroundColor: MyColors.green,
                  child: Icon(
                    Icons.star,
                    size: 16.0,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  "My Membership Details",
                  style: TextStyle(fontSize: 14),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 24.0,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
