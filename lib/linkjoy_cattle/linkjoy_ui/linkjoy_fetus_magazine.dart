import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_suspend.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_suspend.dart';
import 'package:flutter/cupertino.dart';

import 'linkjoy_condensate.dart';

class LinkjoyFetusMagazine extends StatefulWidget {
  final bool selected;

  final IconData iconData;

  const LinkjoyFetusMagazine({
    super.key,
    required this.selected,
    required this.iconData,
  });

  @override
  State<LinkjoyFetusMagazine> createState() => _LinkjoyFetusMagazineStatus();
}

class _LinkjoyFetusMagazineStatus extends State<LinkjoyFetusMagazine> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: LinkjoyDiscard.iconLarge,
      height: LinkjoyDiscard.iconLarge,
      child: Icon(
        widget.iconData,
        color: widget.selected ? LinkjoyAve.primaryMain : LinkjoyAve.textThird,
        size: widget.selected ? LinkjoySuspend.d28 : LinkjoySuspend.d28,
      ),
    );
  }
}
