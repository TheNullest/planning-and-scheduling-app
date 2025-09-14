part of 'schedule_vms_manager.dart';

/// Extension that manages **UI-facing day-picker state** within the scheduling ecosystem.
///
/// This extension empowers [`ScheduleVmsManager`] to orchestrate
/// the lifecycle and synchronization of `DayPickerWithTimeRangesCardVm` view models,
/// bridging the gap between **entity data**, **selection logic**, and **UI behavior**.
///
/// ### Strategic Role
/// This layer governs how scheduling data translates into actionable, visual structures
/// that users interact with — ensuring coherence between recurring (week/month)
/// and fixed-date scheduling flows.
///
/// ### Core Responsibilities
/// - Maintain and expose **card collections** for week, month, and fixed-date schedules
/// - Build **overview models** for quick visualization of scheduled times
/// - Construct **upsert view models** (`ScheduledDayTimeUpsertVm`, `ScheduledFixedDatesUpsertVm`)
///   that reflect the current selection and entity state
/// - Orchestrate **selection lifecycle** including multi-select handling and cleanup
/// - Initialize and reset base card structures for reusable, consistent UI states
///
/// ### Integration
/// This extension is intentionally UI-facing and operates as a **coordination layer**
/// between:
/// - Entity layer → (`ScheduledDayTimeEntity`, `ScheduledFixedDateEntity`)
/// - View model layer → (`DayPickerWithTimeRangesCardVm`, `TimeRangeVm`)
/// - UI layer → (day-picker cards, overview chips, upsert forms)
///
/// It ensures that all user interactions on day-picker cards propagate correctly
/// into the data model — while preserving immutability and predictable view behavior.
extension ScheduleTimeGroupVmsManagerExtension on ScheduleVmsManager {
  // ────────────────────────────────────────────────
  // Accessors
  // ────────────────────────────────────────────────

  /// Provides **read-only access** to all initialized **fixed-date day cards**.
  List<ScheduleTimeGroupVm> get getScheduledFixedDates => List.unmodifiable(_scheduledFixedDates);

  /// Provides **read-only access** to all initialized **week-day cards**.
  List<ScheduleTimeGroupVm> get getScheduledWeekDays => List.unmodifiable(_scheduledWeekDays);

  /// Provides **read-only access** to all initialized **month-day cards**.
  List<ScheduleTimeGroupVm> get getScheduledMonthDays => List.unmodifiable(_scheduledMonthDays);

  // ────────────────────────────────────────────────
  // Overview Builders
  // ────────────────────────────────────────────────

  /// Returns a collection of **overview models** for all scheduled **fixed-date** cards.
  ///
  /// These models are used to present a summarized view of which fixed dates
  /// have defined time ranges.
  List<DayLabelWithTimeRanges> get getScheduledFixedDateOverviewItems =>
      _getDayOverviewItems(_scheduledFixedDates);

  /// Returns a collection of **overview models** for all scheduled **week-day** cards.
  ///
  /// Enables concise visualization of recurring weekly schedules in the UI.
  List<DayLabelWithTimeRanges> get getScheduledWeekDayOverviewItems =>
      _getDayOverviewItems(_scheduledWeekDays);

  /// Returns a collection of **overview models** for all scheduled **month-day** cards.
  ///
  /// Supports overview visualization for recurring monthly schedules.
  List<DayLabelWithTimeRanges> get getScheduledMonthDayOverviewItems =>
      _getDayOverviewItems(_scheduledMonthDays);

  /// Internal helper that transforms a list of [ScheduleTimeGroupVm]s
  /// into a concise, display-ready list of [DayLabelWithTimeRanges] objects.
  ///
  /// - Only includes cards with at least one defined time range.
  /// - Used to build quick overviews of scheduled days across day types.
  List<DayLabelWithTimeRanges> _getDayOverviewItems(
    List<ScheduleTimeGroupVm> dayCards,
  ) =>
      dayCards.where((day) => day.timeRanges.isNotEmpty).map((day) => day.dayOverview).toList();

  // ────────────────────────────────────────────────
  // Time Range Builders
  // ────────────────────────────────────────────────

