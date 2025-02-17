import 'package:intl/intl.dart';

extension AddComma on num {
  String get addComma {
    final formatter = NumberFormat('###,###');
    final formattedNumber = formatter.format(this);
    return formattedNumber;
  }
}

extension AddComma2 on num? {
  String get addComma {
    if (this == null) return '0';
    final formatter = NumberFormat('###,###');
    final formattedNumber = formatter.format(this);
    return formattedNumber;
  }
}

extension AddComma3 on num {
  /// this will add comma and shorten the number after 10000
  /// 
  /// like these
  /// 
  /// 10000 -> 10,000
  /// 
  /// 100000 -> 100K
  /// 
  /// 1000000 -> 1M
  /// 
  /// 1000000000 -> 1B
  /// 
  /// 1000000000000 -> 1T
  String get addCommaShortened {
    if (this < 10000) {
      final formatter = NumberFormat('###,###');
      return formatter.format(this);
    } else if (this < 1000000) {
      return _formatNumber(this, 1000, 'K');
    } else if (this < 1000000000) {
      return _formatNumber(this, 1000000, 'M');
    } else if (this < 1000000000000) {
      return _formatNumber(this, 1000000000, 'B');
    } else {
      return _formatNumber(this, 1000000000000, 'T');
    }
  }

  /// this will add comma and shorten the number after 99999
  String get addCommaShortenedAfter99999 {
    if (this < 99999) {
      final formatter = NumberFormat('###,###');
      return formatter.format(this);
    } else if (this < 1000000) {
      return _formatNumber(this, 1000, 'K');
    } else if (this < 1000000000) {
      return _formatNumber(this, 1000000, 'M');
    } else if (this < 1000000000000) {
      return _formatNumber(this, 1000000000, 'B');
    } else {
      return _formatNumber(this, 1000000000000, 'T');
    }
  }

  String _formatNumber(num number, num divisor, String suffix) {
    final divided = number / divisor;
    final formatted =
        divided.toStringAsFixed(divided.truncateToDouble() == divided ? 0 : 1);
    return '$formatted$suffix';
  }
}

extension AddComma4 on num? {
  String get addCommaShortened {
    if (this == null) return '0';
    if (this! < 10000) {
      final formatter = NumberFormat('###,###');
      return formatter.format(this);
    } else if (this! < 1000000) {
      return _formatNumber(this!, 1000, 'K');
    } else if (this! < 1000000000) {
      return _formatNumber(this!, 1000000, 'M');
    } else if (this! < 1000000000000) {
      return _formatNumber(this!, 1000000000, 'B');
    } else {
      return _formatNumber(this!, 1000000000000, 'T');
    }
  }

  String _formatNumber(num number, num divisor, String suffix) {
    final divided = number / divisor;
    final formatted =
        divided.toStringAsFixed(divided.truncateToDouble() == divided ? 0 : 1);
    return '$formatted$suffix';
  }
}
