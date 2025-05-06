import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';
import 'package:zamaan/presentation_shared/models/entities/base_vm.dart';

/// An abstract base class that defines the contract for mapping
/// between presentation layer models (view models) and domain entities.
///
/// This class encapsulates the conversion logic ensuring a clean separation
/// between the UI and business logic layers as advocated in Clean Architecture.
/// It requires the implementation of two core methods (one for converting a view model
/// into an entity and another for converting an entity into a view model) and provides
/// utility methods to map lists of view models and entities.
///
/// **Example Usage:**
///
/// ```dart
/// // Suppose we have concrete types MyViewModel and MyEntity, and a concrete mapper:
/// final myMapper = MyVMMapper();
/// final myViewModel = MyViewModel(id: '1', name: 'Example');
/// final myEntity = myMapper.toEntity(myViewModel);
/// print(myEntity.id); // prints '1'
/// ```
abstract class ViewModelMapper<ViewModel extends BaseViewModel,
    Entity extends BaseEntityAbstraction> {
  /// Converts a given [model] of type [ViewModel] into its corresponding domain [Entity].
  ///
  /// Implementations should map all the necessary fields from the view model
  /// to construct a valid domain entity.
  ///
  /// **Example:**
  ///
  /// ```dart
  /// // Assuming MyVMMapper implements ViewModelMapper for MyViewModel and MyEntity:
  /// final myViewModel = MyViewModel(id: '1', name: 'Example');
  /// final myEntity = myMapper.toEntity(myViewModel);
  /// print(myEntity.id); // prints '1'
  /// ```
  Entity toEntity(ViewModel model);

  /// Converts a given domain [entity] into its corresponding [ViewModel].
  ///
  /// The optional [relations] parameter can provide additional related data
  /// needed for a comprehensive conversion.
  ///
  /// **Example:**
  ///
  /// ```dart
  /// // Using the same mapper as above:
  /// final myEntity = MyEntity(id: '2', name: 'Example Entity');
  /// // Optionally supply extra context via `relations`
  /// final myViewModel = myMapper.toVM(myEntity, relations: {'someKey': 'someValue'});
  /// print(myViewModel.name); // prints 'Example Entity' or uses the data in relations as applicable
  /// ```
  ViewModel toVM(Entity entity, {Map<String, dynamic>? relations});

  /// Converts a list of domain [entities] into a list of [ViewModel] instances.
  ///
  /// The conversion is performed by applying the [toVM] method on each entity.
  ///
  /// **Example:**
  ///
  /// ```dart
  /// // Given a list of entities:
  /// final entities = <MyEntity>[
  ///   MyEntity(id: '1', name: 'Entity 1'),
  ///   MyEntity(id: '2', name: 'Entity 2'),
  /// ];
  /// // Convert to a list of view models:
  /// final viewModels = myMapper.toVMList(entities);
  /// viewModels.forEach((vm) => print(vm.name));
  /// // Output:
  /// // Entity 1
  /// // Entity 2
  /// ```
  List<ViewModel> toVMList(List<Entity> entities, {Map<String, dynamic>? relations}) {
    return entities.map(toVM).toList();
  }

  /// Converts a list of [models] (of type [ViewModel]) into a list of corresponding domain [Entity] instances.
  ///
  /// The conversion is performed by applying the [toEntity] method on each model.
  ///
  /// **Example:**
  ///
  /// ```dart
  /// // Given a list of view models:
  /// final viewModels = <MyViewModel>[
  ///   MyViewModel(id: '3', name: 'VM 1'),
  ///   MyViewModel(id: '4', name: 'VM 2'),
  /// ];
  /// // Convert to a list of entities:
  /// final entities = myMapper.toEntityList(viewModels);
  /// entities.forEach((e) => print(e.name));
  /// // Output:
  /// // VM 1
  /// // VM 2
  /// ```
  List<Entity> toEntityList(List<ViewModel> models) {
    return models.map(toEntity).toList();
  }
}
