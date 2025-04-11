class DeviceInfo {
  const DeviceInfo({
    required this.deviceId,
    required this.os,
    required this.osVersion,
    required this.manufacturer,
    required this.model,
    required this.appVersion,
  });
  final String deviceId;
  final String os;
  final String osVersion;
  final String manufacturer;
  final String model;
  final String appVersion;
}
