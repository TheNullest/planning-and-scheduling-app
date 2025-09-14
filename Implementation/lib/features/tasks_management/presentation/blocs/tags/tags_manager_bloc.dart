import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zamaan/domain/entities/tag.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/tag/create_tag_use_case.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/tag/delete_tag_use_case.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/tag/get_tags_use_case.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/tag/update_tag_use_case.dart';

part 'tags_manager_event.dart';
part 'tags_manager_state.dart';
part 'tags_manager_bloc.freezed.dart';

class TagsManagerBloc extends Bloc<TagsManagerEvent, TagsManagerState> {
  TagsManagerBloc({
    required GetTagsUseCase getUseCase,
    required CreateTagUseCase createUseCase,
    required UpdateTagUseCase updateUseCase,
    required DeleteTagUseCase deleteUseCase,
  })  : _getUseCase = getUseCase,
        _createUseCase = createUseCase,
        _updateUseCase = updateUseCase,
        _deleteUseCase = deleteUseCase,
        super(const _Initial()) {
    on<TagsManagerEvent>((event, emit) async {
      await event.map(
        started: (e) async => _handleStarted(emit),
        create: (e) async => _create(e, emit),
        update: (e) async => _update(e, emit),
        delete: (e) async => _delete(e, emit),
        get: (e) async => _get(e, emit),
      );
    });
  }

  final GetTagsUseCase _getUseCase;
  final CreateTagUseCase _createUseCase;
  final UpdateTagUseCase _updateUseCase;
  final DeleteTagUseCase _deleteUseCase;

  Future<void> _handleStarted(Emitter<TagsManagerState> emit) async {
    emit(const TagsManagerState.loading());
    await _get(const _Get(), emit);
  }

  Future<void> _create(
    _Create event,
    Emitter<TagsManagerState> emit,
  ) async {
    emit(const TagsManagerState.loading());
    final result = await _createUseCase(event.entity);
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
    final result = await _updateUseCase(event.entity);
    result.fold(
      (failure) => emit(TagsManagerState.failure(failure.toString())),
      (_) => emit(TagsManagerState.updated(event.entity)),
    );
  }

  Future<void> _delete(
    _Delete event,
    Emitter<TagsManagerState> emit,
  ) async {
    emit(const TagsManagerState.loading());
    final result = await _deleteUseCase(event.id);
    result.fold(
      (failure) => emit(TagsManagerState.failure(failure.toString())),
      (_) => emit(TagsManagerState.deleted(event.id)),
    );
  }

  Future<void> _get(
    _Get event,
    Emitter<TagsManagerState> emit,
  ) async {
    emit(const TagsManagerState.loading());
    final result = await _getUseCase();
    result.fold(
      (failure) => emit(TagsManagerState.failure(failure.toString())),
      (categories) => emit(TagsManagerState.loaded(categories)),
    );
  }
}
