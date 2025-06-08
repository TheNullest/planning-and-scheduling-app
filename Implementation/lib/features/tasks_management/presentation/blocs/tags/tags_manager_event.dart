part of 'tags_manager_bloc.dart';

@freezed
class TagsManagerEvent with _$TagsManagerEvent {
  const factory TagsManagerEvent.started() = _Started;

  const factory TagsManagerEvent.create(
    TagEntity entity,
  ) = _Create;

  const factory TagsManagerEvent.update(
    TagEntity entity,
  ) = _Update;

  const factory TagsManagerEvent.delete(
    String id,
  ) = _Delete;

  const factory TagsManagerEvent.fetchAll() = _FetchAll;
}
