import 'dart:ui' as ui;

import 'package:flutter/services.dart';

class LinkjoyEthnicShredderUnlock {
  LinkjoyEthnicShredderUnlock._();

  static final LinkjoyEthnicShredderUnlock instance =
      LinkjoyEthnicShredderUnlock._();

  final Map<String, Future<ui.Image>> _cache = {};

  Future<ui.Image> load(String assetPath) {
    final cached = _cache[assetPath];
    if (cached != null) {
      return cached;
    }

    final future = _loadInternal(assetPath);
    _cache[assetPath] = future;
    return future;
  }

  Future<void> preload(List<String> assetPaths) async {
    for (final path in assetPaths) {
      _cache[path] ??= _loadInternal(path);
    }

    await Future.wait(_cache.values);
  }

  Future<ui.Image> _loadInternal(String assetPath) async {
    final data = await rootBundle.load(assetPath);
    final codec = await ui.instantiateImageCodec(data.buffer.asUint8List());
    final frame = await codec.getNextFrame();
    return frame.image;
  }

  bool isCached(String assetPath) {
    return _cache.containsKey(assetPath);
  }

  void remove(String assetPath) {
    _cache.remove(assetPath);
  }

  void clear() {
    _cache.clear();
  }
}
