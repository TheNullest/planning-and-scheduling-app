import 'package:flutter/material.dart';

class WeekDaysPicker<T> extends StatefulWidget {
  const WeekDaysPicker({
    required this.onChanged,
    required this.values,
    required this.title,
    required this.itemStringFormat,
    super.key,
    this.initialSelected = const {},
  });

  final Set<T> values;
  final String title;
  final String Function(T item) itemStringFormat;
  final Set<T> initialSelected;
  final ValueChanged<Set<T>> onChanged;

  @override
  State<WeekDaysPicker> createState() => _WeekDaysPickerState<T>();
}

class _WeekDaysPickerState<T> extends State<WeekDaysPicker<T>> {
  late Set<T> selected;

  @override
  void initState() {
    super.initState();
    selected = {...widget.initialSelected};
  }

  void _toggle(T item) {
    setState(() {
      if (selected.contains(item)) {
        selected.remove(item);
      } else {
        selected.add(item);
      }
    });
    widget.onChanged(selected);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final effectiveSelectedColor = colorScheme.primary;
    final effectiveColor = colorScheme.surface;
    final effectiveTextColor = colorScheme.onSurface;
    final effectiveSelectedTextColor = colorScheme.onPrimary;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Text(
            widget.title,
            style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w500),
          ),
        ),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: widget.values.map((item) {
            final isSelected = selected.contains(item);
            final label = widget.itemStringFormat(item);

            return _AnimatedButton(
              label: Text(
                label,
                style: TextStyle(
                  color: isSelected ? effectiveSelectedTextColor : effectiveTextColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
              isSelected: isSelected,
              onPressed: () => _toggle(item),
              backgroundColor: effectiveColor,
              selectedColor: effectiveSelectedColor,
              borderRadius: 15,
            );
          }).toList(),
        ),
      ],
    );
  }
}

class _AnimatedButton extends StatelessWidget {
  const _AnimatedButton({
    required this.label,
    required this.isSelected,
    required this.onPressed,
    required this.backgroundColor,
    required this.selectedColor,
    required this.borderRadius,
  });

  final Widget label;
  final bool isSelected;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color selectedColor;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.fastOutSlowIn,
      decoration: BoxDecoration(
        color: isSelected ? selectedColor : backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(
          color: isSelected ? selectedColor : Colors.grey.shade300,
          width: 1.5,
        ),
        boxShadow: isSelected
            ? [
                BoxShadow(
                  color: selectedColor.withAlpha((256 * .3).toInt()),
                  blurRadius: 6,
                  offset: const Offset(0, 2),
                )
              ]
            : null,
      ),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          borderRadius: BorderRadius.circular(borderRadius),
          onTap: onPressed,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 200),
              child: label,
            ),
          ),
        ),
      ),
    );
  }
}
