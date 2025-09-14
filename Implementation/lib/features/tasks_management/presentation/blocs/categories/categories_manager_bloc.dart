import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zamaan/domain/entities/category.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/category/create_category_use_case.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/category/delete_category_use_case.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/category/get_categories_use_case.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/category/update_category_use_case.dart';

part 'categories_manager_event.dart';
part 'categories_manager_state.dart';
part 'categories_manager_bloc.freezed.dart';

class CategoriesManagerBloc extends Bloc<CategoriesManagerEvent, CategoriesManagerState> {
  CategoriesManagerBloc({
    required GetCategoriesUseCase getUseCase,
    required CreateCategoryUseCase createUseCase,
    required UpdateCategoryUseCase updateUseCase,
    required DeleteCategoryUseCase deleteUseCase,
  })  : _getUseCase = getUseCase,
        _createUseCase = createUseCase,
        _updateUseCase = updateUseCase,
        _deleteUseCase = deleteUseCase,
        super(const _Initial()) {
    on<CategoriesManagerEvent>((event, emit) async {
      await event.map(
        started: (e) async => _handleStarted(emit),
        create: (e) async => _create(e, emit),
        update: (e) async => _update(e, emit),
        delete: (e) async => _delete(e, emit),
        get: (e) async => _get(e, emit),
      );
    });
  }

  final GetCategoriesUseCase _getUseCase;
  final CreateCategoryUseCase _createUseCase;
  final UpdateCategoryUseCase _updateUseCase;
  final DeleteCategoryUseCase _deleteUseCase;

  Future<void> _handleStarted(Emitter<CategoriesManagerState> emit) async {
    emit(const CategoriesManagerState.loading());
    await _get(const _Get(), emit);
  }

  Future<void> _create(
    _Create event,
    Emitter<CategoriesManagerState> emit,
  ) async {
    emit(const CategoriesManagerState.loading());
    final result = await _createUseCase(event.entity);
    result.fold(
      (failure) => emit(CategoriesManagerState.failure(failure.toString())),
      (id) => emit(CategoriesManagerState.created(event.entity)),
    );
  }

  Future<void> _update(
    _Update event,
    Emitter<CategoriesManagerState> emit,
  ) async {
    emit(const CategoriesManagerState.loading());
    final result = await _updateUseCase(event.entity);
    result.fold(
      (failure) => emit(CategoriesManagerState.failure(failure.toString())),
      (_) => emit(CategoriesManagerState.updated(event.entity)),
    );
  }

  Future<void> _delete(
    _Delete event,
    Emitter<CategoriesManagerState> emit,
  ) async {
    emit(const CategoriesManagerState.loading());
    final result = await _deleteUseCase(event.id);
    result.fold(
      (failure) => emit(CategoriesManagerState.failure(failure.toString())),
      (_) => emit(CategoriesManagerState.deleted(event.id)),
    );
  }

  Future<void> _get(
    _Get event,
    Emitter<CategoriesManagerState> emit,
  ) async {
    emit(const CategoriesManagerState.loading());
    final result = await _getUseCase();
    result.fold(
      (failure) => emit(CategoriesManagerState.failure(failure.toString())),
      (categories) => emit(CategoriesManagerState.loaded(categories)),
    );
  }
}
