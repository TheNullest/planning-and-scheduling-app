import 'package:zamaan/core/enums/datasource_policy.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/features/log/data/models/local/hive/device.dart';
import 'package:zamaan/features/log/data/models/remote/supabase/device/device.dart';
import 'package:zamaan/features/log/domain/entities/device.dart';

/// An abstract interface for managing device operations.
///
/// This repository defines methods for registering, updating, retrieving, and
/// unregistering devices in the system. It supports both local storage (Hive)
/// and remote database (Supabase) interactions.
///
/// ▸ **Type [T]:**
///   - Represents the device structure used in the repository. Depending on the
///     layer and intended use, [T] can correspond to:
///     1. **Domain Entity:** [DeviceEntity] used for business logic purposes.
///     2. **Supabase Model:** [DeviceSupabaseModel] used for direct interactions with Supabase.
///     3. **Hive Model:** [DeviceHiveModel] used for local storage and offline capabilities.
///
/// This design ensures seamless integration throughout the data flow and maintains
/// compatibility with both local and remote environments.
abstract interface class DeviceRepository<T> {
  /// Registers and stores one or multiple devices in the system.
  ///
  /// This method allows for bulk registration of devices in either Supabase or Hive,
  /// depending on the implementation. It ensures a scalable onboarding process and
  /// emphasizes data integrity by applying:
  /// - **Atomicity:** Local implementations (Hive) should perform operations within a single transaction.
  /// - **Rollback mechanisms:** Remote implementations (Supabase) should support batch inserts with rollback capabilities on failure.
  ///
  /// **Parameters:**
  /// - [device]: A list of devices of type [T] to be registered.
  ///
  /// **Returns:**
  /// - [EResultFutureVoid]:
  ///   - **Success:** All devices are successfully registered.
  ///   - **Failure:** May occur due to network errors, database conflicts, or invalid device data.
  EResultFutureVoid registerDevice(T device);

  /// Unregisters a device and terminates its active session.
  ///
  /// This method should be called when a device is no longer active, such as when:
  /// - A user logs out.
  /// - The app is uninstalled.
  /// - A device must be manually removed from the system.
  ///
  /// **Parameters:**
  /// - [id]: The unique identifier of the device to be unregistered. This identifier
  ///         is used for both filtering and validation during the operation.
  ///
  /// **Returns:**
  /// - [EResultFutureVoid]:
  ///   - **Success:** The device has been successfully unregistered.
  ///   - **Failure:** May occur due to network issues, invalid identifiers, or session conflicts.
  EResultFutureVoid unregisterDevice(String id);

  /// Updates the information for an existing device.
  ///
  /// This method is intended to modify device metadata, such as its last active timestamp,
  /// application version, or other contextual properties.
  ///
  /// **Parameters:**
  /// - [device]: An instance of type [T] (which may be a domain entity or a data model)
  ///             containing the updated device information.
  ///
  /// **Returns:**
  /// - [EResultFutureVoid]:
  ///   - **Success:** The device information is successfully updated.
  ///   - **Failure:** May occur due to data conflicts, invalid properties, or database connectivity issues.
  EResultFutureVoid updateDeviceInfo(T device);

  /// Retrieves a list of devices from the system.
  ///
  /// The method fetches devices from the storage layer specified by the [isLocal(policy)] flag:
  /// - **Local Storage (Hive):** When [isLocal(policy)] is set to `true`, ensuring offline availability.
  /// - **Remote Database (Supabase):** When [isLocal(policy)] is set to `false` (this is the default),
  ///   relying on network-based data.
  ///
  /// **Parameters:**
  /// - [isLocal(policy)]: A boolean flag that selects the target storage layer:
  ///   - `true`: Query local storage.
  ///   - `false`: Query remote storage (default).
  ///
  /// **Returns:**
  /// - [EResultFuture<List<T>>]:
  ///   - **Success:** A list of devices (entities or models) retrieved from the chosen layer.
  ///   - **Failure:** May occur due to network errors, data formatting issues, or invalid queries.
  EResultFuture<List<T>> getDevices();

  /// Retrieves a specific device by its unique identifier.
  ///
  /// This method fetches a single device record from the selected storage layer:
  /// - **Local Storage (Hive):** When [isLocal(policy)] is set to `true`, ensuring quick local access.
  /// - **Remote Database (Supabase):** When [isLocal(policy)] is set to `false` (default), requiring potential
  ///   network validations and error handling.
  ///
  /// **Parameters:**
  /// - [id]: The unique identifier of the device.
  /// - [isLocal(policy)]: Boolean flag indicating whether to search in local storage (`true`)
  ///   or in the cloud (`false`, default).
  ///
  /// **Returns:**
  /// - [EResultFuture<T>]:
  ///   - **Success:** The device matching the given identifier.
  ///   - **Failure:** An error if the device is not found or if issues occur during data retrieval.
  EResultFuture<T?> getDeviceById({required String id, required DataSourcePolicy policy});
}
