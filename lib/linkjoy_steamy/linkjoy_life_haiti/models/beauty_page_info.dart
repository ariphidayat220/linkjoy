enum BeautyModule { beauty, styleMakeup, filter, sticker }

abstract class BeautyItemType {
  const BeautyItemType();
}

class BeautyItemTypeNormal extends BeautyItemType {
  const BeautyItemTypeNormal();
}

class BeautyItemTypeToggle extends BeautyItemType {
  final bool isEnabled;

  const BeautyItemTypeToggle(this.isEnabled);
}

class BeautyItemTypeReset extends BeautyItemType {
  const BeautyItemTypeReset();
}

class BeautyItemTypeNone extends BeautyItemType {
  const BeautyItemTypeNone();
}

class BeautyPageInfo {
  final String name;

  List<BeautyItemInfo> itemList;

  bool isSelected;

  final BeautyModule type;

  BeautyPageInfo({
    required this.name,
    required this.itemList,
    this.isSelected = false,
    this.type = BeautyModule.beauty,
  });
}

class BeautyItemInfo {
  final String name;

  final String? iconAsset;

  double value;

  bool isSelected;

  final double minValue;
  final double maxValue;

  void Function(double value)? onValueChanged;

  final bool showSlider;

  final BeautyItemType type;

  Future<void> Function(BeautyItemInfo item)? onItemClick;

  BeautyItemInfo({
    required this.name,
    this.iconAsset,
    this.value = 0.0,
    this.isSelected = false,
    this.minValue = 0.0,
    this.maxValue = 1.0,
    this.onValueChanged,
    this.showSlider = true,
    this.type = const BeautyItemTypeNormal(),
    this.onItemClick,
  });
}
