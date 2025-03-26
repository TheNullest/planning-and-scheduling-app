import 'dart:io';

abstract class PlatformWrapper {
  bool get isWindows;
  bool get isAndroid;
  bool get isLinux;
  bool get isIOS;
}

class PlatformWrapperImpl implements PlatformWrapper {
  @override
  bool get isAndroid => Platform.isAndroid;

  @override
  bool get isIOS => Platform.isIOS;

  @override
  bool get isLinux => Platform.isLinux;

  @override
  bool get isWindows => Platform.isWindows;
}
