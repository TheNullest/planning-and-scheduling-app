import 'dart:io';

abstract class DirectoryWrapper {
  Directory get directory;
  set directory(Directory dir);
  Future<Directory> create({bool recursive = false});
  bool existsSync();
  String get path;
}

class DirectoryWrapperImpl implements DirectoryWrapper {
  late final Directory _directory;

  @override
  Directory get directory => _directory;

  @override
  set directory(Directory dir) => _directory = dir;

  @override
  Future<Directory> create({bool recursive = false}) async =>
      _directory.create(recursive: recursive);

  @override
  bool existsSync() => _directory.existsSync();

  @override
  String get path => _directory.path;
}
