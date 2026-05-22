import 'dart:typed_data';
import 'package:encrypt/encrypt.dart' as encrypt;
import 'package:convert/convert.dart';

extension ManagerString on String {
  static final key = encrypt.Key.fromUtf8('pibbsdqxyhzpvu1a');
  static final iv = encrypt.IV.fromUtf8('0lvrts4rsa3282zc');
  static final encrypter = encrypt.Encrypter(
    encrypt.AES(key, mode: encrypt.AESMode.cbc),
  );

  String managerEncode() {
    try {
      final encrypted = encrypter.encrypt(this, iv: iv);
      return hex.encode(encrypted.bytes);
    } catch (e) {
      return '';
    }
  }

  String managerDecrypt() {
    try {
      final encrypted = encrypt.Encrypted(Uint8List.fromList(hex.decode(this)));
      return encrypter.decrypt(encrypted, iv: iv);
    } catch (e) {
      return '';
    }
  }
}
