import 'package:zamaan/core/utils/typedef.dart';

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
  /// - [fromLocal]: If `true`, retrieves entities from the local source.
  /// - [fromRemote]: If `true`, retrieves entities from the remote source.
  ///
  /// **Returns:**
  /// - A future containing a list of nullable entities.
  EResultFuture<List<Entity>> getAll({bool fromLocal = true, bool fromRemote = true});

  /// Retrieves a single entity by its unique identifier from local, remote, or both data sources.
  ///
  /// **Parameters:**
  /// - [id]: The unique identifier of the entity to retrieve.
  /// - [fromLocal]: If `true`, retrieves the entity from the local source.
  /// - [fromRemote]: If `true`, retrieves the entity from the remote source.
  ///
  /// **Returns:**
  /// - A future containing the nullable entity.
  EResultFuture<Entity?> getById(String id, {bool fromLocal = true, bool fromRemote = true});

  /// Retrieves multiple entities by their unique identifiers from local, remote, or both data sources.
  ///
  /// **Parameters:**
  /// - [ids]: The list of unique identifiers for the entities to retrieve.
  /// - [fromLocal]: If `true`, retrieves the entities from the local source.
  /// - [fromRemote]: If `true`, retrieves the entities from the remote source.
  ///
  /// **Returns:**
  /// - A future containing a list of nullable entities.
  EResultFuture<List<Entity>> getByIds(
    List<String> ids, {
    bool fromLocal = true,
    bool fromRemote = true,
  });

  /// Creates a single entity in local, remote, or both data sources.
  ///
  /// **Parameters:**
  /// - [entity]: The entity to create.
  /// - [fromLocal]: If `true`, creates the entity in the local source.
  /// - [fromRemote]: If `true`, creates the entity in the remote source.
  ///
  /// **Returns:**
  /// - A void future indicating success or failure of the operation.
  EResultFutureVoid create(Entity entity, {bool fromLocal = true, bool fromRemote = true});

  /// Updates a single entity in local, remote, or both data sources.
  ///
  /// **Parameters:**
  /// - [entity]: The entity with updated data.
  /// - [fromLocal]: If `true`, updates the entity in the local source.
  /// - [fromRemote]: If `true`, updates the entity in the remote source.
  ///
  /// **Returns:**
  /// - A void future indicating success or failure of the operation.
  EResultFutureVoid update(Entity entity, {bool fromLocal = true, bool fromRemote = true});

  /// Deletes a single entity by its unique identifier from local, remote, or both data sources.
  ///
  /// **Parameters:**
  /// - [id]: The unique identifier of the entity to delete.
  /// - [fromLocal]: If `true`, deletes the entity from the local source.
  /// - [fromRemote]: If `true`, deletes the entity from the remote source.
  ///
  /// **Returns:**
  /// - A void future indicating success or failure of the operation.
  EResultFutureVoid delete(String id, {bool fromLocal = true, bool fromRemote = true});

  /// Deletes multiple entities by their unique identifiers in local, remote, or both data sources.
  ///
  /// **Parameters:**
  /// - [ids]: The list of unique identifiers for the entities to delete.
  /// - [fromLocal]: If `true`, deletes the entities from the local source.
  /// - [fromRemote]: If `true`, deletes the entities from the remote source.
  ///
  /// **Returns:**
  /// - A void future indicating success or failure of the operation.
  EResultFutureVoid deleteBatch(List<String> ids, {bool fromLocal = true, bool fromRemote = true});

  /// Creates multiple entities in a batch operation in local, remote, or both data sources.
  ///
  /// **Parameters:**
  /// - [entities]: The list of entities to create.
  /// - [fromLocal]: If `true`, creates the entities in the local source.
  /// - [fromRemote]: If `true`, creates the entities in the remote source.
  ///
  /// **Returns:**
  /// - A void future indicating success or failure of the operation.
  EResultFutureVoid createBatch(
    List<Entity> entities, {
    bool fromLocal = true,
    bool fromRemote = true,
  });

  /// Updates multiple entities in a batch operation in local, remote, or both data sources.
  ///
  /// **Parameters:**
  /// - [entities]: The list of entities with updated data.
  /// - [fromLocal]: If `true`, updates the entities in the local source.
  /// - [fromRemote]: If `true`, updates the entities in the remote source.
  ///
  /// **Returns:**
  /// - A void future indicating success or failure of the operation.
  EResultFutureVoid updateBatch(
    List<Entity> entities, {
    bool fromLocal = true,
    bool fromRemote = true,
  });

  EResultFuture<List<Entity>> getWithinDateRange({
    required DateTime fromDate,
    required DateTime toDate,
    bool fromLocal = true,
    bool fromRemote = true,
  });

  EResultFuture<bool> exists(
    String id, {
    bool fromLocal = true,
    bool fromRemote = true,
  });
}
