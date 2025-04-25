import 'package:device_info_plus/device_info_plus.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:zamaan/core/extensions/string.dart';

part 'os.g.dart';

/// Represents the operating system detected on the device.
/// This enum is used for UI display and system logic (e.g., conditional code paths)
/// and follows a consistent formatting pattern similar to other UI enums.
///
/// Example Usage:
/// ```dart
/// // Getting a formatted name
/// print(OS.android.name); // Output: "Android"
///
/// // Converting from a string
/// final os = OS.fromName("windows");
/// print(os); // Output: OS.windows
///
/// // Asynchronously detecting the device's OS
/// OS.getOs().then((currentOs) => print(currentOs.name));
/// ```
@HiveType(typeId: 103)
enum OS {
  @HiveField(0)
  android,
  @HiveField(1)
  ios,
  @HiveField(2)
  web,
  @HiveField(3)
  windows,
  @HiveField(4)
  macos,
  @HiveField(5)
  linux,
  @HiveField(6)
  unknown;

  /// Returns the OS name in a user-friendly sentence case.
  ///
  /// Example:
  /// ```dart
  /// print(OS.ios.name); // Output: "Ios" (or "iOS" if your toSentenceCase extension adjusts it)
  /// ```
  String get name => toString().split('.').last.toSentenceCase();

  /// Retrieves an [OS] value from the provided [name] string.
  /// The lookup is case-insensitive.
  ///
  /// Example:
  /// ```dart
  /// print(OS.fromName("web")); // Output: OS.web
  /// ```
  static OS fromName(String name) {
    return OS.values.firstWhere(
      (os) => os.name.toLowerCase() == name.toLowerCase(),
      orElse: () => OS.unknown,
    );
  }

  /// Asynchronously detects the device's operating system using [DeviceInfoPlugin].
  /// The returned [OS] value corresponds to one of the recognized platforms,
  /// or [OS.unknown] if the platform cannot be determined.
  ///
  /// Example:
  /// ```dart
  /// OS.getOs().then((currentOs) => print(currentOs.name));
  /// ```
  static Future<OS> getOs() async {
    final deviceInfo = await DeviceInfoPlugin().deviceInfo;

    return switch (deviceInfo) {
      AndroidDeviceInfo _ => OS.android,
      IosDeviceInfo _ => OS.ios,
      WebBrowserInfo _ => OS.web,
      WindowsDeviceInfo _ => OS.windows,
      MacOsDeviceInfo _ => OS.macos,
      LinuxDeviceInfo _ => OS.linux,
      _ => OS.unknown
    };
  }
}
