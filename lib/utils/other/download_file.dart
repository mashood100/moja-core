import 'dart:convert';
import 'dart:developer';
import 'dart:js_interop';
import 'package:flutter/foundation.dart';
import 'package:web/web.dart' as web;

// this method will make pdf from the given pdf bytes
bool downloadFileBytes({
  required String fileName,
  required Uint8List bytes,
  required String type,
}) {
  try {
    if (kIsWeb) {
      final base64 = base64Encode(bytes);
      final pathList = fileName.split('/');
      final lastFilename = pathList.last;
      final href = 'data:$type;base64,$base64';
      var url = '';
      // check if the file is pdf or not,
      // if it is pdf then open it in new tab otherwise just download it
      final isTypeIsPdf = type.endsWith('pdf');
      if (isTypeIsPdf) {
        final blob = web.Blob(
          [bytes.buffer].jsify()! as JSArray<JSAny>,
          web.BlobPropertyBag(type: type),
        );
        url = web.URL.createObjectURL(blob);
        web.window.open(url, '_blank');
      }
      final anchor = web.HTMLAnchorElement()
        ..href = href
        ..download = lastFilename;

      web.document.body?.append(anchor);
      anchor
        ..click()
        ..remove();
      if (isTypeIsPdf) {
        web.URL.revokeObjectURL(url);
      }
    }
    return true;
  } on Exception catch (e) {
    debugPrint('An error occurred while making file: $e');
    return false;
  }
}

Future<bool> downloadFileByUrl({
  required String url,
  required String fileName,
}) async {
  try {
    final anchor = web.HTMLAnchorElement()
      ..href = url
      ..target = 'blank'
      ..download = fileName;

    web.document.body?.append(anchor);
    anchor
      ..click()
      ..remove();
    web.URL.revokeObjectURL(url);

    return true;
  } on Exception catch (e) {
    log('Error downloading file: $e');
    return false;
  }
}
