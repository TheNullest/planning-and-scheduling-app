import 'dart:io';
import 'package:path_provider/path_provider.dart';

abstract class PathProviderWrapper {
  Future<Directory> getAppDocDirectory();
}

class PathProviderWrapperImpl implements PathProviderWrapper {
  @override
  Future<Directory> getAppDocDirectory() => getApplicationDocumentsDirectory();
}
