import 'dart:convert';

import 'package:logger/logger.dart';

final lOg = Logger();
class JwtDecoder {
  static Map<String, dynamic> parseJwt(String token) {
    final parts = token.split('.');
    if (parts.length != 3) {
      throw const FormatException('Invalid token');
    }

    final payload = _decodeBase64(parts[1]);
    final payloadMap = json.decode(payload);
    if (payloadMap is! Map<String, dynamic>) {
      throw const FormatException('Invalid payload');
    }

    return payloadMap;
  }

  static String _decodeBase64(String str) {
    var output = str.replaceAll('-', '+').replaceAll('_', '/');
    switch (output.length % 4) {
      case 0:
        break;
      case 2:
        output += '==';
      case 3:
        output += '=';
      default:
        throw Exception('Illegal base64url string!');
    }
    return utf8.decode(base64Url.decode(output));
  }
}

class TokenExpirationChecker {
  static bool isTokenExpired(String token) {
    try {
      final decodedToken = JwtDecoder.parseJwt(token);

      if (!decodedToken.containsKey('exp')) {
        return true; // If there's no expiration claim, consider it expired
      }

      final expirationTimestamp = decodedToken['exp'] as int;
      final expirationDateTime =
          DateTime.fromMillisecondsSinceEpoch(expirationTimestamp * 1000);
      final currentDateTime = DateTime.now();

      return currentDateTime.isAfter(expirationDateTime);
    } on Exception catch (e) {
      lOg.e('Error decoding token: $e');
      return true; // If we can't decode the token, consider it expired
    }
  }

  static Duration? getTimeUntilExpiration(String token) {
    try {
      final decodedToken = JwtDecoder.parseJwt(token);

      if (!decodedToken.containsKey('exp')) {
        return null; // If there's no expiration claim, return null
      }

      final expirationTimestamp = decodedToken['exp'] as int;
      final expirationDateTime =
          DateTime.fromMillisecondsSinceEpoch(expirationTimestamp * 1000);
      final currentDateTime = DateTime.now();

      if (currentDateTime.isAfter(expirationDateTime) ||
          expirationDateTime.difference(currentDateTime).inMinutes <= 1) {
        return Duration.zero; // Token is already expired
      }

      return expirationDateTime.difference(currentDateTime);
    } on Exception catch (e) {
      lOg.e('Error decoding token: $e');
      return null; // If we can't decode the token, return null
    }
  }
}
