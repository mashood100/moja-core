extension GetFirstAndLastNameLetters on String {
  String get getEdgeLetters {
    final nameParts = split(' ');
    if (nameParts.length > 1) {
      return nameParts[0][0] + nameParts.last[0];
    } else {
      return nameParts[0][0];
    }
  }
}