  /// Builds a **flat list of [TimeRangeVm]s** derived from currently selected day cards.
  ///
  /// - For **fixed-date** selections, it resolves corresponding `ScheduledOccurrenceEntity` items.
  /// - For **recurring** (week/month) selections, it maps to `ScheduledDayTimeEntity` items.
  ///
  /// This method normalizes all active selections into a single,
  /// easily consumable view model list for downstream use.
  // List<TimeRangeVm> get _buildTimRangeVms {
  //   return selectionManager.mainCard.scheduleType == ScheduleType.fixedDate
  //       ? selectionManager.items
  //           .expand(
  //             (day) => _scheduledFixedDateEntities
  //                 .where(
  //                   (item) => item.startDateTime.toDateString == day.label,
  //                 )
  //                 .map(TimeRangeVm.fromScheduledOccurrenceEntity),
  //           )
  //           .toList()
  //       : selectionManager.items
  //           .expand(
  //             (day) => _scheduledDayTimeEntities
  //                 .where((item) => item.dayLabel == day.label)
  //                 .map(TimeRangeVm.fromScheduledDayTimeEntity),
  //           )
  //           .toList();
  // }

  // // ────────────────────────────────────────────────
  // // Upsert VM Builders
  // // ────────────────────────────────────────────────

  // /// Builds and returns a **`ScheduledDayTimeUpsertVm`** representing
  // /// the current user selection.
  // ///
  // /// - If the selection corresponds to an existing entity, the form is **initialized with entity data**.
  // /// - Otherwise, it produces a **fresh, blank form** prepopulated with current day selections.
  // ///
  // /// The `selectionManager`’s multi-select mode is disabled after generation
  // /// to ensure a clean, single-context editing session.
  // ScheduledDayTimeUpsertVm get getDayTimeUpsertVm {
  //   final mainDayTimeEntity = selectionManager.resolveMainDayTimeEntity(
  //     entities: _scheduledDayTimeEntities,
  //     userId: _userId,
  //     taskId: taskId,
  //   );

  //   selectionManager.cancelSelection();

  //   return mainDayTimeEntity.id.isNotEmpty
  //       ? ScheduledDayTimeUpsertVm.fromEntity(
  //           entity: mainDayTimeEntity,
  //           dayTimeVms: _buildTimRangeVms,
  //           selectedDays: selectionManager.selectedDays,
  //           exceptionTimeRanges: exceptionTimeRanges,
  //         )
  //       : ScheduledDayTimeUpsertVm(
  //           userId: _userId,
  //           taskId: taskId,
  //           selectedDays: selectionManager.selectedDays,
  //           exceptionTimeRanges: exceptionTimeRanges,
  //         );
  // }

  // /// Builds and returns a **`ScheduledFixedDatesUpsertVm`**
  // /// derived from the currently selected fixed-date cards.
  // ///
  // /// Consolidates active selections and exceptions (dates, ranges, and times)
  // /// into a form-ready view model.
  // ScheduledFixedDatesUpsertVm get getFixedDatesUpsertVm => ScheduledFixedDatesUpsertVm.fromEntity(
  //       entity: selectionManager.resolveMainFixedDateEntity(_scheduledFixedDateEntities),
  //       dayTimeVms: _buildTimRangeVms,
  //       selectedDays: selectionManager.selectedDays,
  //       exceptionDates: exceptionDates,
  //       exceptionDateRange: exceptionDateRanges,
  //       exceptionTimeRanges: exceptionTimeRanges,
  //     );

  // ────────────────────────────────────────────────
  // Initialization & Reset
  // ────────────────────────────────────────────────

  /// Initializes the **base set of day-picker cards** for both **week-day**
  /// and **month-day** configurations.
  ///
  /// This operation seeds `DayPickerWithTimeRangesCardVm` instances in a
  /// *raw* state using `asRawItem`, preparing them for later configuration
  /// by user or system interactions.
  ///
  /// - **Week-day cards** — one for each day in [WeekDay].
  /// - **Month-day cards** — one for each integer day (1–31).
  ///
  /// These initialized collections populate:
  /// - `_weekDayCards` → recurring weekly schedules
  /// - `_monthDayCards` → recurring monthly schedules
  @protected
  void initDayCards() {
    _scheduledWeekDays
      ..clear()
      ..addAll(
        weekDays.map(
          (day) => ScheduleTimeGroupVm.asRawItem(
            scheduleType: ScheduleType.recurringWeekDays,
            label: day.name,
          ),
        ),
      );

    _scheduledMonthDays
      ..clear()
      ..addAll(
        monthDays.map(
          (day) => ScheduleTimeGroupVm.asRawItem(
            scheduleType: ScheduleType.recurringMonthDays,
            label: day.toString(),
          ),
        ),
      );
  }

  /// Resets all card data and disables active multi-selection.
  ///
  /// - Clears time ranges from all week and month day cards.
  /// - Clears all fixed-date card data.
  /// - Ensures selection state is fully reset for the next editing session.
  void clearValues() {
    for (final day in _scheduledWeekDays + _scheduledMonthDays) {
      day.timeRanges.clear();
    }

    _scheduledFixedDates.clear();
  }
}
