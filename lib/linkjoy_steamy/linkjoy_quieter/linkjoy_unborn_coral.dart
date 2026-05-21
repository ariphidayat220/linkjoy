import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_condensate.dart';
import 'package:flutter/widgets.dart';

class LinkjoyUnbornCoral extends StatelessWidget {
  final TextStyle style;
  final int? uid;
  final String? nickName;
  final int? level;
  final int? maxLines;
  final TextOverflow? overflow;

  const LinkjoyUnbornCoral({
    super.key,
    required this.style,
    this.uid,
    this.nickName,
    this.level,
    this.maxLines,
    this.overflow,
  });

  @override
  Widget build(BuildContext context) {
    String name = nickName ?? LINKJOY.linkjoyJog?.user.nickName ?? "";

    bool showColorfulNickName;
    if (LINKJOY.isLinkjoyFoolishly && uid == LINKJOY.uid()) {
      showColorfulNickName = false;
    } else {
      showColorfulNickName = LinkjoyUnborn.colorfulNickname(
        level ?? LINKJOY.linkjoyUnbornDeposit?.userLevel,
      );
    }

    if (showColorfulNickName) {
      return Stack(
        children: [
          Text(
            name,
            style: style.copyWith(
              shadows: [
                const Shadow(
                  color: LinkjoyCondensate.black_40p,
                  offset: Offset(0, 1),
                ),
              ],
            ),
            maxLines: maxLines,
            overflow: overflow,
          ),
          ShaderMask(
            blendMode: BlendMode.srcIn,
            shaderCallback: (Rect bounds) {
              return const LinearGradient(
                colors: [
                  Color(0xFF3BFFA5),
                  Color(0xFFFFE970),
                  Color(0xFFFF4FFB),
                ],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                tileMode: TileMode.clamp,
              ).createShader(bounds);
            },
            child: Text(
              name,
              style: style,
              maxLines: maxLines,
              overflow: overflow,
            ),
          ),
        ],
      );
    } else {
      return Text(name, style: style, maxLines: maxLines, overflow: overflow);
    }
  }
}
