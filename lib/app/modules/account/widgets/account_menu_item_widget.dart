import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AccountMenuItemWidget extends StatelessWidget {
  const AccountMenuItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var forMoreValue = [
      'Rewards member',
      'Favourites',
      'Payment methods,',
      'Scheduled',
      'Saved places',
      'Emergency contacts',
      'Business profile',
    ];
    return SliverList.builder(
      itemCount: forMoreValue.length,
      itemBuilder: (ctx, i) {
        return Column(
          children: [
            ListTile(
              onTap: () {},
              dense: true,
              title: Text(
                forMoreValue[i],
                style:
                    const TextStyle(fontWeight: FontWeight.w300, fontSize: 16),
              ),
              trailing: (i == 0)
                  ? SizedBox(
                      height: 30,
                      width: 165,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SvgPicture.asset('assets/icons/rewards.svg'),
                          const Text(
                            "0 OVO Points",
                            style: TextStyle(fontSize: 12.0),
                          ),
                          const SizedBox(width: 12),
                          const Icon(Icons.arrow_forward_ios, size: 18),
                        ],
                      ),
                    )
                  : const Icon(Icons.arrow_forward_ios, size: 18),
            ),
            const Divider(thickness: 1, indent: 16, endIndent: 16)
          ],
        );
      },
    );
  }
}
