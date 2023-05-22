import 'package:flutter/material.dart';

class OpportunitiesMenuItemWidget extends StatelessWidget {
  const OpportunitiesMenuItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var forMoreValue = [
      'Support the environment',
      'Drive with grab',
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
