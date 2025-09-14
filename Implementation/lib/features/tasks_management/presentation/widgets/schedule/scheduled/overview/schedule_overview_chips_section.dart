import 'package:flutter/material.dart';
import 'package:zamaan/core/extensions/num.dart';
import 'package:zamaan/domain/enums/hive/day_type.dart';
import 'package:zamaan/presentation_shared/models/day_label_with_time_ranges.dart';

/// A specialized overview section that displays scheduled days with their associated
/// time ranges in a clear, hierarchical layout.
///
/// This widget is specifically designed for scheduling scenarios where you need to
/// show which days have specific time blocks scheduled. It provides a clean visual
/// distinction between days and their time ranges to prevent confusion.
///
/// Typical usage for weekly schedule:
/// ```dart
/// ScheduleOverviewChipsSection(
///   icon: Icons.schedule,
///   color: Colors.blue,
///   label: 'Weekly Schedule',
///   schedule: [
///     DayLabelWithTimeRanges(
///       dayLabel: 'Monday',
///       timeRanges: ['9:00-10:00', '14:00-15:00'],
///     ),
///     DayLabelWithTimeRanges(
///       dayLabel: 'Wednesday',
///       timeRanges: ['10:00-11:00', '15:00-16:00'],
///     ),
///   ],
///   formatter: (dayLabel) => dayLabel, // Direct use of day label
/// )
/// ```
///
/// For date-based schedule:
/// ```dart
/// ScheduleOverviewChipsSection(
///   icon: Icons.calendar_today,
///   color: Colors.green,
///   label: 'Specific Dates',
///   schedule: specificDatePlans,
///   formatter: (dateString) => DateFormat.MMMd().format(DateTime.parse(dateString)),
/// )
/// ```
class ScheduleOverviewChipsSection<DayLabel> extends StatelessWidget {
  /// Creates a schedule overview section that displays days with their associated
  /// time ranges in a clear, non-confusing hierarchical layout.
  ///
  /// The [schedule] parameter takes a list of days with their time ranges.
  /// Set [showTimeRanges] to false to hide time ranges and show only days.
  const ScheduleOverviewChipsSection({
    required this.schedule,
    required this.icon,
    required this.color,
    required this.label,
    required this.dayType,
    this.showTimeRanges = true,
    super.key,
    this.bottomPadding = 12.0,
  });

  /// The list of scheduled days with their associated time ranges.
  ///
  /// Each item represents a day and the time ranges scheduled for that day.
  /// If this list is empty, the widget renders nothing.
  final List<DayLabelWithTimeRanges> schedule;

  /// The icon displayed next to the [label] in the section header.
  final IconData icon;

  /// The primary color applied to the icon, header text, day labels,
  /// and time range indicators.
  final Color color;

  final DayType dayType;

  /// Text label displayed in the header row beside the [icon].
  final String label;

  /// Whether to display time ranges under each day label.
  ///
  /// Set to false to show only the day labels without time ranges.
  final bool showTimeRanges;

  /// Optional space below the entire section (default: 12.0).
  final double bottomPadding;

  @override
  Widget build(BuildContext context) {
    if (schedule.isEmpty) return const SizedBox.shrink();

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
          _buildSectionHeader(context),
          const SizedBox(height: 12),
          _buildScheduleContent(context),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: color.withAlpha(30),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, size: 18, color: color),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            label,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: color,
                ),
          ),
        ),
      ],
    );
  }

  Widget _buildScheduleContent(BuildContext context) {
    return Wrap(
      spacing: 8,
      children: schedule.map((schedule) {
        final hasTimeRanges = showTimeRanges && schedule.timeRanges.isNotEmpty;
        return Container(
          margin: const EdgeInsets.only(bottom: 8),
          decoration: BoxDecoration(
            border: hasTimeRanges ? Border.all(color: color.withAlpha(30)) : null,
            borderRadius: BorderRadius.circular(8),
            color: hasTimeRanges ? color.withAlpha(5) : null,
          ),
          padding: hasTimeRanges
              ? const EdgeInsets.all(8)
              : const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Day label with clear visual indicator
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    dayType.getFormattedDayLabel(schedule.dayLabel),
                    // formatter(schedule.dayLabel),
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: color.withAlpha(0.9.asColorAlpha),
                        ),
                  ),
                  if (hasTimeRanges)
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                      decoration: BoxDecoration(
                        color: color.withAlpha(20),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        '${schedule.timeRanges.length} ${schedule.timeRanges.length == 1 ? 'time' : 'times'}',
                        style: TextStyle(
                          fontSize: 10,
                          color: color,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                ],
              ),
              // Time ranges with clear visual separation
              if (hasTimeRanges) ...[
                const SizedBox(height: 6),
                Container(
                  height: 1,
                  color: color.withAlpha(20),
                  margin: const EdgeInsets.only(bottom: 6),
                ),
                Wrap(
                  spacing: 6,
                  runSpacing: 4,
                  children: schedule.timeRanges.map((timeRange) {
                    return Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: color.withAlpha(15),
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: color.withAlpha(40)),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.access_time,
                            size: 12,
                            color: color.withAlpha(0.7.asColorAlpha),
                          ),
                          const SizedBox(width: 4),
                          Text(
                            timeRange.getLabel,
                            style: TextStyle(
                              fontSize: 13,
                              color: color,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ],
            ],
          ),
        );
      }).toList(),
    );
  }
}
