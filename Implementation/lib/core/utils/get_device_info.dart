import 'package:device_info_plus/device_info_plus.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:zamaan/domain/entities/utils/device_info.dart';
import 'package:zamaan/domain/enums/hive/os.dart';

Future<DeviceInfo> getDeviceInfo() async {
  final deviceInfo = DeviceInfoPlugin();
  final packageInfo = await PackageInfo.fromPlatform();
  return switch (deviceInfo) {
    final WebBrowserInfo web => DeviceInfo(
        deviceId: web.userAgent ?? 'Unknown',
        os: OS.web.name,
        osVersion: web.userAgent ?? 'Unknown',
        manufacturer: 'Unknown',
        model: 'Unknown',
        appVersion: packageInfo.version,
      ),
    final WindowsDeviceInfo windows => DeviceInfo(
        deviceId: windows.deviceId,
        os: OS.windows.name,
        osVersion:
            '${windows.displayVersion} ${windows.majorVersion} ${windows.minorVersion} ${windows.csdVersion}',
        manufacturer: windows.buildLab,
        model: windows.platformId.toString(),
        appVersion: packageInfo.version,
      ),
    final AndroidDeviceInfo android => DeviceInfo(
        deviceId: android.id,
        os: OS.android.name,
        osVersion: android.version.release,
        manufacturer: android.manufacturer,
        model: android.model,
        appVersion: packageInfo.version,
      ),
    final IosDeviceInfo ios => DeviceInfo(
        deviceId: ios.identifierForVendor.toString(),
        os: OS.ios.name,
        osVersion: ios.systemVersion,
        manufacturer: ios.utsname.machine,
        model: ios.name,
        appVersion: packageInfo.version,
      ),
    final LinuxDeviceInfo linux => DeviceInfo(
        deviceId: linux.id,
        os: OS.linux.name,
        osVersion: linux.version ?? 'Unknown',
        manufacturer: linux.machineId ?? 'Unknown',
        model: linux.buildId ?? 'Unknown',
        appVersion: packageInfo.version,
      ),
    _ => DeviceInfo(
        deviceId: 'Unknown',
        os: 'Unknown',
        osVersion: 'Unknown',
        manufacturer: 'Unknown',
        model: 'Unknown',
        appVersion: packageInfo.version,
      ),
  };
}
