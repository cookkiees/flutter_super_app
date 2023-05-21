import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../theme/utils/my_colors.dart';
import '../../../../../theme/utils/my_strings.dart';

class SearchAppBarWidget extends StatelessWidget {
  const SearchAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leadingWidth: 40,
      toolbarHeight: 80,
      leading: Padding(
        padding: const EdgeInsets.only(left: 12),
        child: IconButton(
          splashColor: Colors.transparent,
          onPressed: () => Get.back(),
          icon:
              const Icon(Icons.arrow_back_ios, size: 24.0, color: Colors.black),
        ),
      ),
      title: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Your location',
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
          SizedBox(height: 4),
          Row(
            children: [
              Icon(
                Icons.location_on,
                size: 24.0,
                color: Colors.red,
              ),
              Text(
                "Velo city",
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
            ],
          ),
        ],
      ),
      bottom: PreferredSize(
        preferredSize: const Size(double.infinity, 40),
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
          child: SizedBox(
            height: 50,
            child: TextField(
              cursorColor: AppColors.green,
              decoration: InputDecoration(
                filled: true,
                isDense: true,
                fillColor: Colors.grey[100],
                hintText: 'Search the ${MyStrings.title} app',
                hintStyle: const TextStyle(color: Colors.grey),
                prefixIconColor: AppColors.grey,
                prefixIcon: const Icon(Icons.search, size: 24),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
