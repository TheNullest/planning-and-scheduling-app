part of 'tags_manager_bloc.dart';

@freezed
class TagsManagerState with _$TagsManagerState {
  const factory TagsManagerState.initial() = _Initial;
  const factory TagsManagerState.loading() = _Loading;

  const factory TagsManagerState.failure(String message) = _Failure;

  const factory TagsManagerState.created(TagEntity cat) = _Created;

  const factory TagsManagerState.updated(String id) = _Updated;

  const factory TagsManagerState.deleted(String id) = _Deleted;

  const factory TagsManagerState.fetched(List<TagEntity> goals) = _Fetched;
}
