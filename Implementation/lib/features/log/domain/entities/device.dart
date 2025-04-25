import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:zamaan/domain/enums/hive/os.dart';

/// Represents a device registered within the application ecosystem.
///
/// ▸ Primary Features:
/// - Tracks metadata about a user's device, such as its OS, app version, and hardware details.
/// - Used for synchronization, monitoring, and identifying active devices.
/// - Captures registration and last active timestamps for activity tracking.
///
/// ▸ Data Storage:
/// - Persisted locally using Hive for offline use and device management.
///
/// ▸ Usage:
/// - Identify and manage multiple devices associated with a single user.
/// - Facilitate cross-device synchronization workflows.
/// - Monitor device activity for analytics or troubleshooting.
class DeviceEntity with EquatableMixin {
  /// Constructs a new device entity with the specified properties.
  ///
  /// Parameters:
  /// - [id]: Unique identifier for the device (e.g., UUID or database ID).
  /// - [userId]: Identifier for the user to whom the device belongs.
  /// - [os]: Operating system of the device (e.g., Android, iOS).
  /// - [osVersion]: Version of the operating system running on the device.
  /// - [appVersion]: Version of the application installed on the device.
  /// - [manufacturer]: Name of the device manufacturer (e.g., Samsung, Apple).
  /// - [model]: Model name or number of the device (e.g., Galaxy S21, iPhone 14).
  /// - [registeredAt]: Timestamp indicating when the device was first registered.
  /// - [lastActive]: Timestamp indicating the last known activity of the device.
  DeviceEntity({
    required this.id,
    required this.userId,
    required this.os,
    required this.osVersion,
    required this.appVersion,
    required this.manufacturer,
    required this.model,
    required this.registeredAt,
    required this.lastActive,
  });

  /// Constructs an empty placeholder device entity for testing or default initialization.
  ///
  /// All fields are assigned generic values:
  /// - [id], [userId], [osVersion], [appVersion], [manufacturer], [model]: Default strings.
  /// - [os]: Defaults to [OS.android].
  /// - [registeredAt], [lastActive]: Current timestamp.
  DeviceEntity.empty()
      : this(
          id: '1',
          userId: 'userId',
          os: OS.android,
          osVersion: 'osVersion',
          appVersion: 'appVersion',
          manufacturer: 'manufacturer',
          model: 'model',
          registeredAt: DateTime.now(),
          lastActive: DateTime.now(),
        );

  /// Unique identifier for the device.
  @HiveField(0)
  final String id;

  /// Identifier for the user to whom the device belongs.
  @HiveField(1)
  final String userId;

  /// Operating system of the device (e.g., Android, iOS).
  @HiveField(2)
  final OS os;

  /// Version of the operating system running on the device.
  @HiveField(3)
  final String osVersion;

  /// Version of the application installed on the device.
  @HiveField(4)
  final String appVersion;

  /// Name of the device manufacturer (e.g., Samsung, Apple).
  @HiveField(5)
  final String manufacturer;

  /// Model name or number of the device (e.g., Galaxy S21, iPhone 14).
  @HiveField(6)
  final String model;

  /// Timestamp indicating when the device was first registered.
  ///
  /// Useful for tracking when the device joined the ecosystem.
  @HiveField(7)
  final DateTime registeredAt;

  /// Timestamp indicating the last known activity of the device.
  ///
  /// Helps in monitoring device usage and determining active devices.
  @HiveField(8)
  final DateTime lastActive;

  /// Converts the device entity into a readable string representation.
  ///
  /// Example output:
  /// ``` dart
  /// Device( id: 1, user id: userId, appVersion: appVersion,
  ///         os: OS.android, osVersion: osVersion,
  ///         manufacturer: manufacturer, model: model,
  ///         createdAt: registeredAt, lastActive: lastActive )
  /// ```
  @override
  String toString() {
    return '''
Device{ id: $id, user id: $userId, appVersion: $appVersion,
        os: $os, osVersion: $osVersion, manufacturer: $manufacturer,
        model: $model, createdAt: $registeredAt, lastActive: $lastActive}''';
  }

  /// Creates a copy of the current device entity with modified fields.
  ///
  /// Parameters:
  /// - [id], [userId], [os], [osVersion], [appVersion], [manufacturer], [model],
  ///   [registeredAt], [lastActive]: Optional parameters to override existing values.
  ///
  /// Returns:
  /// - A new instance of [DeviceEntity] with updated values.
  DeviceEntity copyWith({
    String? id,
    String? userId,
    OS? os,
    String? osVersion,
    String? appVersion,
    String? manufacturer,
    String? model,
    DateTime? registeredAt,
    DateTime? lastActive,
  }) {
    return DeviceEntity(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      os: os ?? this.os,
      osVersion: osVersion ?? this.osVersion,
      appVersion: appVersion ?? this.appVersion,
      manufacturer: manufacturer ?? this.manufacturer,
      model: model ?? this.model,
      registeredAt: registeredAt ?? this.registeredAt,
      lastActive: lastActive ?? this.lastActive,
    );
  }

  /// List of properties used for equality comparison.
  ///
  /// Ensures accurate comparison and hashing of device entities.
  @override
  List<Object?> get props => [
        id,
        userId,
        os,
        osVersion,
        appVersion,
        manufacturer,
        model,
        registeredAt,
        lastActive,
      ];
}
