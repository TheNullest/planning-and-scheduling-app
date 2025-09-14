import 'package:zamaan/core/utils/typedef.dart';

abstract class BaseDataSource<Model> {
  EResultFutureVoid create(Model entity);

  EResultFutureVoid createBatch(List<Model> entities);

  EResultFutureVoid delete(String id);

  EResultFutureVoid deleteBatch(List<String> ids);

  EResultFuture<bool> exists(String id);

  EResultFuture<List<Model>> get();

  EResultFutureVoid update(Model entity);

  EResultFutureVoid updateBatch(List<Model> entities);

  EResultFuture<Model> getById(String id);

  EResultFuture<List<Model>> getByIds(List<String> ids);
}

/// Converts a list of conditions into a string representation for query filtering.
///
/// [conditions] - List of conditions to be joined.
/// [join] - String used to join the conditions (e.g., 'or', 'and').
///
/// Returns a string representation of the conditions.
///
/// Example:
/// ```dart
/// final conditions = ['condition1', 'condition2'];
/// final joinedConditions = conditionToString(conditions: conditions, join: 'or');
/// Result: 'id.eq.condition1 or id.eq.condition2'
/// ```
String conditionToString({
  required List<String> conditions,
  required String join,
  String fieldName = 'id',
}) {
  return conditions.map((e) => '$fieldName.eq.$e').join(join);
}
