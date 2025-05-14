import 'package:uuid/uuid.dart';

bool isValidUUID(String uuid) => Uuid.isValidUUID(fromString: uuid);

String get uuidGenerator => const Uuid().v4();
