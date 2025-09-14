import 'package:flutter/material.dart';
import 'package:zamaan/presentation_shared/theme/elementary.dart';

class SectionWidget extends StatelessWidget {
  const SectionWidget({
    required this.child,
    super.key,
    this.sectionColor,
    this.headerText,
    this.headerIcon,
    this.headerColor,
    this.actionButton,
  });

  final Widget child;
  final Color? sectionColor;
  final String? headerText;
  final IconData? headerIcon;
  final Color? headerColor;
  final VoidCallback? actionButton;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: ElementaryColors.sectionSurface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                processHeaderIcon(),
                if (headerText != null)
                  Text(
                    headerText!,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: headerColor ?? ElementaryColors.secondary.withAlpha(200)),
                  ),
                const Spacer(),
                if (actionButton != null)
                  IconButton(
                    icon: Icon(Icons.add_circle, color: headerColor),
                    onPressed: actionButton,
                    tooltip: headerText,
                  ),
              ],
            ),
            if (headerText != null) const SizedBox(height: 16),
            child
          ],
        ),
      ),
    );
  }

  Widget processHeaderIcon() => headerIcon != null
      ? Row(
          children: [
            Icon(headerIcon,
                size: 20, color: headerColor ?? ElementaryColors.secondary.withAlpha(200)),
            const SizedBox(width: 10),
          ],
        )
      : const SizedBox.shrink();
  Widget processHeaderText(BuildContext context) => headerText != null
      ? const Row(

        )
      : const SizedBox.shrink();
}
