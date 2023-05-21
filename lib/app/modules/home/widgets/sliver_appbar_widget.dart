import 'package:flutter/material.dart';
import 'package:flutter_super_app_1/app/routes/app_routes.dart';
import 'package:get/get.dart';

import '../../../theme/utils/my_colors.dart';
import '../../../theme/utils/my_strings.dart';

class SliverAppBarWidget extends StatelessWidget {
  const SliverAppBarWidget({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: AppColors.green,
      foregroundColor: AppColors.green,
      flexibleSpace: Align(
        alignment: Alignment.bottomCenter,
        child: Container(color: AppColors.white, height: 26),
      ),
      bottom: PreferredSize(
        preferredSize: const Size(double.infinity, 20),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  height: 56,
                  width: 56,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 6,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: child),
              Container(
                width: 330,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 6,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    TextFormField(
                      onTap: () => Get.toNamed(AppRoutes.search),
                      cursorColor: AppColors.green,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(12)),
                        hintText: "Search the ${MyStrings.title} app",
                        hintStyle: const TextStyle(fontWeight: FontWeight.w300),
                        prefixIconColor: AppColors.grey[700],
                        suffixIconColor: AppColors.grey[700],
                        prefixIcon: const Icon(Icons.search, size: 28),
                        suffixIcon: const Padding(
                          padding: EdgeInsets.only(right: 4),
                          child: Icon(Icons.favorite_border, size: 28),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 52,
                      child: Container(
                        width: 1,
                        height: 58,
                        color: Colors.grey[400],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
