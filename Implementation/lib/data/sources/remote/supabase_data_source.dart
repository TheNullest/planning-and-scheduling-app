import 'package:dartz/dartz.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/mappers/bases/data_mapper.dart';
import 'package:zamaan/data/models/pagination_options.dart';
import 'package:zamaan/data/sources/base_data_source.dart';
import 'package:zamaan/domain/enums/failure_type.dart';

abstract class SupabaseDataSource<T, Mapper extends DataMapper> extends BaseDataSource<T> {
  SupabaseDataSource({
    required Mapper dataMapper,
    required SupabaseClient client,
    required String collectionPath,
    required PaginationOptions defaultPagination,
  })  : _dataMapper = dataMapper,
        _client = client,
        _collectionPath = collectionPath,
        _defaultPagination = defaultPagination;

  final Mapper _dataMapper;

  /// Cloud client instance for handling network operations.
  final SupabaseClient _client;
  SupabaseClient get client => _client;

  /// Path to the main collection/endpoint for the entity.
  final String _collectionPath;
  String get collectionPath => _collectionPath;

  /// Default pagination settings for list operations.
  final PaginationOptions _defaultPagination;
  PaginationOptions get defaultPagination => _defaultPagination;

  late String selectQuery = '*';

  @override
  EResultFutureVoid deleteBatch(List<String> ids) async => tryCatchEither(
        action: () async {
          await client
              .from(collectionPath)
              .delete()
              .or(conditionToString(conditions: ids, join: ','));
          return const Right(null);
        },
        failureType: FailureType.remote,
      );

  @override
  EResultFutureVoid createBatch(List<T> items) async => tryCatchEither(
        action: () async {
          await client.from(collectionPath).insert(_dataMapper.toJsonList(items));
          return const Right(null);
        },
        failureType: FailureType.remote,
      );

  @override
  EResultFutureVoid updateBatch(List<T> items) async => tryCatchEither(
        action: () async {
          await client.from(collectionPath).upsert(_dataMapper.toJsonList(items));
          return const Right(null);
        },
        failureType: FailureType.remote,
      );

  @override
  EResultFuture<bool> exists(String id) async => tryCatchEither(
        action: () async {
          final result =
              await client.from(collectionPath).select(selectQuery).eq('id', id).single();
          return Right(result.isNotEmpty);
        },
        failureType: FailureType.remote,
      );

  @override
  EResultFuture<List<T>> getAll(

          //   {
          //   Map<String, dynamic>? filters,
          //   PaginationOptions? pagination,
          //   SortingOption? sorting,
          // }
          ) async =>
      tryCatchEither<List<T>>(
        action: () async {
          // final query = client
          //     .from(collectionPath)
          //     .select(selecteQuery)
          //     .limit(
          //       pagination?.limit ?? defaultPagination.limit,
          //     )
          //     .order(
          //       sorting!.field,
          //       ascending: sorting.ascending,
          //     );

          // final result = await query;

          final result = await client.from(collectionPath).select(selectQuery);
          return Right(_dataMapper.fromJsonList(result) as List<T>);
        },
        failureType: FailureType.remote,
      );

  @override
  EResultFuture<T> getById(String id) async => tryCatchEither<T>(
        action: () async {
          final result =
              await client.from(collectionPath).select(selectQuery).eq('id', id).single();
          return Right(_dataMapper.fromJson(result) as T);
        },
        failureType: FailureType.remote,
      );
  @override
  EResultFutureVoid update(T entity) async => tryCatchEither(
        action: () async {
          await client.from(collectionPath).update(_dataMapper.toJson(entity));
          return const Right(null);
        },
        failureType: FailureType.remote,
      );
  @override
  EResultFuture<List<T>> getAllByIds(List<String> ids) async => tryCatchEither<List<T>>(
        action: () async {
          final result = await client
              .from(collectionPath)
              .select(selectQuery)
              .or(conditionToString(conditions: ids, join: ','));
          return Right(_dataMapper.fromJsonList(result) as List<T>);
        },
        failureType: FailureType.remote,
      );

  @override
  EResultFutureVoid create(T entity) async => tryCatchEither(
        action: () async {
          await client.from(collectionPath).insert(_dataMapper.toJson(entity));
          return const Right(null);
        },
        failureType: FailureType.remote,
      );

  @override
  EResultFutureVoid delete(String id) async => tryCatchEither(
        action: () async {
          await client.from(collectionPath).delete().eq('id', id);
          return const Right(null);
        },
        failureType: FailureType.remote,
      );
}
