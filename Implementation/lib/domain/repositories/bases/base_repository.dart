import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/enums/datasource_policy.dart';

/// Abstract base repository interface for managing entities in local and remote data sources.
///
/// This repository provides methods for basic CRUD operations and supports
/// flexibility in choosing between local and remote data sources for each operation.
///
/// ▸ **Type Parameter:**
///   - **[Entity]**: The type of the domain entity managed by the repository.
abstract class BaseRepository<Entity> {
  /// Retrieves all entities from local, remote, or both data sources.
  ///
  /// **Parameters:**
  ///
  /// **Returns:**
  /// - A future containing a list of nullable entities.
  EResultFuture<List<Entity>> getAll({
    DataSourcePolicy policy = DataSourcePolicy.localOnly,
  });

  /// Retrieves a single entity by its unique identifier from local, remote, or both data sources.
  ///
  /// **Parameters:**
  /// - [id]: The unique identifier of the entity to retrieve.
  ///
  /// **Returns:**
  /// - A future containing the nullable entity.
  EResultFuture<Entity?> getById(
    String id, {
    DataSourcePolicy policy = DataSourcePolicy.localOnly,
  });

  /// Retrieves multiple entities by their unique identifiers from local, remote, or both data sources.
  ///
  /// **Parameters:**
  /// - [ids]: The list of unique identifiers for the entities to retrieve.
  ///
  /// **Returns:**
  /// - A future containing a list of nullable entities.
  EResultFuture<List<Entity>> getByIds(
    List<String> ids, {
    DataSourcePolicy policy = DataSourcePolicy.localOnly,
  });

  /// Creates a single entity in local, remote, or both data sources.
  ///
  /// **Parameters:**
  /// - [entity]: The entity to create.
  ///
  /// **Returns:**
  /// - A void future indicating success or failure of the operation.
  EResultFutureVoid create(
    Entity entity, {
    DataSourcePolicy policy = DataSourcePolicy.localOnly,
  });

  /// Updates a single entity in local, remote, or both data sources.
  ///
  /// **Parameters:**
  /// - [entity]: The entity with updated data.
  ///
  /// **Returns:**
  /// - A void future indicating success or failure of the operation.
  EResultFutureVoid update(
    Entity entity, {
    DataSourcePolicy policy = DataSourcePolicy.localOnly,
  });

  /// Deletes a single entity by its unique identifier from local, remote, or both data sources.
  ///
  /// **Parameters:**
  /// - [id]: The unique identifier of the entity to delete.
  /// **Returns:**
  /// - A void future indicating success or failure of the operation.
  EResultFutureVoid delete(
    String id, {
    DataSourcePolicy policy = DataSourcePolicy.localOnly,
  });

  /// Deletes multiple entities by their unique identifiers in local, remote, or both data sources.
  ///
  /// **Parameters:**
  /// - [ids]: The list of unique identifiers for the entities to delete.
  ///
  /// **Returns:**
  /// - A void future indicating success or failure of the operation.
  EResultFutureVoid deleteBatch(
    List<String> ids, {
    DataSourcePolicy policy = DataSourcePolicy.localOnly,
  });

  /// Creates multiple entities in a batch operation in local, remote, or both data sources.
  ///
  /// **Parameters:**
  /// - [entities]: The list of entities to create.
  ///
  /// **Returns:**
  /// - A void future indicating success or failure of the operation.
  EResultFutureVoid createBatch(
    List<Entity> entities, {
    DataSourcePolicy policy = DataSourcePolicy.localOnly,
  });

  /// Updates multiple entities in a batch operation in local, remote, or both data sources.
  ///
  /// **Parameters:**
  /// - [entities]: The list of entities with updated data.
  ///
  /// **Returns:**
  /// - A void future indicating success or failure of the operation.
  EResultFutureVoid updateBatch(
    List<Entity> entities, {
    DataSourcePolicy policy = DataSourcePolicy.localOnly,
  });

  EResultFuture<bool> exists(
    String id, {
    DataSourcePolicy policy = DataSourcePolicy.localOnly,
  });
}
