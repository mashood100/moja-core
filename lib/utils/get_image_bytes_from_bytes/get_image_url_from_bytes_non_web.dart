import 'dart:io';
import 'dart:math';
import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';

Future<String?> getImageUrlFromBytesNonWeb(Uint8List bytes) async {
  final random = Random().nextInt(1000000);
  final tempDir = await getTemporaryDirectory();
  final tempPath = tempDir.path;
  final filePath = '$tempPath/temp$random.png';
  await File(filePath).writeAsBytes(bytes);
  return filePath;
}
