extension AttachmentExtension on String {
  String? get getUrlExtension {
    if (contains('.')) {
      return split('.').last;
    }
    if (length <= 4) {
      return this;
    }
    return null;
  }

  bool get isImage {
    final extensions = ['png', 'jpg', 'jpeg', 'svg', 'webp'];
    final imageExtension = getUrlExtension;
    return extensions.contains(imageExtension);
  }

  String get getFileNameWithoutExtension {
    final fileNameWithExtension = split('/').last;
    final fileNameWithExtensionSplit = fileNameWithExtension.split('.')
      ..removeLast();
    return fileNameWithExtensionSplit.join('.');
  }

  String get getFileNameWithExtension {
    return split('/').last;
  }
}
