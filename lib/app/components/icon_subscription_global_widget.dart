import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconSubscritionWidget extends StatelessWidget {
  const IconSubscritionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(
          'assets/icons/Sub.svg',
          colorFilter: ColorFilter.mode(
            Colors.red[400]!,
            BlendMode.srcIn,
          ),
        ),
        Positioned(
          top: 2.5,
          child: SvgPicture.asset(
            'assets/icons/Sub.svg',
            colorFilter: ColorFilter.mode(
              Colors.red[300]!,
              BlendMode.srcIn,
            ),
          ),
        ),
        Positioned(
          top: 3,
          child: SvgPicture.asset(
            'assets/icons/Sub.svg',
            colorFilter: ColorFilter.mode(
              Colors.orange[200]!,
              BlendMode.srcIn,
            ),
          ),
        ),
        Positioned(
          top: 3.5,
          child: SvgPicture.asset(
            'assets/icons/Sub.svg',
            colorFilter: ColorFilter.mode(
              Colors.orange[100]!,
              BlendMode.srcIn,
            ),
          ),
        ),
      ],
    );
  }
}
