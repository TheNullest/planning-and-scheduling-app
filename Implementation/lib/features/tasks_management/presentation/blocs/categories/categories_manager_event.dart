part of 'categories_manager_bloc.dart';

@freezed
class CategoriesManagerEvent with _$CategoriesManagerEvent {
  const factory CategoriesManagerEvent.started() = _Started;

  const factory CategoriesManagerEvent.create(
    CategoryEntity entity,
  ) = _Create;

  const factory CategoriesManagerEvent.update(
    CategoryEntity entity,
  ) = _Update;

  const factory CategoriesManagerEvent.delete(
    String id,
  ) = _Delete;

  const factory CategoriesManagerEvent.fetchAll() = _FetchAll;
}
