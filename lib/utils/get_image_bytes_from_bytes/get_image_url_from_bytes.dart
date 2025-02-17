import 'dart:isolate';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart' as service;
import 'package:moja_core/utils/get_image_bytes_from_bytes/get_image_url_from_bytes_non_web.dart';
import 'package:moja_core/utils/get_image_bytes_from_bytes/get_image_url_from_bytes_web.dart';

Future<String?> getMediaUrlFromBytes(Uint8List bytes, {String? type}) async {
  return _getImageUrlFromBytes(bytes, 'image/${type ?? 'png'}');
}

Future<String?> _getImageUrlFromBytes(Uint8List bytes, String type) async {
  if (kIsWeb) {
    return getImageUrlFromBytesWeb(bytes, type);
  } else {
    return await computeIsolate(
      () => getImageUrlFromBytesNonWeb(bytes),
    ) as Future<String?>;
  }
}

Future<dynamic> computeIsolate(Future<void> Function() function) async {
  final receivePort = ReceivePort();
  final rootToken = service.RootIsolateToken.instance!;
  await Isolate.spawn<_IsolateData>(
    _isolateEntry,
    _IsolateData(
      token: rootToken,
      function: function,
      answerPort: receivePort.sendPort,
    ),
  );
  return receivePort.first;
}

Future<void> _isolateEntry(_IsolateData isolateData) async {
  service.BackgroundIsolateBinaryMessenger.ensureInitialized(isolateData.token);
  isolateData.answerPort.send(isolateData.function);
}

class _IsolateData {
  _IsolateData({
    required this.token,
    required this.function,
    required this.answerPort,
  });
  final service.RootIsolateToken token;
  final Function function;
  final SendPort answerPort;
}
