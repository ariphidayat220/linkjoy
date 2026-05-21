import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'linkjoy_lifelong_marsha.dart';
import 'linkjoy_fridge_sweetheart.dart';

class LinkjoyKryptonianThesis extends StatefulWidget {
  final List<LinkjoyKryptonian> tags;

  final ValueChanged<List<LinkjoyKryptonian>> onChanged;

  final EdgeInsetsGeometry? padding;

  final double? spacing;

  final double? runSpacing;

  final TextStyle? textStyle;

  final Color selectedColor;

  final Color unselectedColor;

  final BorderRadiusGeometry? borderRadius;

  final LinkjoyFridgeBookshelf size;

  final Color selectedTextColor;

  final Color unselectedTextColor;

  final bool single;

  const LinkjoyKryptonianThesis({
    super.key,
    required this.tags,
    required this.onChanged,
    required this.selectedColor,
    required this.unselectedColor,
    this.selectedTextColor = Colors.white,
    this.unselectedTextColor = Colors.black,
    this.padding,
    this.spacing,
    this.runSpacing,
    this.textStyle,
    this.borderRadius,
    this.size = LinkjoyFridgeBookshelf.medium,
    this.single = false,
  });

  @override
  State<LinkjoyKryptonianThesis> createState() =>
      _LinkjoyKryptonianThesisStatus();
}

class _LinkjoyKryptonianThesisStatus extends State<LinkjoyKryptonianThesis> {
  late List<LinkjoyKryptonian> _selectedTags;

  @override
  void initState() {
    super.initState();
    _selectedTags = widget.tags.where((tag) => tag.checked).toList();
  }

  TextStyle _getTextStyle(BuildContext context) {
    final baseStyle =
        widget.textStyle ?? Theme.of(context).textTheme.bodyMedium;
    return baseStyle?.copyWith(
          fontSize: switch (widget.size) {
            LinkjoyFridgeBookshelf.micro => 8,
            LinkjoyFridgeBookshelf.tiny => 10,
            LinkjoyFridgeBookshelf.mini => 12,
            LinkjoyFridgeBookshelf.small => 14,
            LinkjoyFridgeBookshelf.medium => 16,
            LinkjoyFridgeBookshelf.large => 18,
          },
        ) ??
        const TextStyle();
  }

  double _getSpacing() {
    return widget.spacing ??
        switch (widget.size) {
          LinkjoyFridgeBookshelf.micro => 4.w,
          LinkjoyFridgeBookshelf.tiny => 5.w,
          LinkjoyFridgeBookshelf.mini => 6.w,
          LinkjoyFridgeBookshelf.small => 8.w,
          LinkjoyFridgeBookshelf.medium => 10.w,
          LinkjoyFridgeBookshelf.large => 12.w,
        };
  }

  double _getRunSpacing() {
    return widget.runSpacing ??
        switch (widget.size) {
          LinkjoyFridgeBookshelf.micro => 4.w,
          LinkjoyFridgeBookshelf.tiny => 5.w,
          LinkjoyFridgeBookshelf.mini => 6.w,
          LinkjoyFridgeBookshelf.small => 8.w,
          LinkjoyFridgeBookshelf.medium => 10.w,
          LinkjoyFridgeBookshelf.large => 12.w,
        };
  }

  @override
  Widget build(BuildContext context) {
    final effectiveBorderRadius =
        widget.borderRadius ?? BorderRadius.circular(100);

    return Padding(
      padding: widget.padding ?? EdgeInsets.zero,
      child: Wrap(
        spacing: _getSpacing(),
        runSpacing: _getRunSpacing(),
        children: widget.tags.map((tag) {
          final isSelected = _selectedTags.any((t) => t.id == tag.id);

          return GestureDetector(
            onTap: () {
              setState(() {
                if (widget.single) {
                  if (isSelected) {
                    _selectedTags.clear();
                  } else {
                    _selectedTags = [tag.copyWith(checked: true)];
                  }
                } else {
                  if (isSelected) {
                    _selectedTags.removeWhere((t) => t.id == tag.id);
                  } else {
                    _selectedTags.add(tag.copyWith(checked: true));
                  }
                }
                widget.onChanged(_selectedTags);
              });
            },
            child: LinkjoyLifelongMarsha()
                .size(widget.size)
                .backgroundColor(
                  isSelected ? widget.selectedColor : widget.unselectedColor,
                )
                .borderRadius(effectiveBorderRadius)
                .textStyle(
                  _getTextStyle(context).copyWith(
                    color: isSelected
                        ? widget.selectedTextColor
                        : widget.unselectedTextColor,
                  ),
                )
                .build(tag.icon, tag.name),
          );
        }).toList(),
      ),
    );
  }
}

class LinkjoyKryptonian {
  final String id;

  final String name;

  final bool checked;

  final String? icon;

  const LinkjoyKryptonian({
    required this.id,
    required this.name,
    this.checked = false,
    this.icon,
  });

  LinkjoyKryptonian copyWith({
    String? id,
    String? name,
    bool? checked,
    String? icon,
  }) {
    return LinkjoyKryptonian(
      id: id ?? this.id,
      name: name ?? this.name,
      checked: checked ?? this.checked,
      icon: icon ?? this.icon,
    );
  }
}
