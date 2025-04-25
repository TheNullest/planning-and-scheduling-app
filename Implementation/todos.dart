// TODO: Build a list of Anti-Procrastination routines based on ADHD types

// TODO[Refactor]: [Schedule Refactor] Implement dynamic scheduling logic:
// -------------------------------------------------------------------
// 1. Create separate classes for concerns:
//    - RepetitionPattern (base) with subtypes: DailyRepetition, WeeklyRepetition, etc.
//    - ScheduleEndCondition (handles maxRepetitions/endDate termination logic)
// 2. Add edge-case handling:
//    - Time zone adjustments (store dates in UTC)
//    - Invalid dates (e.g., February 30 → auto-adjust to 28/29)
//    - Overflow protection for large intervals
// 3. Integrate with state management (e.g., Riverpod) for dynamic updates
// 4. Add serialization/deserialization for database persistence
// 5. Write unit tests for:
//    - WeeklyRepetition.calculateNext() with daysOfWeek
//    - ScheduleEndCondition termination checks
//    - Leap year handling in MonthlyRepetition
// -------------------------------------------------------------------
// WARNING: Avoid embedding logic directly in ScheduleDefinitionEntity.
