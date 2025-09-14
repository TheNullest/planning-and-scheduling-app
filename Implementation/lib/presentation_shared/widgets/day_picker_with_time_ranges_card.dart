import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zamaan/core/extensions/num.dart';
import 'package:zamaan/core/extensions/time_of_day.dart';
import 'package:zamaan/domain/enums/hive/day_type.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/schedule/items/schedule_time_group_vm.dart';

class DayPickerWithTimeRangesCard extends StatefulWidget {
  const DayPickerWithTimeRangesCard({
    required this.isSelected,
    required this.onPressed,
    this.isMultiSelectableActived = false,
    super.key,
    this.onSelected,
    this.onDeselected,
    this.markIsMultiSelectAsTrue,
  });

  final bool isSelected;
  final VoidCallback onPressed;
  final VoidCallback? onSelected;
  final VoidCallback? onDeselected;
  final VoidCallback? markIsMultiSelectAsTrue;
  final bool isMultiSelectableActived;

  @override
  State<DayPickerWithTimeRangesCard> createState() => _DayPickerWithTimeRangesCardState();
}

class _DayPickerWithTimeRangesCardState<DayLabelType> extends State<DayPickerWithTimeRangesCard> {
  late final ScheduleTimeGroupVm cardVm;
  final ValueNotifier<bool> _inMultiSelect = ValueNotifier(false);

  late String dayLabel;
  late bool isThereAnyTimes;
  late double fontSize;
  @override
  void initState() {
    super.initState();
    cardVm = context.read<ScheduleTimeGroupVm>();
    isThereAnyTimes = cardVm.timeRanges.isNotEmpty;

    dayLabel = cardVm.scheduleType.getFormattedLabel(cardVm.label);
    fontSize = cardVm.scheduleType == DayType.weekDay
        ? 16
        : cardVm.scheduleType == DayType.fixedDate
            ? 14
            : 18;
  }

