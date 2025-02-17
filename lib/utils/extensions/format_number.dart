
extension FormatNumber on num {
  String  asFixed([int precision = 2]) {
    // Round to 2 decimal places and convert to string
    final formatted = toStringAsFixed(precision);

  // Remove trailing '.00' if the number is whole
  if (formatted.endsWith('.00')) {
    return formatted.split('.').first;
  }
  
  // Remove trailing '0' after the decimal point (e.g., 12.50 -> 12.5)
  return formatted.replaceAll(RegExp(r'0+$'), '').replaceAll(RegExp(r'\.$'), '');
}
}
