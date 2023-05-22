import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../theme/utils/my_colors.dart';
import '../../main/controllers/main_controller.dart';

class ActivityUserWidget extends StatelessWidget {
  const ActivityUserWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    MainController mainControllrer = Get.put(MainController());
    return SizedBox(
      height: 60,
      child: ListView.builder(
        itemCount: 3,
        padding: const EdgeInsets.only(left: 16),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, i) {
          return InkWell(
            splashColor: Colors.transparent,
            onTap: () {
              (i == 0) ? mainControllrer.onTabSelected(2) : null;
            },
            child: Container(
              height: 80,
              width: 160,
              margin: const EdgeInsets.only(right: 16),
              padding: const EdgeInsets.only(top: 4, left: 8),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    strutStyle: const StrutStyle(leading: 0.6),
                    text: TextSpan(
                      text: (i == 0)
                          ? 'Activty '
                          : (i == 1)
                              ? 'Invite friends'
                              : 'Points',
                      style:
                          const TextStyle(color: MyColors.black, fontSize: 14),
                      children: <TextSpan>[
                        TextSpan(
                          text: (i == 0)
                              ? '\nOVO'
                              : (i == 1)
                                  ? '\nBe Rewarded'
                                  : '\n0',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: SvgPicture.asset(
                      (i == 0)
                          ? "assets/icons/ovo.svg"
                          : (i == 1)
                              ? "assets/icons/hand.svg"
                              : "assets/icons/rewards.svg",
                      height: 45,
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