  @override
  void didUpdateWidget(covariant DayPickerWithTimeRangesCard oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!widget.isMultiSelectableActived) {
      _inMultiSelect.value = false;
    }
    isThereAnyTimes = cardVm.timeRanges.isNotEmpty;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return SizedBox(
      width: 125,
      height: 125,
      child: cardVm.isExceptionDay
          ? _exceptionDay
          : AnimatedContainer(
              margin: const EdgeInsets.all(2),
              padding: EdgeInsets.all(isThereAnyTimes ? 5 : 10),
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeInOut,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: widget.isSelected
                      ? [
                          colorScheme.primaryContainer.withAlpha(0.9.asColorAlpha),
                          colorScheme.surfaceContainerHighest.withAlpha(0.7.asColorAlpha),
                        ]
                      : [
                          colorScheme.surfaceContainerLow.withAlpha(0.9.asColorAlpha),
                          colorScheme.surfaceContainerHighest.withAlpha(0.7.asColorAlpha),
                        ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: widget.isSelected
                      ? colorScheme.primary
                      : colorScheme.outlineVariant.withAlpha(0.6.asColorAlpha),
                  width: 1.8,
                ),
                boxShadow: [
                  if (widget.isSelected)
                    BoxShadow(
                      color: colorScheme.primary.withAlpha(0.35.asColorAlpha),
                      blurRadius: 10,
                      offset: const Offset(0, 3),
                    ),
                  BoxShadow(
                    color: Colors.black.withAlpha(0.05.asColorAlpha),
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(20),
                onTap: widget.isMultiSelectableActived
                    ? () {
                        _inMultiSelect.value = !_inMultiSelect.value;
                        _inMultiSelect.value
                            ? widget.onSelected?.call()
                            : widget.onDeselected?.call();
                      }
                    : widget.onPressed,
                onLongPress: () {
                  if (widget.markIsMultiSelectAsTrue != null) {
                    _inMultiSelect.value = true;
                    widget.onSelected?.call();
                    widget.markIsMultiSelectAsTrue?.call();
                  }
                },
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  transitionBuilder: (child, anim) => FadeTransition(opacity: anim, child: child),
                  child: widget.isMultiSelectableActived
                      ? _multiSelectableContent(context)
                      : _content(context),
                ),
              ),
            ),
    );
  }

  Widget _content(BuildContext context) {
    final times = cardVm.timeRanges;

    return Column(
      crossAxisAlignment: times.isNotEmpty ? CrossAxisAlignment.start : CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          dayLabel,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontSize: fontSize,
                fontWeight: FontWeight.w700,
                color: widget.isSelected
                    ? Theme.of(context).colorScheme.onPrimaryContainer
                    : Theme.of(context).colorScheme.onSurface,
              ),
        ),
        const SizedBox(height: 6),
        if (isThereAnyTimes)
          Expanded(
            child: SingleChildScrollView(
              child: Wrap(
                spacing: 6,
                runSpacing: 3,
                children: times.map((timeRange) {
                  final start = timeRange.startTime.toDayTimeString;
                  final end = timeRange.endTime.toDayTimeString;
                  return Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Theme.of(context)
                          .colorScheme
                          .secondaryContainer
                          .withAlpha(0.7.asColorAlpha),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        '$start - $end',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).colorScheme.onSecondaryContainer,
                            ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          )
        else
          _notScheduledContent
      ],
    );
  }

  Widget _multiSelectableContent(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: _inMultiSelect,
      builder: (context, isSelected, _) {
        return Stack(
          children: [
            _content(context),
            Positioned(
              top: 8,
              right: 8,
              child: AnimatedScale(
                scale: isSelected ? 1.0 : 0.0,
                duration: const Duration(milliseconds: 250),
                child: const CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.green,
                  child: Icon(Icons.check, color: Colors.white, size: 16),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget get _notScheduledContent => Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Icon with gradient background
          Icon(
            Icons.more_time,
            size: 22,
            color: Theme.of(context).colorScheme.outline.withAlpha(0.8.asColorAlpha),
          ),

          // Main text
          Text(
            'Not scheduled',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).colorScheme.onSurfaceVariant.withAlpha(0.9.asColorAlpha),
                  letterSpacing: 0.3,
                  height: 1.2, // Better line height
                ),
          ),

          const SizedBox(height: 4), // Reduced spacing

          // Subtext
          Text(
            'Tap to add one',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).colorScheme.primary.withAlpha(0.8.asColorAlpha),
                  letterSpacing: 0.2,
                  height: 1.1, // Better line height
                ),
          ),
        ],
      );

  Widget get _exceptionDay => MouseRegion(
        cursor: SystemMouseCursors.forbidden,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                // ✨ CHANGED: Use a mix of errorContainer and surface for a warning tint
                Theme.of(context).colorScheme.surfaceContainer.withAlpha(0.7.asColorAlpha),
                Theme.of(context).colorScheme.surfaceContainer.withAlpha(0.9.asColorAlpha),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Theme.of(context).colorScheme.error,
              width: 2,
            ),
            boxShadow: [
              BoxShadow(
                // ✨ CHANGED: Tint the shadow with the error color
                color: Colors.red.withAlpha(0.7.asColorAlpha),
                blurRadius: 10,
                offset: const Offset(0, 2),
              ),
              const BoxShadow(
                color: Colors.black12,
                blurRadius: 2,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Stack(
            children: [
              // 🔒 Lock icon
              Positioned(
                top: 8,
                right: 8,
                child: Icon(
                  Icons.lock_outline,
                  // ✨ CHANGED: Use a more prominent warning color
                  color: Theme.of(context).colorScheme.error,
                  size: 20,
                ),
              ),
              // 🗓 Center content
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.calendar_today,
                      size: 22,
                      // ✨ CHANGED: Use the main error color, no alpha
                      color: Theme.of(context).colorScheme.error,
                    ),
                    const SizedBox(height: 6),
                    Text(
                      dayLabel,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w700,
                            // ✨ CHANGED: Use the specific "on" color
                            color: Theme.of(context).colorScheme.onErrorContainer,
                          ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      'Exception Day',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            // ✨ CHANGED: Use the "on" color for readability
                            color: Theme.of(context)
                                .colorScheme
                                .onErrorContainer
                                .withAlpha(0.8.asColorAlpha),
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
