import 'package:device_info_plus/device_info_plus.dart';

enum OS {
  android,
  ios,
  web,
  windows,
  macos,
  linux,
  unknown;

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

  static OS fromName(String name) {
    switch (name.toLowerCase()) {
      case 'android':
        return OS.android;
      case 'ios':
        return OS.ios;
      case 'web':
        return OS.web;
      case 'windows':
        return OS.windows;
      case 'macos':
        return OS.macos;
      case 'linux':
        return OS.linux;
      default:
        return OS.unknown;
    }
  }
}
