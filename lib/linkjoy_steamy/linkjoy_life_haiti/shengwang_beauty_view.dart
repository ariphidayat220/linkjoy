import 'package:flutter/material.dart';

import '../linkjoy_life_haiti/builders/beauty_page_builder.dart';
import '../linkjoy_life_haiti/builders/filter_page_builder.dart';
import '../linkjoy_life_haiti/builders/makeup_page_builder.dart';
import '../linkjoy_life_haiti/builders/sticker_page_builder.dart';
import '../linkjoy_life_haiti/components/beauty_segment_view.dart';
import '../linkjoy_life_haiti/components/beauty_slider.dart';
import '../linkjoy_life_haiti/components/item_list_view.dart';
import '../linkjoy_life_haiti/models/beauty_page_info.dart';
import 'beauty_colors.dart';
import 'beauty_localizer.dart';
import 'shengwang_beauty_sdk.dart';

class ShengwangBeautyView extends StatefulWidget {
  final BeautyConfig beautyConfig;

  final List<BeautyPageInfo> Function(BeautyConfig config)? pageListBuilder;

  const ShengwangBeautyView({
    Key? key,
    required this.beautyConfig,
    this.pageListBuilder,
  }) : super(key: key);

  @override
  State<ShengwangBeautyView> createState() => _ShengwangBeautyViewState();
}

class _ShengwangBeautyViewState extends State<ShengwangBeautyView> {
  late List<BeautyPageInfo> _pageList;
  int _currentPageIndex = 0;
  BeautyItemInfo? _selectedItem;

  late final BeautyPageBuilder _beautyBuilder;
  late final MakeupPageBuilder _makeupBuilder;
  late final FilterPageBuilder _filterBuilder;
  late final StickerPageBuilder _stickerBuilder;

  @override
  void initState() {
    super.initState();
    _beautyBuilder = BeautyPageBuilder(beautyConfig: widget.beautyConfig);
    _makeupBuilder = MakeupPageBuilder(beautyConfig: widget.beautyConfig);
    _filterBuilder = FilterPageBuilder(beautyConfig: widget.beautyConfig);
    _stickerBuilder = StickerPageBuilder(beautyConfig: widget.beautyConfig);

    _pageList = [];
    _buildPageListAsync().then((pages) {
      if (mounted) setState(() => _pageList = pages);
      _updateSelectedItemForPage(_currentPageIndex);
    });

    ShengwangBeautySDK.instance.beautyStateListener = () {
      if (mounted) refreshPageList();
    };
  }

  @override
  void dispose() {
    ShengwangBeautySDK.instance.beautyStateListener = null;
    super.dispose();
  }

  Future<List<BeautyPageInfo>> _buildPageListAsync() async {
    if (widget.pageListBuilder != null) {
      return widget.pageListBuilder!(widget.beautyConfig);
    }
    return [
      await _beautyBuilder.buildPage(),
      await _makeupBuilder.buildPage(),
      await _filterBuilder.buildPage(),
      await _stickerBuilder.buildPage(),
    ];
  }

  void refreshPageList() {
    final savedIndex = _currentPageIndex;
    _buildPageListAsync().then((pages) {
      if (!mounted) return;
      setState(() => _pageList = pages);
      if (savedIndex < _pageList.length) {
        _updateSelectedItemForPage(savedIndex);
      }
    });
  }

  void _updateSelectedItemForPage(int pageIndex) {
    if (pageIndex >= _pageList.length) return;
    final page = _pageList[pageIndex];
    final idx = page.itemList.indexWhere((e) => e.isSelected);
    setState(() {
      _selectedItem = idx >= 0 ? page.itemList[idx] : null;
    });
  }

  void _onSelectedChanged(int pageIndex, int itemIndex) {
    final item = _pageList[pageIndex].itemList[itemIndex];
    setState(() {
      _selectedItem = item.showSlider ? item : null;
    });
  }

  void _onItemClick(int pageIndex, int itemIndex) async {
    final page = _pageList[pageIndex];
    final item = page.itemList[itemIndex];
    final type = item.type;

    if (type is BeautyItemTypeReset) {
      widget.beautyConfig.resetBeauty(BeautyModule.beauty);
      refreshPageList();
    } else if (type is BeautyItemTypeToggle) {
      widget.beautyConfig.beautyEnable = !type.isEnabled;
      widget.beautyConfig.faceShapeEnable = !type.isEnabled;
      _beautyBuilder.buildPage().then((page) {
        if (mounted) setState(() => _pageList[pageIndex] = page);
      });
    } else {
      await item.onItemClick?.call(item);

      for (final i in page.itemList) {
        i.isSelected = false;
      }
      item.isSelected = true;

      setState(() {});
      _onSelectedChanged(pageIndex, itemIndex);
    }
  }

  void _onTabSelected(int index) {
    setState(() => _currentPageIndex = index);
    _updateSelectedItemForPage(index);
  }

  @override
  Widget build(BuildContext context) {
    final titles = _pageList.map((p) => beautyLocalized(p.name)).toList();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 200),
          child: (_selectedItem != null && _selectedItem!.showSlider)
              ? Padding(
                  key: ValueKey(_selectedItem!.name),
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: BeautySlider(itemInfo: _selectedItem!),
                )
              : const SizedBox(key: ValueKey('empty'), height: 0),
        ),
        const SizedBox(height: 10),
        Container(
          decoration: const BoxDecoration(
            color: BeautyColors.darkCoverBg,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 16),
              BeautySegmentView(
                titles: titles,
                selectedIndex: _currentPageIndex,
                onTabSelected: _onTabSelected,
              ),
              SizedBox(
                height: 104,
                child: IndexedStack(
                  index: _currentPageIndex,
                  children: List.generate(_pageList.length, (index) {
                    return ItemListView(
                      pageIndex: index,
                      pageInfo: _pageList[index],
                      onSelectedChanged: _onSelectedChanged,
                      onItemClick: _onItemClick,
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
