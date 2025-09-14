import 'package:flutter/material.dart';
import 'package:zamaan/presentation_shared/theme/elementary.dart';

class CustomToggleButtonWidget<T> extends StatelessWidget {
  const CustomToggleButtonWidget({
    required this.onChanged,
    required this.values,
    required this.selectedValue,
    required this.leftTitle,
    required this.rightTitle,
    super.key,
  });

  final ValueChanged<T> onChanged;
  final List<T> values;
  final T selectedValue;
  final String leftTitle;
  final String rightTitle;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isSelectedList = values.map((item) => item == selectedValue).toList();

    return Container(
      decoration: BoxDecoration(
        color: ElementaryColors.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: theme.dividerColor,
        ),
      ),
      child: ToggleButtons(
        isSelected: isSelectedList,
        borderRadius: BorderRadius.circular(12),
        renderBorder: false,
        fillColor: theme.colorScheme.primary.withAlpha((256 * 0.1).toInt()),
        selectedColor: theme.colorScheme.primary,
        color: theme.colorScheme.onSurface.withAlpha((256 * 0.6).toInt()),
        constraints: const BoxConstraints(minHeight: 44, minWidth: 100),
        onPressed: (index) {
          final selected = values[index];
          if (selected != selectedValue) onChanged(selected);
        },
        children: [
          _buildLabel(leftTitle, isSelectedList[0], theme),
          _buildLabel(rightTitle, isSelectedList[1], theme),
        ],
      ),
    );
  }

  Widget _buildLabel(String text, bool isSelected, ThemeData theme) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: isSelected ? ElementaryColors.primary : ElementaryColors.weekdays,
        ),
      ),
    );
  }
}
