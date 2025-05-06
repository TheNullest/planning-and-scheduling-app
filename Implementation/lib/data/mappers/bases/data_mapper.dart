import 'package:dartz/dartz.dart';
import 'package:zamaan/core/errors/exceptions/failure.dart';
import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/enums/failure_type.dart';

/// Abstract mapper interface for entity conversions.
///
/// Provides methods to convert between domain entities, Hive models, and Supabase models.
abstract class DataMapper<Entity, Hive, Supabase> {
  /// Converts a Hive model to a domain entity.
  Entity toEntityFromHive(Hive model);

  /// Converts a Supabase model to a domain entity.
  Entity toEntityFromSupabase(Supabase model, {DataMap? relatedListModels});

  /// Converts a domain entity to a Hive model.
  Hive toHiveModel(Entity entity);

  /// Converts a domain entity to a Supabase model.
  Supabase toSupabaseModel(Entity entity);

  /// Converts a list of Hive models to a list of domain entities.
  List<Entity> toEntitiesFromHive(List<Hive> models) => tryCatchSimple<List<Entity>>(
        action: () => models.map(toEntityFromHive).toList(),
        failureType: FailureType.local,
      );

  /// Converts a list of Supabase models to a list of domain entities.
  List<Entity> toEntitiesFromSupabase(List<Supabase> models) => tryCatchSimple<List<Entity>>(
        action: () => models.map(toEntityFromSupabase).toList(),
        failureType: FailureType.local,
      );

  /// Converts a list of domain entities to a list of Hive models.
  List<Hive> toHiveModels(List<Entity> entities) => tryCatchSimple<List<Hive>>(
        action: () => entities.map(toHiveModel).toList(),
        failureType: FailureType.local,
      );

  /// Converts a list of domain entities to a list of Supabase models.
  List<Supabase> toSupabaseModels(List<Entity> entities) => tryCatchSimple<List<Supabase>>(
        action: () => entities.map(toSupabaseModel).toList(),
        failureType: FailureType.local,
      );

  T? foldEitherSingle<T>(Either<Failure, T?> either) {
    return either.fold(
      (left) => throw left,
      (right) => right,
    );
  }

  List<T> foldEitherList<T>(Either<Failure, List<T>> either) {
    return either.fold(
      (left) => throw left,
      (right) => right,
    );
  }

  Entity toEntityFromSupabaseFoldEither(Either<Failure, Supabase> either) =>
      toEntityFromSupabase(foldEitherSingle(either) as Supabase);

  Entity toEntityFromHiveFoldEither(Either<Failure, Hive> either) =>
      toEntityFromHive(foldEitherSingle(either) as Hive);

  List<Entity> toEntityFromSupabaseFoldEitherList(Either<Failure, List<Supabase>> either) =>
      toEntitiesFromSupabase(foldEitherList<Supabase>(either));

  List<Entity> toEntityFromHiveFoldEitherList(Either<Failure, List<Hive>> either) =>
      toEntitiesFromHive(foldEitherList(either));

  /// Converts an [Supabase] model into a JSON representation.
  ///
  /// [item] - The model to convert.
  ///
  /// Returns a list of JSON objects.
  Map<String, dynamic> toJson(Supabase item);

  /// Creates [Supabase] model from a JSON representation.
  ///
  /// [json] - A list of JSON objects representing the entities.
  ///
  /// Returns a list of entities.
  Supabase? fromJson(Map<String, dynamic> json);

  /// Converts a list of entities into a JSON representation.
  ///
  /// [items] - The list of entities to convert.
  ///
  /// Returns a list of JSON objects.
  List<Map<String, dynamic>> toJsonList(List<Supabase> items);

  /// Creates entities from a JSON representation.
  ///
  /// [jsonList] - A list of JSON objects representing the entities.
  ///
  /// Returns a list of entities.
  List<Supabase> fromJsonList(List<Map<String, dynamic>> jsonList);
}
