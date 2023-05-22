import 'package:flutter/material.dart';

import '../../../theme/utils/my_colors.dart';

class ElevatedButtonIconWidget extends StatelessWidget {
  const ElevatedButtonIconWidget({
    super.key,
    this.onPressed,
    required this.icon,
    required this.label,
    this.backgroundColor = Colors.white,
    this.labelColor = MyColors.black,
    this.foregroundColor,
    this.disabledBackgroundColor,
  });
  final void Function()? onPressed;
  final Widget icon;
  final String label;
  final Color? disabledBackgroundColor;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Color? labelColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: icon,
      style: ElevatedButton.styleFrom(
          elevation: 0,
          disabledBackgroundColor: disabledBackgroundColor,
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          alignment: Alignment.center,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          minimumSize: const Size(double.infinity, 48)),
      label: Text(
        label,
        style: TextStyle(color: labelColor),
      ),
    );
  }
}
