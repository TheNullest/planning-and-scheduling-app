import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zamaan/domain/entities/tag.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/tag/create_tag_usecase.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/tag/delete_tag_usecase.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/tag/fetch_all_tags_usecase.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/tag/update_tag_usecase.dart';

part 'tags_manager_event.dart';
part 'tags_manager_state.dart';
part 'tags_manager_bloc.freezed.dart';

class TagsManagerBloc extends Bloc<TagsManagerEvent, TagsManagerState> {
  TagsManagerBloc({
    required FetchAllTagsUsecase fetchAllUsecase,
    required CreateTagUsecase createUsecase,
    required UpdateTagUsecase updateUsecase,
    required DeleteTagUsecase deleteUsecase,
  })  : _fetchAllUsecase = fetchAllUsecase,
        _createUsecase = createUsecase,
        _updateUsecase = updateUsecase,
        _deleteUsecase = deleteUsecase,
        super(const _Initial()) {
    on<TagsManagerEvent>((event, emit) async {
      await event.map(
        started: (e) async => _handleStarted(emit),
        create: (e) async => _create(e, emit),
        update: (e) async => _update(e, emit),
        delete: (e) async => _delete(e, emit),
        fetchAll: (e) async => _fetchAll(e, emit),
      );
    });
  }

  final FetchAllTagsUsecase _fetchAllUsecase;
  final CreateTagUsecase _createUsecase;
  final UpdateTagUsecase _updateUsecase;
  final DeleteTagUsecase _deleteUsecase;

  Future<void> _handleStarted(Emitter<TagsManagerState> emit) async {
    emit(const TagsManagerState.loading());
    await _fetchAll(const _FetchAll(), emit);
  }

  Future<void> _create(
    _Create event,
    Emitter<TagsManagerState> emit,
  ) async {
    emit(const TagsManagerState.loading());
    final result = await _createUsecase(event.entity);
    result.fold(
      (failure) => emit(TagsManagerState.failure(failure.toString())),
      (id) => emit(TagsManagerState.created(event.entity)),
    );
  }

  Future<void> _update(
    _Update event,
    Emitter<TagsManagerState> emit,
  ) async {
    emit(const TagsManagerState.loading());
    final result = await _updateUsecase(event.entity);
    result.fold(
      (failure) => emit(TagsManagerState.failure(failure.toString())),
      (_) => emit(TagsManagerState.updated(event.entity.id)),
    );
  }

  Future<void> _delete(
    _Delete event,
    Emitter<TagsManagerState> emit,
  ) async {
    emit(const TagsManagerState.loading());
    final result = await _deleteUsecase(event.id);
    result.fold(
      (failure) => emit(TagsManagerState.failure(failure.toString())),
      (_) => emit(TagsManagerState.deleted(event.id)),
    );
  }

  Future<void> _fetchAll(
    _FetchAll event,
    Emitter<TagsManagerState> emit,
  ) async {
    emit(const TagsManagerState.loading());
    final result = await _fetchAllUsecase();
    result.fold(
      (failure) => emit(TagsManagerState.failure(failure.toString())),
      (categories) => emit(TagsManagerState.fetched(categories)),
    );
  }
}
