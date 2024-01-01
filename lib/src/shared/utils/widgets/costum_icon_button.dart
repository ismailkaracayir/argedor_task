import 'package:argedor_task/src/constants/padding_const.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final Color iconColor;
  final BuildContext context;

  const CustomIconButton({
    required this.onPressed,
    required this.icon,
    required this.context,
    this.iconColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: onPressed,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: PaddingConstants.defaultPadding,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 30,
              color: iconColor,
            ),
          ],
        ),
      ),
    );
  }
}
