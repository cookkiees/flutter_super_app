import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import '../../../theme/utils/my_colors.dart';

class HomeGiftBoxWidget extends StatelessWidget {
  const HomeGiftBoxWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        height: 150,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.blue[50],
          borderRadius: const BorderRadius.all(Radius.circular(12.0)),
        ),
        child: Row(
          children: [
            Flexible(
              child: SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 12, top: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Go on, treat yourselft!',
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          SizedBox(height: 12),
                          Text(
                              'Use the gifts you unwrapped for your eveyday needs.'),
                          SizedBox(height: 24),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 150,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          const Divider(
                            color: MyColors.green,
                            thickness: 4,
                            indent: 12,
                            endIndent: 12,
                          ),
                          StepProgressIndicator(
                            totalSteps: 3,
                            currentStep: 2,
                            size: 28,
                            selectedColor: Colors.black,
                            unselectedColor: Colors.grey[200]!,
                            customStep: (index, color, _) => const CircleAvatar(
                              radius: 28.0,
                              backgroundColor: Colors.green,
                              child: Icon(
                                Icons.check,
                                size: 18,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 150,
              child: LottieBuilder.asset(
                'assets/lottie/gift.json',
              ),
            )
          ],
        ),
      ),
    );
  }
}
