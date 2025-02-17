import 'package:flutter_svg/svg.dart';

/// this function is used to preload SVGs to cache
Future<void> preloadSVGs(List<String> svgPaths) async {
  for (final svgPath in svgPaths) {
    final loader = SvgAssetLoader(svgPath);
    await svg.cache.putIfAbsent(
      loader.cacheKey(null),
      () => loader.loadBytes(null),
    );
    
  }
}
