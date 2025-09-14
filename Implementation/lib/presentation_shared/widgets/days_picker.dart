import 'package:flutter/material.dart';
import 'package:zamaan/core/extensions/num.dart';
import 'package:zamaan/domain/enums/hive/day_type.dart';
import 'package:zamaan/domain/enums/hive/week_day.dart';

/// A widget for picking days either from weekdays (Mon–Sun)
/// or month days (1–31). Supports both single and multi-selection.
class DaysPicker<T> extends StatefulWidget {
  const DaysPicker({
    this.onChangedMulti,
    this.onChangedSingle,
    this.multiSelect = true,
    super.key,
    this.initialMultiSelected = const {},
    this.initialSelected,
    this.dayType = DayType.weekDay,
    this.title,
  });

  /// If true, allows multiple selections. Otherwise only one day can be picked.
  final bool multiSelect;

  /// Determines whether the picker shows weekdays or month days.
  final DayType dayType;

  /// Initially selected items when [multiSelect] is true.
  final Set<T> initialMultiSelected;

  /// Initially selected item when [multiSelect] is false.
  final T? initialSelected;

  /// Callback when the selected items change in multi-select mode.
  final ValueChanged<Set<T>>? onChangedMulti;

  /// Callback when the selected item changes in single-select mode.
  final ValueChanged<T?>? onChangedSingle;

  /// Optional title shown above the grid.
  final String? title;

  @override
  State<DaysPicker> createState() => _DaysPickerState<T>();
}

class _DaysPickerState<T> extends State<DaysPicker<T>> {
  /// Currently selected items.
  late Set<T> selecteds;

  /// Available values (weekdays or days of month).
  late Set<T> values;

  /// Formatter used internally for labels.
  late String Function(T item) itemStringFormat;

  /// Title text resolved (default or custom).
  late String title;

  @override
  void initState() {
    _initValues();
    super.initState();
  }

  /// Initializes available values and initial selections
  void _initValues() {
    if (widget.dayType == DayType.weekDay) {
      // Convert WeekDay enum to a Set<T>
      values = Set<T>.from(WeekDay.values);
      itemStringFormat = (item) => (item as WeekDay).threeWordsFormat;
      title = widget.title ?? 'Select Week Days';
    } else {
      // Month days: generate 1–31
      values = Set<T>.from(List.generate(31, (index) => index + 1));
      itemStringFormat = (item) => item.toString();
      title = widget.title ?? 'Select Month Days';
    }

    // Initialize selected items depending on mode
    selecteds = widget.multiSelect
        ? widget.initialMultiSelected
        : [widget.initialSelected].whereType<T>().toSet();
  }

  /// Toggles selection logic for both multi and single modes
  void _toggleSelection(T item) {
    setState(() {
      if (widget.multiSelect) {
        // Multi-select: toggle item
        if (selecteds.contains(item)) {
          selecteds.remove(item);
        } else {
          selecteds.add(item);
        }
        widget.onChangedMulti?.call(selecteds);
      } else {
        // Single-select: allow only one
        selecteds = selecteds.contains(item) ? {} : {item};
        widget.onChangedSingle?.call(
          selecteds.isNotEmpty ? selecteds.first : null,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Container(
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerLowest,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // Header Row: Title and selected count
          Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: colorScheme.onSurface,
                  ),
                ),
              ),
              if (widget.multiSelect && selecteds.isNotEmpty)
                Text(
                  '${selecteds.length} selected',
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
            ],
          ),
          const SizedBox(height: 16),

          // Days Grid
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              // Always 7 columns (week style grid)
              crossAxisCount: 7,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: widget.dayType == DayType.weekDay ? 1.2 : 1.0,
            ),
            itemCount: values.length,
            itemBuilder: (context, index) {
              final item = values.elementAt(index);
              final isSelected = selecteds.contains(item);
              final label = itemStringFormat(item);

              return _DayChip(
                label: label,
                isSelected: isSelected,
                onTap: () => _toggleSelection(item),
                dayType: widget.dayType,
              );
            },
          ),
        ],
      ),
    );
  }
}

/// A chip widget representing one day (either week or month).
class _DayChip extends StatelessWidget {
  const _DayChip({
    required this.label,
    required this.isSelected,
    required this.onTap,
    required this.dayType,
  });

  /// Display text for the day.
  final String label;

  /// Whether this day is selected.
  final bool isSelected;

  /// Called when the chip is tapped.
  final VoidCallback onTap;

  /// Day type (week vs month) affects label style.
  final DayType dayType;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOut,
      decoration: BoxDecoration(
        color: isSelected ? colorScheme.primary : colorScheme.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: isSelected ? colorScheme.primary : colorScheme.outlineVariant,
          width: 1.5,
        ),
        boxShadow: isSelected
            ? [
                BoxShadow(
                  color: colorScheme.primary.withAlpha(0.3.asColorAlpha),
                  blurRadius: 6,
                  offset: const Offset(0, 2),
                )
              ]
            : null,
      ),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: onTap,
          splashColor: colorScheme.primary.withAlpha(0.1.asColorAlpha),
          highlightColor: colorScheme.primary.withAlpha(0.05.asColorAlpha),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Label style depends on day type
                if (dayType == DayType.monthDay)
                  Text(
                    label,
                    style: theme.textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: isSelected ? colorScheme.onPrimary : colorScheme.onSurface,
                    ),
                  ),
                if (dayType == DayType.weekDay)
                  Text(
                    label,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w500,
                      color: isSelected ? colorScheme.onPrimary : colorScheme.onSurface,
                    ),
                  ),
                // Show check icon if selected
                if (isSelected)
                  Icon(
                    Icons.check_circle_rounded,
                    size: 16,
                    color: colorScheme.onPrimary,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
