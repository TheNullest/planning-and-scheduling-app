import 'package:flutter/material.dart';
import 'package:zamaan/core/extensions/date_time.dart';
import 'package:zamaan/features/tasks_management/presentation/dialogs/custom_show_modal_bottom_sheet.dart';
import 'package:zamaan/presentation_shared/theme/elementary.dart';
import 'package:zamaan/presentation_shared/widgets/overview_chips_section.dart';

/// A card widget th÷ظat displays a high–level overview of a scheduler section
/// (for example, constraints or task schedule).
///
/// * Taps on the card typically open an editor (e.g. a bottom sheet) so the
///   parent can provide an `onEdit` callback for launching a modal or a page.
/// * Optionally shows a description and start/end times.
/// * Displays one or more [OverviewChipsSection] groups as a visual summary.
class ScheduledOverviewSections<VM extends ChangeNotifier> extends StatelessWidget {
  /// Creates a [ScheduledOverviewSections].
  ///
  /// The [title], [icon] and [dailySections] describe the content of the card.
  /// Use [onEdit] to decide how to launch the editing UI (for example,
  /// open a bottom sheet or navigate to a new screen).
  const ScheduledOverviewSections({
    required this.isTaskDefined,
    required this.icon,
    required this.title,
    required this.dialogTitle,
    required this.dailySections,
    required this.vm,
    this.isScrollable = true,
    this.managerView,
    this.onEdit,
    this.onClose,
    this.canDisplayDescription = false,
    this.description,
    this.startTime,
    this.endTime,
    super.key,
  });

  /// Indicates whether a parent task is already defined.
  /// When false, the card shows a placeholder message instead of the overview.
  final bool isTaskDefined;

  /// Icon displayed in the card header.
  final IconData icon;

  /// Title will be shown when there are no sections to display .
  final String title;

  /// Title used in the edit dialog or sheet (if you use [managerView]).
  final String dialogTitle;

  /// Optional widget used for an edit dialog or bottom sheet content.
  final Widget? managerView;

  /// Chips sections that summarize key scheduler data.
  ///
  /// It’s recommended to pass a list of [OverviewChipsSection] but any widget
  /// can be used for maximum flexibility.
  final List<Widget> dailySections;

  /// View-model driving the state of this scheduler.
  final VM vm;

  /// Optional callback triggered when the card is tapped.
  /// For example, you might call a bottom sheet or navigate to a new page.
  final VoidCallback? onEdit;

  /// Optional callback triggered when the edit dialog is closed.
  final VoidCallback? onClose;

  /// Whether to display the description and start/end times summary.
  final bool canDisplayDescription;

  /// Optional textual description of the scheduler section.
  final String? description;

  /// Optional scheduled start time.
  final DateTime? startTime;

  /// Optional scheduled end time.
  final DateTime? endTime;

  final bool isScrollable;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onEdit ??
          () async {
            // Fallback behaviour: open the upsertView if provided
            if (managerView != null) {
              await customShowModalBottomSheetDialog(context, vm, managerView!,
                  isRadiusAllowed: false,
                  enableDrag: false,
                  headerIcon: Icons.edit_calendar,
                  header: dialogTitle,
                  onClose: onClose,
                  isScrollable: isScrollable);
            }
          },
      child: _SummaryContent(
        canDisplayDescription: canDisplayDescription,
        description: description,
        startTime: startTime,
        endTime: endTime,
        title: title,
        sections: dailySections,
      ),
    );
  }
}

/// Private widget to encapsulate the summary column layout.
///
/// Handles description, start/end times, and any chips sections.
class _SummaryContent extends StatelessWidget {
  const _SummaryContent({
    required this.canDisplayDescription,
    required this.description,
    required this.startTime,
    required this.endTime,
    required this.title,
    required this.sections,
  });

  final bool canDisplayDescription;
  final String? description;
  final DateTime? startTime;
  final DateTime? endTime;
  final String title;
  final List<Widget> sections;

  @override
  Widget build(BuildContext context) {
    final desc = description?.trim() ?? '';
    final descValue = desc.isNotEmpty ? desc : _Strings.noDescription;
    final start = startTime?.toDateString ?? _Strings.notSet;
    final end = endTime?.toDateString ?? _Strings.notSet;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (canDisplayDescription) ...[
          _SummaryRow(
            icon: Icons.description,
            label: _Strings.descriptionLabel,
            value: descValue,
            iconColor: Colors.grey[700],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: _SummaryRow(
                  icon: Icons.timer,
                  label: _Strings.startLabel,
                  value: start,
                  iconColor: ElementaryColors.time,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: _SummaryRow(
                  icon: Icons.timer_off,
                  label: _Strings.endLabel,
                  value: end,
                  iconColor: ElementaryColors.time,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
        ],
        if (sections.isEmpty)
          Text(
            '${_Strings.no} $title defined',
            style: TextStyle(color: Colors.grey[600], fontStyle: FontStyle.italic),
          )
        else
          ...sections,
      ],
    );
  }
}

/// One row of icon + label + value in the summary area.
class _SummaryRow extends StatelessWidget {
  const _SummaryRow({
    required this.icon,
    required this.label,
    required this.value,
    required this.iconColor,
  });

  final IconData icon;
  final String label;
  final String value;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    final isEmptyValue = value == _Strings.notSet || value == _Strings.noDescription;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 18, color: iconColor),
        const SizedBox(width: 8),
        Expanded(
          child: Text.rich(
            TextSpan(
              text: '$label ',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(fontWeight: FontWeight.w600, color: Colors.grey[700]),
              children: [
                TextSpan(
                  text: value,
                  style: TextStyle(
                    color: isEmptyValue ? Colors.grey : Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

/// Centralised user-visible strings for easy localisation.
class _Strings {
  static const notSet = 'Not set';
  static const noDescription = 'No description';
  static const descriptionLabel = 'Description:';
  static const startLabel = 'Start:';
  static const endLabel = 'End:';
  static const no = 'No';
}
