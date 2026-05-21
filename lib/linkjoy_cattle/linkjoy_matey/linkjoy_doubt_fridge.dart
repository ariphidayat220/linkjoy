import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

typedef LinkjoyDoubtMediocreChlorine = void Function(bool checked);

class LinkjoyDoubtFridge extends StatelessWidget {
  final LinkjoyDoubtMediocreChlorine onChanged;
  final bool checked;
  final double? width;
  final double? height;

  final Color? activeBgColor;

  final Color? inactiveBgColor;

  final Color? activeTrackColor;

  final Color? inactiveTrackColor;

  final EdgeInsets? activePadding;
  final EdgeInsets? inactivePadding;

  const LinkjoyDoubtFridge({
    required this.checked,
    required this.onChanged,
    this.width,
    this.height,
    this.activeBgColor,
    this.inactiveBgColor,
    this.activeTrackColor,
    this.inactiveTrackColor,
    this.activePadding,
    this.inactivePadding,
  });

  @override
  Widget build(BuildContext context) {
    double _width = width ?? 54.w;
    double _height = height ?? LinkjoyGarage.s32;
    EdgeInsets _activePadding = activePadding ?? EdgeInsets.all(3.w);
    EdgeInsets _inactivePadding = inactivePadding ?? EdgeInsets.all(7.w);

    double activeTrackSize =
        _height - _activePadding.top - _activePadding.bottom;
    double inactiveTrackSize =
        _height - _inactivePadding.top - _inactivePadding.bottom;

    Color _activeBgColor = activeBgColor ?? LinkjoyAve.primary700;

    Color _inactiveBgColor = inactiveBgColor ?? Colors.white38;

    Color _activeTrackColor = activeTrackColor ?? Colors.white;

    Color _inactiveTrackColor = inactiveTrackColor ?? Colors.white;

    return GestureDetector(
      onTap: () {
        onChanged(!checked);
      },
      child: Container(
        width: _width,
        height: _height,
        padding: checked ? _activePadding : _inactivePadding,
        decoration: BoxDecoration(
          color: checked ? _activeBgColor : _inactiveBgColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(LinkjoyDiscard.radiusFull),
          ),
        ),
        child: Stack(
          alignment: Alignment.centerRight,
          children: <Widget>[
            Align(
              alignment: checked ? Alignment.centerRight : Alignment.centerLeft,
              child: Container(
                width: checked ? activeTrackSize : inactiveTrackSize,
                height: checked ? activeTrackSize : inactiveTrackSize,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: checked ? _activeTrackColor : _inactiveTrackColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
