import 'dart:io';

abstract class PathProviderWrapper {
  Future<Directory> getApplicationDocumentsDirectory();
}

class PathProviderWrapperImpl implements PathProviderWrapper {
  @override
  Future<Directory> getApplicationDocumentsDirectory() =>
      getApplicationDocumentsDirectory();
}
