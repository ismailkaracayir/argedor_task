import 'package:argedor_task/src/constants/padding_const.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Text text;
  final Color iconColor;
  final BuildContext context;
  final double iconSize;
  const CustomTextButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.context,
    this.iconColor = Colors.white,
    this.iconSize = 30.0,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: PaddingConstants.defaultPadding,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            text,
          ],
        ),
      ),
    );
  }
}
