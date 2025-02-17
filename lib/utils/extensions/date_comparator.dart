


extension DateTimeComparator on DateTime {
  bool isEqualTo(DateTime other) {
    return year   == other.year && month == other.month && day == other.day;
  }
}
