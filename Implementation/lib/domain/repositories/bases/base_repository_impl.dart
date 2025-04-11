import 'package:dartz/dartz.dart';
import 'package:zamaan/core/cubits/connection/network_connectivity_monitor_cubit.dart';
import 'package:zamaan/core/enums/failure_type.dart';
import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/mappers/mapper.dart';
import 'package:zamaan/data/sources/base_data_source.dart';
import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';
import 'package:zamaan/domain/repositories/bases/base_repository.dart';

abstract class BaseRepositoryImpl<
    Entity extends BaseEntityAbstraction,
    HiveModel extends Entity,
    SupabaseModel,
    LocalDataSource extends BaseDataSource<HiveModel>,
    RemoteDataSource extends BaseDataSource<SupabaseModel>,
    DataMapper extends Mapper<Entity, HiveModel, SupabaseModel>> extends BaseRepository<Entity> {
  BaseRepositoryImpl({
    required LocalDataSource localDataSource,
    required RemoteDataSource remoteDataSource,
    required DataMapper mapper,
    required NetworkConnectivityMonitorCubit netConnectivity,
  })  : _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource,
        _mapper = mapper,
        _netConnectivity = netConnectivity;

  final BaseDataSource<HiveModel> _localDataSource;
  final BaseDataSource<SupabaseModel> _remoteDataSource;
  final DataMapper _mapper;
  final NetworkConnectivityMonitorCubit _netConnectivity;

  @override
  EResultFutureVoid create(Entity entity,
          {bool fromLocal = false, bool fromRemote = false}) async =>
      tryCatchEither(
        action: () async {
          if (fromLocal) {
            return _localDataSource.create(_mapper.toHiveModel(entity));
          }
          if (fromRemote && _netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
            await _remoteDataSource.create(_mapper.toSupabaseModel(entity));
          }
          return const Right(null);
        },
        failureType: FailureType.local,
      );

  @override
  EResultFutureVoid createBatch(
    List<Entity> entities, {
    bool fromLocal = false,
    bool fromRemote = false,
  }) async =>
      tryCatchEither(
        action: () async {
          if (fromLocal) {
            return _localDataSource.createBatch(_mapper.toHiveModels(entities));
          }
          if (fromRemote && _netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
            await _remoteDataSource.createBatch(_mapper.toSupabaseModels(entities));
          }
          return const Right(null);
        },
        failureType: FailureType.local,
      );

  @override
  EResultFutureVoid delete(String id, {bool fromLocal = false, bool fromRemote = false}) async =>
      tryCatchEither(
        action: () async {
          if (fromLocal) {
            return _localDataSource.delete(id);
          }
          if (fromRemote && _netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
            await _remoteDataSource.deleteBatch([id]);
          }
          return const Right(null);
        },
        failureType: FailureType.local,
      );

  @override
  EResultFutureVoid deleteBatch(
    List<String> ids, {
    bool fromLocal = false,
    bool fromRemote = false,
  }) async =>
      tryCatchEither(
        action: () async {
          if (fromLocal) {
            return _localDataSource.deleteBatch(ids);
          }
          if (fromRemote && _netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
            return _remoteDataSource.deleteBatch(ids);
          }
          return const Right(null);
        },
        failureType: FailureType.local,
      );

  @override
  EResultFuture<List<Entity>> getAll({bool fromLocal = false, bool fromRemote = false}) async =>
      tryCatchEither(
        action: () async {
          if (fromLocal) {
            final response = await _localDataSource.getAll();
            final result = _mapper.foldEitherList(response);
            return Right(_mapper.toEntitiesFromHive(result));
          }
          if (fromRemote && _netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
            final response = await _remoteDataSource.getAll();
            final result = _mapper.foldEitherList<SupabaseModel>(response);
            return Right(_mapper.toEntitiesFromSupabase(result));
          }

          return const Right([]);
        },
        failureType: FailureType.local,
      );

  @override
  EResultFuture<Entity?> getById(
    String id, {
    bool fromLocal = false,
    bool fromRemote = false,
  }) async =>
      tryCatchEither(
        action: () async {
          if (fromLocal) {
            final response = await _localDataSource.getByValue(id);
            final models = _mapper.foldEitherSingle<HiveModel>(response);
            return Right(_mapper.toEntityFromHive(models!));
          }
          if (fromRemote && _netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
            final response = await _remoteDataSource.getByValue(id);
            final models = _mapper.foldEitherSingle<SupabaseModel?>(response);
            return Right(_mapper.toEntityFromSupabase(models as SupabaseModel));
          }
          return const Right(null);
        },
        failureType: FailureType.local,
      );

  @override
  EResultFuture<List<Entity>> getByIds(
    List<String> ids, {
    bool fromLocal = false,
    bool fromRemote = false,
  }) async =>
      tryCatchEither(
        action: () async {
          if (fromLocal) {
            final response = await _localDataSource.getAllByValues(ids);
            final result = _mapper.foldEitherList<HiveModel>(response);
            return Right(_mapper.toEntitiesFromHive(result));
          }
          if (fromRemote && _netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
            final response = await _remoteDataSource.getAllByValues(ids);
            final result = _mapper.foldEitherList<SupabaseModel>(response);
            return Right(_mapper.toEntitiesFromSupabase(result));
          }
          return const Right([]);
        },
        failureType: FailureType.local,
      );

  @override
  EResultFutureVoid update(Entity entity,
          {bool fromLocal = false, bool fromRemote = false}) async =>
      tryCatchEither(
        action: () async {
          if (fromLocal) {
            return _localDataSource.update(_mapper.toHiveModel(entity));
          }
          if (fromRemote && _netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
            return _remoteDataSource.updateBatch([_mapper.toSupabaseModel(entity)]);
          }
          return const Right(null);
        },
        failureType: FailureType.local,
      );

  @override
  EResultFutureVoid updateBatch(
    List<Entity> entities, {
    bool fromLocal = false,
    bool fromRemote = false,
  }) async =>
      tryCatchEither(
        action: () async {
          if (fromLocal) {
            return _localDataSource.updateBatch(_mapper.toHiveModels(entities));
          }
          if (fromRemote && _netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
            return _remoteDataSource.updateBatch(_mapper.toSupabaseModels(entities));
          }
          return const Right(null);
        },
        failureType: FailureType.local,
      );

  @override
  EResultFuture<bool> exists(String id, {bool fromLocal = false, bool fromRemote = false}) async =>
      tryCatchEither(
        action: () async {
          if (fromLocal) {
            return _localDataSource.exists(id);
          }
          if (fromRemote && _netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
            return _remoteDataSource.exists(id);
          }
          return const Right(false);
        },
        failureType: FailureType.local,
      );

  @override
  EResultFuture<List<Entity>> getWithinDateRange({
    required DateTime fromDate,
    required DateTime toDate,
    bool fromLocal = false,
    bool fromRemote = false,
  }) async =>
      tryCatchEither(
        action: () async {
          if (fromLocal) {
            final response =
                await _localDataSource.getAllWithinDateRange(fromDate: fromDate, toDate: toDate);
            final result = _mapper.foldEitherList<HiveModel>(response);
            return Right(_mapper.toEntitiesFromHive(result));
          }
          if (fromRemote && _netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
            final response =
                await _remoteDataSource.getAllWithinDateRange(fromDate: fromDate, toDate: toDate);
            final result = _mapper.foldEitherList<SupabaseModel>(response);
            return Right(_mapper.toEntitiesFromSupabase(result));
          }
          return const Right([]);
        },
        failureType: FailureType.local,
      );
}
