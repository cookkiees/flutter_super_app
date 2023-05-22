import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../../../theme/utils/my_colors.dart';

class OvoCashWidget extends StatelessWidget {
  const OvoCashWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: DottedBorder(
        borderType: BorderType.RRect,
        strokeWidth: 1,
        radius: const Radius.circular(16),
        borderPadding: const EdgeInsets.symmetric(horizontal: 17),
        color: Colors.grey,
        dashPattern: const [2, 2],
        child: Stack(
          children: [
            Container(
              height: 250,
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: MyColors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: const TextSpan(
                      text: 'Actiate',
                      style: TextStyle(color: MyColors.black),
                      children: [
                        TextSpan(
                          text: '\nOVO Cash',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue[50],
                      ),
                      child: InkWell(
                        onTap: () {},
                        child: const Icon(Icons.add, size: 24.0),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
