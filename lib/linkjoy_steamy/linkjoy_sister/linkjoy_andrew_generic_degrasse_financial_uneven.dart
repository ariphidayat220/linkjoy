import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_andrew.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';

import 'linkjoy_generic_degrasse_definitive.dart';

class LinkjoyAndrewGenericDegrasseFinancialUneven
    extends MediaVideoViewerDataSource {
  static showViewer(
    BuildContext context,
    List<VideoVO> videos,
    VideoVO selectItem,
  ) {
    if ((videos.isEmpty) && selectItem == null) return;
    LinkjoyGenericDegrasseDefinitive.show(
      context,
      LinkjoyAndrewGenericDegrasseFinancialUneven(videos, selectItem),
    );
  }

  static const int ITEM_LOAD_SIZE = 20;

  final List<VideoVO> _items;
  late VideoVO _currentItem;
  final bool _hasBefore = false;
  final bool _loadingBefore = false;
  final bool _hasAfter = false;
  final bool _loadingAfter = false;

  LinkjoyAndrewGenericDegrasseFinancialUneven(this._items, this._currentItem)
    : super() {
    super.itemCount = _items.length;
    super.currentIndex = _items.indexOf(_currentItem);
  }

  @override
  int autoPlayIndex() => _items.indexOf(_currentItem);

  @override
  String heroTag(int index) {
    return _items[index].hashCode.toString();
  }

  @override
  ImageProvider imageProvider(int index) {
    final item = _items[index];
    return CachedNetworkImageProvider(item.cover_url!);
  }

  @override
  String? localPath(int index) {
    final item = _items[index];
    return item.video_url;
  }

  @override
  String? netPath(int index) {
    final item = _items[index];
    return item.video_url;
  }

  @override
  void onPageChanged(int index) {
    _currentItem = _items[index];
  }
}
