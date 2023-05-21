import 'package:flutter/material.dart';

class ButtonGlobalWidget extends StatelessWidget {
  const ButtonGlobalWidget({
    super.key,
    this.onPressed,
    this.onFocusChange,
    this.onHover,
    this.onLongPress,
    this.focusNode,
    this.borderColor = Colors.transparent,
    this.backgroundColor,
    this.elevation,
    this.borderWidth = 0,
    this.radius = 0,
    this.label = 'Elevated Button',
    this.labelStyle = const TextStyle(fontStyle: FontStyle.italic),
    this.minimumSize,
    this.padding,
    this.disabledBackgroundColor,
  });
  final void Function()? onPressed;
  final void Function(bool)? onFocusChange;
  final void Function(bool)? onHover;
  final void Function()? onLongPress;
  final FocusNode? focusNode;
  final Color borderColor;
  final Color? backgroundColor;
  final Color? disabledBackgroundColor;
  final double? elevation;
  final double borderWidth;
  final double radius;
  final Size? minimumSize;
  final String label;
  final TextStyle? labelStyle;
  final EdgeInsetsGeometry? padding;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onFocusChange: onFocusChange,
      onHover: onHover,
      onLongPress: onLongPress,
      onPressed: onPressed,
      focusNode: focusNode,
      style: ElevatedButton.styleFrom(
        padding: padding,
        elevation: elevation,
        disabledBackgroundColor: disabledBackgroundColor,
        shape: RoundedRectangleBorder(
            side: BorderSide(color: borderColor, width: borderWidth),
            borderRadius: BorderRadius.circular(radius)),
        backgroundColor: backgroundColor,
        minimumSize: minimumSize,
      ),
      child: Text(label, style: labelStyle),
    );
  }
}
