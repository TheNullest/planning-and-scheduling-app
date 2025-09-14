import 'package:zamaan/core/utils/typedef.dart';

/// Abstract base repository interface for managing domain entities with flexible data source strategy.
///
/// This repository defines the contract for basic CRUD operations and supports
/// configurable data source strategies (local, remote, or both) for each operation.
/// It serves as the foundation for all domain-specific repositories in the application.
///
/// ## Key Features:
/// - **Flexible Data Sources**: Each operation can use local, remote, or both data sources
/// - **Comprehensive CRUD**: Full create, read, update, delete functionality
/// - **Batch Operations**: Efficient bulk operations for multiple entities
/// - **Error Handling**: Consistent error handling via [EResult] types
///
/// ▸ **Type Parameter:**
///   - **[Entity]**: The domain entity type managed by this repository
///
/// ## Implementation Notes:
/// - Extend this class to create domain-specific repositories
/// - Override methods to provide entity-specific business logic
/// - Use [EResult] types for consistent error handling
/// - Consider data synchronization between local and remote sources
abstract class BaseRepository<Entity> {
  /// Retrieves all entities without filtering.
  EResultFuture<List<Entity>> get();

  /// Retrieves a single entity by ID. Returns null if not found.
  EResultFuture<Entity?> getById(String id);

  /// Retrieves multiple entities by their IDs.
  EResultFuture<List<Entity>> getByIds(List<String> ids);

  /// Creates a new entity. Returns the generated ID.
  EResultFuture<String> create(Entity entity);

  /// Updates an existing entity.
  EResultFutureVoid update(Entity entity);

  /// Deletes a single entity by ID.
  EResultFutureVoid delete(String id);

  /// Deletes multiple entities by IDs.
  EResultFutureVoid deleteBatch(List<String> ids);

  /// Creates multiple entities in batch.
  EResultFutureVoid createBatch(List<Entity> entities);

  /// Updates multiple entities in batch.
  EResultFutureVoid updateBatch(List<Entity> entities);

  /// Checks if an entity with the given ID exists.
  EResultFuture<bool> exists(String id);
}
