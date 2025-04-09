import 'package:zamaan/core/utils/typedef.dart';

/// An abstract interface for managing device operations.
///
/// This repository defines methods for registering, updating, retrieving, and
/// unregistering devices in the system. It provides support for both local
/// storage (Hive) and remote database (Supabase) interactions.
///
/// ▸ Type [T]:
///   - Represents the device structure used in the repository.
///   - [T] can correspond to:
///     1. Domain entity: [DeviceEntity] (for business logic purposes).
///     2. Supabase model: [DeviceSupabaseModel] (for interactions with Supabase database).
///     3. Hive model: [DeviceHiveModel] (for local storage and offline capabilities).
///
/// This flexibility ensures seamless integration across the app's data flow and
/// compatibility with both local and remote environments.
abstract class DeviceRepository<T> {
  /// Registers and stores one or multiple devices in the system.
  ///
  /// This method allows bulk registration of devices in either Supabase or
  /// Hive, depending on the implementation. It ensures efficient and
  /// scalable device onboarding.
  ///
  /// Parameters:
  /// - [devices]: A list of devices of type [T] to be registered.
  ///
  /// Returns:
  /// - [EResultFutureVoid]:
  ///   - Success: Indicates all devices have been successfully registered.
  ///   - Failure: May occur due to network issues, database conflicts, or
  ///     invalid data in the device list.
  EResultFutureVoid registerDevices(List<T> devices);

  /// Unregisters a device and closes its current session.
  ///
  /// This method should be called when:
  /// - A user logs out of the app.
  /// - The app is uninstalled from the device.
  /// - A device needs to be manually removed from the system.
  ///
  /// Parameters:
  /// - [id]: The unique identifier of the device to unregister.
  /// - [userId]: (Optional) The user ID associated with the device.
  ///   Used for filtering or validation purposes during the operation.
  ///
  /// Returns:
  /// - [EResultFutureVoid]:
  ///   - Success: Indicates the device has been successfully unregistered.
  ///   - Failure: May occur due to network issues, invalid identifiers, or
  ///     session conflicts.
  EResultFutureVoid unregisterDevice({required String id, String? userId});

  /// Updates the information of a device in the system.
  ///
  /// This method modifies device-related metadata, such as its last active
  /// timestamp, app version, or other properties depending on the use case.
  ///
  /// Parameters:
  /// - [device]: The device entity or model of type [T] containing updated
  ///   information.
  ///
  /// Returns:
  /// - [EResultFutureVoid]:
  ///   - Success: Indicates the device information has been successfully updated.
  ///   - Failure: May occur due to data conflicts, invalid device properties, or
  ///     database connectivity issues.
  EResultFutureVoid updateDeviceInfo(T device);

  /// Retrieves devices associated with a specific user.
  ///
  /// This method fetches all devices linked to the provided user ID. If no
  /// [userId] is provided, it retrieves all devices in the system. The data
  /// source (Hive or Supabase) depends on the repository implementation.
  ///
  /// Parameters:
  /// - [userId]: (Optional) The user ID whose devices are being retrieved.
  ///   If null, all devices are fetched.
  ///
  /// Returns:
  /// - [EResultFuture<List<T>>]:
  ///   - Success: A list of device entities or models matching the query.
  ///   - Failure: May occur due to network issues, invalid user identifiers,
  ///     or data format mismatches.
  EResultFuture<List<T>> getDevices(String? userId);
}
