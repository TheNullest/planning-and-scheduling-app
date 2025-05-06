import 'package:dartz/dartz.dart';
import 'package:zamaan/core/cubits/connection/network_connectivity_monitor_cubit.dart';
import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/mappers/bases/data_mapper.dart';
import 'package:zamaan/data/sources/base_data_source.dart';
import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';
import 'package:zamaan/domain/enums/datasource_policy.dart';
import 'package:zamaan/domain/enums/failure_type.dart';
import 'package:zamaan/domain/repositories/bases/base_repository.dart';

abstract class BaseRepositoryImpl<
    Entity extends BaseEntityAbstraction,
    HiveModel extends BaseEntityAbstraction,
    SupabaseModel,
    LocalDataSource extends BaseDataSource<HiveModel>,
    RemoteDataSource extends BaseDataSource<SupabaseModel>,
    Mapper extends DataMapper<Entity, HiveModel, SupabaseModel>> extends BaseRepository<Entity> {
  BaseRepositoryImpl({
    required LocalDataSource localDataSource,
    required RemoteDataSource remoteDataSource,
    required Mapper dataMapper,
    required NetworkConnectivityMonitorCubit netConnectivity,
  })  : _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource,
        _dataMapper = dataMapper,
        _netConnectivity = netConnectivity;

  final BaseDataSource<HiveModel> _localDataSource;
  final BaseDataSource<SupabaseModel> _remoteDataSource;
  final Mapper _dataMapper;
  final NetworkConnectivityMonitorCubit _netConnectivity;

  @override
  EResultFutureVoid create(
    Entity entity, {
    DataSourcePolicy policy = DataSourcePolicy.localOnly,
  }) async =>
      tryCatchEither(
        action: () async {
          if (DataSourcePolicy.isLocal(policy)) {
            return _localDataSource.create(_dataMapper.toHiveModel(entity));
          }
          if (_netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
            await _remoteDataSource.create(_dataMapper.toSupabaseModel(entity));
          }
          return const Right(null);
        },
        failureType: FailureType.local,
      );

  @override
  EResultFutureVoid createBatch(
    List<Entity> entities, {
    DataSourcePolicy policy = DataSourcePolicy.localOnly,
  }) async =>
      tryCatchEither(
        action: () async {
          if (DataSourcePolicy.isLocal(policy)) {
            return _localDataSource.createBatch(_dataMapper.toHiveModels(entities));
          }
          if (_netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
            await _remoteDataSource.createBatch(_dataMapper.toSupabaseModels(entities));
          }
          return const Right(null);
        },
        failureType: FailureType.local,
      );

  @override
  EResultFutureVoid delete(
    String id, {
    DataSourcePolicy policy = DataSourcePolicy.localOnly,
  }) async =>
      tryCatchEither(
        action: () async {
          if (DataSourcePolicy.isLocal(policy)) {
            return _localDataSource.delete(id);
          }
          if (_netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
            await _remoteDataSource.deleteBatch([id]);
          }
          return const Right(null);
        },
        failureType: FailureType.local,
      );

  @override
  EResultFutureVoid deleteBatch(
    List<String> ids, {
    DataSourcePolicy policy = DataSourcePolicy.localOnly,
  }) async =>
      tryCatchEither(
        action: () async {
          if (DataSourcePolicy.isLocal(policy)) {
            return _localDataSource.deleteBatch(ids);
          }
          if (_netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
            return _remoteDataSource.deleteBatch(ids);
          }
          return const Right(null);
        },
        failureType: FailureType.local,
      );

  @override
  EResultFuture<List<Entity>> getAll({
    DataSourcePolicy policy = DataSourcePolicy.localOnly,
  }) async =>
      tryCatchEither(
        action: () async {
          if (DataSourcePolicy.isLocal(policy)) {
            final response = await _localDataSource.getAll();
            final result = _dataMapper.foldEitherList(response);
            return Right(_dataMapper.toEntitiesFromHive(result));
          }
          if (_netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
            final response = await _remoteDataSource.getAll();
            final result = _dataMapper.foldEitherList<SupabaseModel>(response);
            return Right(_dataMapper.toEntitiesFromSupabase(result));
          }

          return const Right([]);
        },
        failureType: FailureType.local,
      );

  @override
  EResultFuture<Entity?> getById(
    String id, {
    DataSourcePolicy policy = DataSourcePolicy.localOnly,
  }) async =>
      tryCatchEither(
        action: () async {
          if (DataSourcePolicy.isLocal(policy)) {
            final response = await _localDataSource.getById(id);
            final models = _dataMapper.foldEitherSingle<HiveModel>(response);
            return Right(_dataMapper.toEntityFromHive(models!));
          }
          if (_netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
            final response = await _remoteDataSource.getById(id);
            final models = _dataMapper.foldEitherSingle<SupabaseModel?>(response);
            return Right(_dataMapper.toEntityFromSupabase(models as SupabaseModel));
          }
          return const Right(null);
        },
        failureType: FailureType.local,
      );

  @override
  EResultFuture<List<Entity>> getByIds(
    List<String> ids, {
    DataSourcePolicy policy = DataSourcePolicy.localOnly,
  }) async =>
      tryCatchEither(
        action: () async {
          if (DataSourcePolicy.isLocal(policy)) {
            final response = await _localDataSource.getAllByIds(ids);
            final result = _dataMapper.foldEitherList<HiveModel>(response);
            return Right(_dataMapper.toEntitiesFromHive(result));
          }
          if (_netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
            final response = await _remoteDataSource.getAllByIds(ids);
            final result = _dataMapper.foldEitherList<SupabaseModel>(response);
            return Right(_dataMapper.toEntitiesFromSupabase(result));
          }
          return const Right([]);
        },
        failureType: FailureType.local,
      );

  @override
  EResultFutureVoid update(
    Entity entity, {
    DataSourcePolicy policy = DataSourcePolicy.localOnly,
  }) async =>
      tryCatchEither(
        action: () async {
          if (DataSourcePolicy.isLocal(policy)) {
            return _localDataSource.update(_dataMapper.toHiveModel(entity));
          }
          if (_netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
            return _remoteDataSource.updateBatch([_dataMapper.toSupabaseModel(entity)]);
          }
          return const Right(null);
        },
        failureType: FailureType.local,
      );

  @override
  EResultFutureVoid updateBatch(
    List<Entity> entities, {
    DataSourcePolicy policy = DataSourcePolicy.localOnly,
  }) async =>
      tryCatchEither(
        action: () async {
          if (DataSourcePolicy.isLocal(policy)) {
            return _localDataSource.updateBatch(_dataMapper.toHiveModels(entities));
          }
          if (_netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
            return _remoteDataSource.updateBatch(_dataMapper.toSupabaseModels(entities));
          }
          return const Right(null);
        },
        failureType: FailureType.local,
      );

  @override
  EResultFuture<bool> exists(
    String id, {
    DataSourcePolicy policy = DataSourcePolicy.localOnly,
  }) async =>
      tryCatchEither(
        action: () async {
          if (DataSourcePolicy.isLocal(policy)) {
            return _localDataSource.exists(id);
          }
          if (_netConnectivity.state is NetworkConnectivityMonitorSuccessState) {
            return _remoteDataSource.exists(id);
          }
          return const Right(false);
        },
        failureType: FailureType.local,
      );
}
