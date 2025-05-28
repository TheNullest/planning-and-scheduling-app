import 'package:dartz/dartz.dart';
import 'package:zamaan/core/cubits/connection/network_connectivity_monitor_cubit.dart';
import 'package:zamaan/core/utils/failure_type_detector.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/mappers/bases/data_mapper.dart';
import 'package:zamaan/data/mappers/bases/sub_task.dart';
import 'package:zamaan/data/sources/remote/supabase_data_source.dart';
import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/domain/enums/hive/priority.dart';
import 'package:zamaan/domain/enums/hive/task_status.dart';
import 'package:zamaan/domain/repositories/bases/base_repository_impl.dart';
import 'package:zamaan/domain/repositories/sub_task_repository.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/sub_task_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/sub_task/sub_task_supabase_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/local/bases/sub_task_data_source.dart';

class SubTaskRepositoryImpl extends BaseRepositoryImpl<
    SubTaskEntity,
    SubTaskHiveModel,
    SubTaskSupabaseModel,
    SubTaskLocalDataSource<SubTaskHiveModel>,
    SupabaseDataSource<SubTaskSupabaseModel, SubTaskDataMapper>,
    SubTaskDataMapper> implements SubTaskRepository {
  SubTaskRepositoryImpl({
    required super.localDataSource,
    required super.remoteDataSource,
    required super.dataMapper,
    required super.netConnectivity,
  })  : _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource,
        _dataMapper = dataMapper,
        _netConnectivity = netConnectivity;

  final SubTaskLocalDataSource<SubTaskHiveModel> _localDataSource;
  final SupabaseDataSource<SubTaskSupabaseModel, DataMapper> _remoteDataSource;
  final DataMapper _dataMapper;
  final NetworkConnectivityMonitorCubit _netConnectivity;
  @override
  EResultFuture<List<SubTaskEntity>> getBatchByPriority(Priority priority) async {
    try {
      final response = await _localDataSource.getBatchByPriority(priority);
      final models = _dataMapper.foldEitherList<SubTaskHiveModel>(response);
      return Right(_dataMapper.toEntitiesFromHive(models) as List<SubTaskEntity>);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  EResultFuture<List<SubTaskEntity>> getBatchByStatus(TaskStatus status) async {
    try {
      final response = await _localDataSource.getBatchByStatus(status);
      final models = _dataMapper.foldEitherList<SubTaskHiveModel>(response);
      return Right(_dataMapper.toEntitiesFromHive(models) as List<SubTaskEntity>);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  EResultFuture<List<SubTaskEntity>> getBatchByTaskIds(List<String> taskIds) async {
    try {
      final response = await _localDataSource.getBatchByTaskIds(taskIds);
      final models = _dataMapper.foldEitherList<SubTaskHiveModel>(response);
      return Right(_dataMapper.toEntitiesFromHive(models) as List<SubTaskEntity>);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  EResultFutureVoid deleteByTaskId(String taskId) async {
    try {
      final response = await _localDataSource.deleteByTaskId(taskId);
      return response;
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }
}
