import 'package:flutter/material.dart';

// Import Package
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

// Import Local
import '../../components/button_global_widget.dart';
import '../../routes/app_routes.dart';
import '../../theme/utils/my_colors.dart';
import '../../theme/utils/my_strings.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(top: 100),
            color: AppColors.green,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      MyStrings.title,
                      style: GoogleFonts.zenTokyoZoo(
                        color: AppColors.white,
                        fontSize: 100,
                      ),
                    ),
                  ],
                ),
                const Text(
                  "Your everyday evething App",
                  style: TextStyle(color: AppColors.white),
                ),
                Image.asset('assets/images/delivery.png'),
                const SizedBox(height: 48),
                ClipPath(
                  clipper: WaveClipperTwo(reverse: true),
                  child: Container(
                    height: 230,
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 16),
                    decoration: const BoxDecoration(color: AppColors.white),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ButtonGlobalWidget(
                          onPressed: () =>
                              Get.toNamed(AppRoutes.authentication),
                          label: 'Sign in',
                          radius: 25,
                          elevation: 0,
                          minimumSize: const Size(double.infinity, 48),
                          backgroundColor: AppColors.green,
                        ),
                        const SizedBox(height: 16),
                        ButtonGlobalWidget(
                          onPressed: () => Get.toNamed(AppRoutes.signInPhone),
                          label: 'New to Grab? Sign up!',
                          radius: 25,
                          elevation: 0,
                          labelStyle: TextStyle(color: Colors.green[900]),
                          minimumSize: const Size(double.infinity, 48),
                          backgroundColor: Colors.green[50],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
