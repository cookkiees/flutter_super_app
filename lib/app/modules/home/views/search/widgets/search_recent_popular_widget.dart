import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../search_controller.dart';

class SearchRecentPopularWidget extends GetView<SearchPageController> {
  const SearchRecentPopularWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var title = [
      'Mixue',
      'Nasi goreng',
      'Ifu mie',
      'Bubur',
      'Buah',
      'Bakso',
      'Pisang',
    ];
    return Obx(
      () => Wrap(
        spacing: 12,
        runSpacing: 8,
        children: [
          ...List.generate(
            (controller.isExpanded.value) ? title.length : 5,
            (index) => ElevatedButton.icon(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: Colors.orange[50],
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(24),
                  ),
                ),
              ),
              icon: const Icon(
                Icons.trending_up,
                size: 24,
                color: Colors.orange,
              ),
              label: Text(
                title[index],
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[900],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 6),
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                shape: BoxShape.circle,
              ),
              child: Obx(
                () => InkWell(
                  onTap: () => controller.toggleExpanded(),
                  child: controller.isExpanded.value == true
                      ? const Icon(
                          Icons.keyboard_arrow_up,
                          size: 24.0,
                        )
                      : const Icon(
                          Icons.keyboard_arrow_down,
                          size: 24.0,
                        ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
