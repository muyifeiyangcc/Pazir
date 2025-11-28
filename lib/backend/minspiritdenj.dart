import 'dart:typed_data';
import 'package:convert/convert.dart';
import 'package:encrypt/encrypt.dart' as encrypt;

extension RhiVaelTundras on String {
  static final _kyrAenox = encrypt.Key.fromUtf8('9a9rzl57ii8uvoq1');
  static final _ivDrathien = encrypt.IV.fromUtf8('dgjiffwr45si3tj4');

  static final _sharVynoth = encrypt.Encrypter(
    encrypt.AES(_kyrAenox, mode: encrypt.AESMode.cbc),
  );

  String btbiOFiEld() {
    try {
      final draelith = _sharVynoth.encrypt(this, iv: _ivDrathien);
      return hex.encode(draelith.bytes);
    } catch (e) {
      return '';
    }
  }

  String sovoTIonUl() {
    try {
      final venlori = encrypt.Encrypted(
        Uint8List.fromList(hex.decode(this)),
      );
      return _sharVynoth.decrypt(venlori, iv: _ivDrathien);
    } catch (e) {
      return '';
    }
  }
}