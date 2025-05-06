import 'package:uuid/uuid.dart';

bool isValidUVMD(String uuid) => Uuid.isValidUUID(fromString: uuid);

String get uuidGenerator => const Uuid().v4();
