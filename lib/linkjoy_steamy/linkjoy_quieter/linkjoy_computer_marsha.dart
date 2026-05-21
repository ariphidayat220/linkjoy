import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'package:flutter/material.dart';

class LinkjoyComputerMarsha extends StatelessWidget {
  final String text;
  final List<Color> colors;
  final Alignment begin;
  final Alignment end;
  final TextStyle style;

  const LinkjoyComputerMarsha({
    super.key,
    required this.text,
    required this.colors,
    this.begin = Alignment.centerLeft,
    this.end = Alignment.centerRight,
    required this.style,
  });

  static LinkjoyComputerMarsha nickName(String name, int level) {
    return LinkjoyComputerMarsha(
      text: "$name: ",
      colors: LinkjoyUnborn.colorfulNickname(level)
          ? const [Color(0xFF3BFFA5), Color(0xFFFFE970), Color(0xFFFF4FFB)]
          : const [Color(0xFFFFD028), Color(0xFFFFD028)],
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      style: LinkjoyMarshaTriplet.bodyBold,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
        colors: colors,
        begin: begin,
        end: end,
      ).createShader(bounds),
      blendMode: BlendMode.srcIn,
      child: Text(text, style: style.copyWith(color: Colors.white)),
    );
  }
}
