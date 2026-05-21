import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten_industrial.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten_dance.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_muse.dart';
import 'package:flutter/material.dart';

class LinkjoyUnbornVent extends StatelessWidget {
  final String? avatarUrl;
  final int? uid;
  final int? level;
  final double size;
  final double? borderSize;
  final Color? borderColor;
  final ImageClipType? clip;

  final bool? transFrame;

  final List<Widget>? children;

  const LinkjoyUnbornVent({
    super.key,
    required this.size,
    this.uid,
    this.avatarUrl,
    this.borderSize,
    this.borderColor,
    this.level,
    this.clip,
    this.transFrame,
    this.children,
  });

  @override
  Widget build(BuildContext context) {
    String url = avatarUrl ?? LINKJOY.linkjoyJog?.user.avatarUrl ?? "";
    double bSize = borderSize ?? 0;
    Color bColor = borderColor ?? Colors.white;
    bool showAvatarFrame;
    if (LINKJOY.isLinkjoyFoolishly && uid == LINKJOY.uid()) {
      showAvatarFrame = false;
    } else if (!LINKJOY.isLinkjoyFoolishly && uid != LINKJOY.uid()) {
      showAvatarFrame = false;
    } else {
      showAvatarFrame = LinkjoyUnborn.avatarFrame(
        level ?? LINKJOY.linkjoyUnbornDeposit?.userLevel,
      );
    }

    List<Widget> widgets = [];

    if (bSize > 0) {
      widgets.add(
        Container(
          height: size + 2 * bSize,
          width: size + 2 * bSize,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: bColor, width: bSize),
          ),
          child: LinkjoyFasten.circle(
            url,
            size: size,
            fit: BoxFit.cover,
            clip: clip,
          ),
        ),
      );
    } else {
      widgets.add(
        LinkjoyFasten.circle(url, size: size, fit: BoxFit.cover, clip: clip),
      );
    }

    if (showAvatarFrame) {
      widgets.add(
        LinkjoyFastenIndustrial.asset(
          'linkjoy_toe_vent_pinocchio',
          width: size * 1.3,
          height: size * 1.3,
        ),
      );
    } else if (transFrame ?? true) {
      widgets.add(SizedBox(width: size * 1.3, height: size * 1.3));
    }
    children?.let((it) => widgets.addAll(it));

    return Stack(alignment: Alignment.center, children: widgets);
  }
}
