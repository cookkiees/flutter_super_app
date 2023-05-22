import 'package:flutter/material.dart';

// Import Package
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

// Import Local
import '../../routes/app_routes.dart';
import '../../theme/utils/my_colors.dart';
import '../../theme/utils/my_strings.dart';
import 'widgets/elevated_button_widget.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.green,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: SafeArea(
        child: Container(
          color: MyColors.green,
          width: double.infinity,
          padding: const EdgeInsets.only(top: 48, left: 16, right: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    MyStrings.title,
                    style: GoogleFonts.zenTokyoZoo(
                        color: MyColors.white, fontSize: 90),
                  ),
                  const Text(
                    "Your everyday evething App",
                    style: TextStyle(color: MyColors.white),
                  ),
                ],
              ),
              Column(
                children: [
                  ElevatedButtonIconWidget(
                    label: 'Continue with Facebook',
                    onPressed: () {},
                    icon: SvgPicture.asset('assets/icons/facebook.svg'),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButtonIconWidget(
                    label: 'Continue with Google',
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      'assets/icons/google.svg',
                      height: 28,
                    ),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButtonIconWidget(
                    label: 'Continue with Apple',
                    onPressed: () {},
                    icon: const Icon(
                      Icons.apple,
                      color: Colors.black,
                      size: 28,
                    ),
                  ),
                  const SizedBox(height: 32),
                  const Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: MyColors.white,
                          thickness: 1.5,
                          endIndent: 16,
                          indent: 8,
                        ),
                      ),
                      Text(
                        'or',
                        style: TextStyle(color: MyColors.white),
                      ),
                      Expanded(
                        child: Divider(
                          color: MyColors.white,
                          thickness: 1.5,
                          indent: 16,
                          endIndent: 8,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  ElevatedButtonIconWidget(
                    label: 'Continue with Mobile number',
                    onPressed: () => Get.toNamed(AppRoutes.signInPhone),
                    icon: const Icon(
                      Icons.phone,
                      color: Colors.black,
                      size: 28,
                    ),
                  ),
                  const SizedBox(height: 32),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
