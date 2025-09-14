import 'package:flutter/material.dart';

/// A reusable overview section that displays a list of items as colored chips
/// with a header icon and label.
///
/// This widget is ideal for showing summarized information in overview screens,
/// such as scheduled days, categories, tags, or any list of items that benefit
/// from a compact chip-based display.
///
/// Typical usage:
/// ```dart
/// OverviewChipsSection<DateTime>(
///   icon: Icons.calendar_today,
///   color: Colors.blue,
///   label: 'Scheduled Days',
///   items: scheduledDays,
///   formatter: (date) => DateFormat.E().format(date),
/// )
/// ```
///
/// ```dart
/// OverviewChipsSection<String>(
///   icon: Icons.label,
///   color: Colors.green,
///   label: 'Categories',
///   items: categories,
///   formatter: (category) => category.name,
/// )
class OverviewChipsSection<T> extends StatelessWidget {
  /// Creates a chips section that displays [items] as colored chips
  /// under a header with [icon] and [label].
  ///
  /// The [formatter] converts each item to the chip’s text.
  /// Optional [bottomPadding] adds spacing below the entire section
  /// (defaults to 12.0 logical pixels).
  const OverviewChipsSection({
    required this.items,
    required this.icon,
    required this.color,
    required this.label,
    required this.formatter,
    super.key,
    this.bottomPadding = 12.0,
  });

  /// The list of data items to be displayed as chips.
  ///
  /// If this list is empty, the widget renders nothing.
  final List<T> items;

  /// The icon displayed next to the [label] in the section header.
  final IconData icon;

  /// The primary color applied to the icon, header text,
  /// and chip borders/background.
  final Color color;

  /// Text label displayed in the header row beside the [icon].
  final String label;

  /// Converts each [items] element into the string shown inside its chip.
  final String Function(T item) formatter;

  /// Optional space below the whole section (default: 12.0).
  final double bottomPadding;

  @override
  Widget build(BuildContext context) {
    // Skip rendering if there are no items to display.
    if (items.isEmpty) return const SizedBox.shrink();

    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: color.withAlpha(50), // Use your section's accent color
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(12),
        color: color.withAlpha(5), // Very subtle background tint
      ),
      padding: const EdgeInsets.all(16),
      margin: EdgeInsets.only(bottom: bottomPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header row with icon and label
          Row(
            children: [
              Icon(icon, size: 18, color: color),
              const SizedBox(width: 8),
              Text(
                label,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: color,
                    ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          // Wrap of chips for each item
          Wrap(
            spacing: 8,
            runSpacing: 6,
            children: items
                .map(
                  (item) => Chip(
                    label: Text(
                      formatter(item),
                      style: TextStyle(
                        fontSize: 12,
                        color: color,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    visualDensity: VisualDensity.compact,
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                    backgroundColor: color.withAlpha(25),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(color: color.withAlpha(75)),
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
