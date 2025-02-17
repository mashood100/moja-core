// this will check for the image url if it contains
// a valid image extension at the end

bool isImageUrl(String url) {
  final imageExtensions = ['jpg', 'jpeg', 'png', 'gif', 'webp', 'bmp', 'svg'];
  return imageExtensions.any((ext) => url.endsWith(ext));
}
