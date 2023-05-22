import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme/utils/my_colors.dart';
import 'icon_subscription_global_widget.dart';

class GrabUnlimitedWidget extends StatelessWidget {
  const GrabUnlimitedWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      height: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'grab',
                      style: GoogleFonts.zenTokyoZoo(
                        color: MyColors.green,
                        fontSize: 24,
                      ),
                    ),
                    const TextSpan(
                      text: 'Unlimited',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: 4,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 6),
                child: IconSubscritionWidget(),
              )
            ],
          ),
          const SizedBox(height: 32),
          Column(
            children: [
              const Text(
                'Free delivery on every order!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Save up to 600k with GrabUnlimited',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(height: 12),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Colors.orange),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: const Text(
                  'Subcribe now',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
