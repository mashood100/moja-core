import 'dart:developer';
import 'dart:js_interop';
import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:web/web.dart' as web;

Future<String?> getImageUrlFromBytesWeb(Uint8List bytes, String type) async {
  try {
    final blob = web.Blob(
      [bytes.buffer].jsify()! as JSArray<JSAny>,
      web.BlobPropertyBag(type: type),
    );

    return web.URL.createObjectURL(blob);
  } on Exception catch (e) {
    log(
      'An error occurred while getting image url '
      'from bytes in getImageUrlFromBytesWeb: $e',
    );
    return null;
  }
}
