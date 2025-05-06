import 'dart:convert';
import 'dart:typed_data';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:zamaan/core/services/flutter/secure_storage.dart';

/// A service class that securely manages the Hive encryption key by using
/// Flutter Secure Storage. The encryption key is generated (if not already stored)
/// and then retrieved for use with Hive's [HiveAesCipher] for data encryption.
abstract class HiveEncryptionService {
  HiveEncryptionService(this.secureStorage);

  // Secure storage instance for platform-specific secure key storage:
  // - iOS: Keychain
  // - Android: Encrypted SharedPreferences
  // - Web: HTTPS-only cookies/Web Crypto API
  final FlutterSecureStorageWrapper secureStorage;

  /// Retrieves the Hive encryption key as a [Uint8List] for use with Hive encryption.
  ///
  /// This method attempts to read the encryption key from secure storage using key.
  /// If no key is found, it generates a new key using
  /// [Hive.generateSecureKey()], stores the Base64-encoded key in secure storage,
  /// and returns the generated key as a [Uint8List].
  ///
  /// Returns a [Future<Uint8List>] containing the encryption key.
  ///
  /// Example usage:
  /// ```dart
  /// final encryptionKey = await HiveEncryptionService().getEncryptionKey();
  /// final box = await Hive.openBox(
  ///   'secureBox',
  ///   encryptionCipher: HiveAesCipher(encryptionKey),
  /// );
  /// ```
  Future<Uint8List> getEncryptionKey();

  Future<void> rotateEncryptionKey();
}

class HiveEncryptionServiceImpl extends HiveEncryptionService {
  HiveEncryptionServiceImpl(super.secureStorage);

  /// A constant key used to store and retrieve the Hive encryption key
  /// from secure storage.
  static const _keyStorageKey = 'rohaan.zamaan.hiveEncryptionKey';

  @override
  Future<Uint8List> getEncryptionKey() async {
    // Attempt to read the stored encryption key from secure storage.
    final storedKey = await secureStorage.read(_keyStorageKey);

    // If no stored key is found, generate a new encryption key.
    if (storedKey == null) {
      // Generate a new secure key. Note: Hive.generateSecureKey() returns a List<int>.
      final key = Hive.generateSecureKey();

      // Store the key in secure storage after encoding it to Base64.
      await secureStorage.write(
        key: _keyStorageKey,
        value: base64Encode(key),
      );

      // Return the generated key as a Uint8List.
      return Uint8List.fromList(key);
    } else {
      // If a key was found, decode the Base64 string and convert it into a Uint8List.
      return Uint8List.fromList(base64Decode(storedKey));
    }
  }

  @override
  Future<void> rotateEncryptionKey() async {
    final newKey = Hive.generateSecureKey();
    await secureStorage.write(
      key: _keyStorageKey,
      value: base64Encode(newKey),
    );
  }
}
