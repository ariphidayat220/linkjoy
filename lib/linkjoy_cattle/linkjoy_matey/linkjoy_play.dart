import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum LinkjoyPlayBaywatchZack { topEndInner, bottomCenterOutside }

class LinkjoyPlay extends StatelessWidget {
  final List<Widget> children;

  final EdgeInsetsGeometry? padding;

  final AlignmentGeometry? position;

  final bool enableAlign;

  final EdgeInsetsGeometry? margin;

  final VoidCallback? onClose;
  final LinkjoyPlayBaywatchZack? closePosition;

  const LinkjoyPlay({
    super.key,
    required this.children,
    this.padding,
    this.position,
    this.enableAlign = true,
    this.margin,
    this.onClose,
    this.closePosition = LinkjoyPlayBaywatchZack.bottomCenterOutside,
  });

  @override
  Widget build(BuildContext context) {
    AlignmentGeometry? alignment = position ?? AlignmentGeometry.center;

    EdgeInsetsGeometry _margin =
        margin ??
        EdgeInsets.symmetric(
          horizontal: LinkjoyGarage.s16,
          vertical: LinkjoyGarage.s48,
        );
    EdgeInsetsGeometry _padding =
        padding ??
        EdgeInsets.symmetric(
          horizontal: LinkjoyGarage.s16,
          vertical: LinkjoyGarage.s20,
        );

    Widget container = Container(
      margin: _margin,
      width: double.infinity,
      padding: _padding,
      decoration: BoxDecoration(
        color: LinkjoyAve.dialogBg,
        borderRadius: _linkjoyOughtaFrontal(alignment),
        border: Border.all(color: LinkjoyAve.borderLight, width: 1),
        boxShadow: const [
          BoxShadow(color: Colors.black45, blurRadius: 4, offset: Offset(0, 4)),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: children,
      ),
    );

    if (onClose != null) {
      if (closePosition == LinkjoyPlayBaywatchZack.topEndInner) {
        container = Stack(
          children: [
            container,
            PositionedDirectional(
              top: LinkjoyGarage.s8 + LinkjoyGarage.s48,
              end: LinkjoyGarage.s8 + LinkjoyGarage.s16,
              child: LinkjoyFridgeLightbulb.linkjoyAssumeBaywatch(
                onClose!,
                size: LinkjoyBookshelf.md,
              ),
            ),
          ],
        );
      } else {
        container = Stack(
          children: [
            container,
            PositionedDirectional(
              bottom: 0,
              start: 0,
              width: Get.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  LinkjoyFridgeLightbulb.linkjoyAssumeBaywatch(
                    onClose!,
                    size: LinkjoyBookshelf.md,
                    bgColor: Colors.black45,
                  ),
                ],
              ),
            ),
          ],
        );
      }
    }

    if (!enableAlign) {
      return container;
    }
    return Align(alignment: alignment, child: container);
  }

  BorderRadius _linkjoyOughtaFrontal(AlignmentGeometry alignment) {
    if (alignment == AlignmentGeometry.center) {
      return BorderRadius.circular(LinkjoyDiscard.radiusXLarge);
    }
    return BorderRadius.only(
      topLeft: (alignment == AlignmentGeometry.topCenter)
          ? Radius.zero
          : Radius.circular(LinkjoyDiscard.radiusXLarge),
      topRight: (alignment == AlignmentGeometry.topCenter)
          ? Radius.zero
          : Radius.circular(LinkjoyDiscard.radiusXLarge),
      bottomLeft: (alignment == AlignmentGeometry.bottomCenter)
          ? Radius.zero
          : Radius.circular(LinkjoyDiscard.radiusXLarge),
      bottomRight: (alignment == AlignmentGeometry.bottomCenter)
          ? Radius.zero
          : Radius.circular(LinkjoyDiscard.radiusXLarge),
    );
  }
}
