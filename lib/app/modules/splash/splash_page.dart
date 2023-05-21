import 'package:flutter/material.dart';
import 'package:flutter_super_app_1/app/theme/utils/my_strings.dart';
// Import Package
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
// Import Local
import '../../routes/app_routes.dart';
import '../../theme/utils/my_colors.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 1), () {
      Get.offNamed(AppRoutes.onBoarding);
    });
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Container(
        color: AppColors.green,
        width: double.infinity,
        padding: const EdgeInsets.only(top: 100),
        child: Column(
          children: [
            Text(
              MyStrings.title,
              style: GoogleFonts.zenTokyoZoo(
                color: AppColors.white,
                fontSize: 100,
              ),
            ),
            const Text(
              "Your everyday evething App",
              style: TextStyle(color: AppColors.white),
            ),
          ],
        ),
      ),
    );
  }
}
