part of 'categories_manager_bloc.dart';

@freezed
class CategoriesManagerState with _$CategoriesManagerState {
  const factory CategoriesManagerState.initial() = _Initial;
  const factory CategoriesManagerState.loading() = _Loading;

  const factory CategoriesManagerState.failure(String message) = _Failure;

  const factory CategoriesManagerState.created(CategoryEntity cat) = _Created;

  const factory CategoriesManagerState.updated(CategoryEntity cat) = _Updated;

  const factory CategoriesManagerState.deleted(String id) = _Deleted;

  const factory CategoriesManagerState.fetched(List<CategoryEntity> categories) = _Fetched;
}
