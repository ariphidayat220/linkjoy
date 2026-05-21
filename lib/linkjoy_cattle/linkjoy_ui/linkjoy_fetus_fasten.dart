import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_suspend.dart';
import 'package:flutter/cupertino.dart';

class LinkjoyFetusFasten extends StatefulWidget {
  final bool selected;

  final String asset;

  const LinkjoyFetusFasten({
    super.key,
    required this.selected,
    required this.asset,
  });

  @override
  State<LinkjoyFetusFasten> createState() => _LinkjoyFetusFastenStatus();
}

class _LinkjoyFetusFastenStatus extends State<LinkjoyFetusFasten> {
  @override
  Widget build(BuildContext context) {
    return LinkjoyFasten.asset(
      widget.selected ? "${widget.asset}_a" : "${widget.asset}_d",
      width: LinkjoyDiscard.iconLarge,
      height: LinkjoyDiscard.iconLarge,
    );
  }
}
