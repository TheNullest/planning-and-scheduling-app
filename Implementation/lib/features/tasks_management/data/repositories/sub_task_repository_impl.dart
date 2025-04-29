import 'package:dartz/dartz.dart';
import 'package:zamaan/core/cubits/connection/network_connectivity_monitor_cubit.dart';
import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/mappers/mapper.dart';
import 'package:zamaan/data/sources/remote/supabase_data_source.dart';
import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/domain/enums/failure_type.dart';
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
    SupabaseDataSource<SubTaskSupabaseModel>,
    Mapper<SubTaskEntity, SubTaskHiveModel, SubTaskSupabaseModel>> implements SubTaskRepository {
  SubTaskRepositoryImpl({
    required super.localDataSource,
    required super.remoteDataSource,
    required super.mapper,
    required super.netConnectivity,
  })  : _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource,
        _mapper = mapper,
        _netConnectivity = netConnectivity;

  final SubTaskLocalDataSource<SubTaskHiveModel> _localDataSource;
  final SupabaseDataSource<SubTaskSupabaseModel> _remoteDataSource;
  final Mapper _mapper;
  final NetworkConnectivityMonitorCubit _netConnectivity;

  @override
  EResultFuture<List<SubTaskEntity>> getBatchByPriority(Priority priority) async => tryCatchEither(
        action: () async {
          final response = await _localDataSource.getBatchByPriority(priority);
          final models = _mapper.foldEitherList<SubTaskHiveModel>(response);
          return Right(_mapper.toEntitiesFromHive(models) as List<SubTaskEntity>);
        },
        failureType: FailureType.local,
      );

  @override
  EResultFuture<List<SubTaskEntity>> getBatchByStatus(TaskStatus status) async => tryCatchEither(
        action: () async {
          final response = await _localDataSource.getBatchByStatus(status);
          final models = _mapper.foldEitherList<SubTaskHiveModel>(response);
          return Right(_mapper.toEntitiesFromHive(models) as List<SubTaskEntity>);
        },
        failureType: FailureType.local,
      );

  @override
  EResultFuture<List<SubTaskEntity>> getBatchByTaskId(String taskId) async => tryCatchEither(
        action: () async {
          final response = await _localDataSource.getBatchByTaskId(taskId);
          final models = _mapper.foldEitherList<SubTaskHiveModel>(response);
          return Right(_mapper.toEntitiesFromHive(models) as List<SubTaskEntity>);
        },
        failureType: FailureType.local,
      );
}
