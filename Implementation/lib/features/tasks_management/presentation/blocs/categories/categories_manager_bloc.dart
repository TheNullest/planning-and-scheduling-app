import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zamaan/domain/entities/category.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/category/create_category_usecase.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/category/delete_category_usecase.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/category/fetch_all_categories_usecase.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/category/update_category_usecase.dart';

part 'categories_manager_event.dart';
part 'categories_manager_state.dart';
part 'categories_manager_bloc.freezed.dart';

class CategoriesManagerBloc extends Bloc<CategoriesManagerEvent, CategoriesManagerState> {
  CategoriesManagerBloc({
    required FetchAllCategoriesUsecase fetchAllUsecase,
    required CreateCategoryUsecase createUsecase,
    required UpdateCategoryUsecase updateUsecase,
    required DeleteCategoryUsecase deleteUsecase,
  })  : _fetchAllUsecase = fetchAllUsecase,
        _createUsecase = createUsecase,
        _updateUsecase = updateUsecase,
        _deleteUsecase = deleteUsecase,
        super(const _Initial()) {
    on<CategoriesManagerEvent>((event, emit) async {
      await event.map(
        started: (e) async => _handleStarted(emit),
        create: (e) async => _create(e, emit),
        update: (e) async => _update(e, emit),
        delete: (e) async => _delete(e, emit),
        fetchAll: (e) async => _fetchAll(e, emit),
      );
    });
  }

  final FetchAllCategoriesUsecase _fetchAllUsecase;
  final CreateCategoryUsecase _createUsecase;
  final UpdateCategoryUsecase _updateUsecase;
  final DeleteCategoryUsecase _deleteUsecase;

  Future<void> _handleStarted(Emitter<CategoriesManagerState> emit) async {
    emit(const CategoriesManagerState.loading());
    await _fetchAll(const _FetchAll(), emit);
  }

  Future<void> _create(
    _Create event,
    Emitter<CategoriesManagerState> emit,
  ) async {
    emit(const CategoriesManagerState.loading());
    final result = await _createUsecase(event.entity);
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
    final result = await _updateUsecase(event.entity);
    result.fold(
      (failure) => emit(CategoriesManagerState.failure(failure.toString())),
      (_) => emit(CategoriesManagerState.updated(event.entity.id)),
    );
  }

  Future<void> _delete(
    _Delete event,
    Emitter<CategoriesManagerState> emit,
  ) async {
    emit(const CategoriesManagerState.loading());
    final result = await _deleteUsecase(event.id);
    result.fold(
      (failure) => emit(CategoriesManagerState.failure(failure.toString())),
      (_) => emit(CategoriesManagerState.deleted(event.id)),
    );
  }

  Future<void> _fetchAll(
    _FetchAll event,
    Emitter<CategoriesManagerState> emit,
  ) async {
    emit(const CategoriesManagerState.loading());
    final result = await _fetchAllUsecase();
    result.fold(
      (failure) => emit(CategoriesManagerState.failure(failure.toString())),
      (categories) => emit(CategoriesManagerState.fetched(categories)),
    );
  }
}
