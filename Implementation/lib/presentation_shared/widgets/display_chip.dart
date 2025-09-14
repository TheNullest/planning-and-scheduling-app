import 'package:flutter/material.dart';

/// Simple read-only chip for displaying a category name,
/// with optional icon and background color.
///
/// [title] is required. [icon] and [color] are optional.
/// When [color] is null it uses [Theme.of(context).chipTheme.backgroundColor].
/// Foreground (text/icon) color is automatically chosen for contrast.
class DisplayChip extends StatelessWidget {
  const DisplayChip({
    required this.title, super.key,
    this.icon,
    this.color,
  });

  final String title;
  final IconData? icon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final bgColor = color ?? Theme.of(context).chipTheme.backgroundColor;

    // Estimate readable foreground color
    final brightness = ThemeData.estimateBrightnessForColor(bgColor!);
    final foreground = brightness == Brightness.dark ? Colors.white : Colors.black87;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 6),
      child: Material(
        color: bgColor,
        elevation: 1,
        borderRadius: BorderRadius.circular(24),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (icon != null) ...[
                Icon(icon, size: 20, color: foreground),
                const SizedBox(width: 8),
              ],
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: foreground,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
