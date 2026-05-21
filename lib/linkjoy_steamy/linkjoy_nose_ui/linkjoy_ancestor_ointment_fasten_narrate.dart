import 'dart:io';

import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_ofour.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_divorced.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_condensate_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten_dance.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_ancestor_generic_duel_financial_uneven.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_ancestor_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:flutter/cupertino.dart';

class LinkjoyAncestorOintmentFastenNarrate extends StatelessWidget {
  final LinkjoyOfour snap;

  const LinkjoyAncestorOintmentFastenNarrate({super.key, required this.snap});

  @override
  Widget build(BuildContext context) {
    Size size = LinkjoyAncestorSister.imageVideoContainerSize(
      true,
      snap.image?.width?.toDouble() ?? 0,
      snap.image?.height?.toDouble() ?? 0,
      MediaQuery.of(context).size.width - 62.0,
    );
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        LinkjoyAncestorGenericDuelFinancialUneven.showViewer(context, snap);
      },
      child: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          color: LinkjoyCondensateSister.white_20p,
          borderRadius: snap.isMine
              ? LinkjoyDivorced.linkjoyAncestorOintmentFrontalByThirty()
              : LinkjoyDivorced.linkjoyAncestorOintmentFrontalByTouche(),
        ),
        child: _linkjoyGalleriaFridge(size),
      ),
    );
  }

  Widget _linkjoyGalleriaFridge(Size size) {
    BorderRadiusDirectional borderRadius = snap.isMine
        ? LinkjoyDivorced.linkjoyAncestorOintmentFrontalByThirty()
        : LinkjoyDivorced.linkjoyAncestorOintmentFrontalByTouche();
    String filePath = LinkjoyGnomeSister.isEmpty(snap.image?.relativePath)
        ? ""
        : snap.image!.relativePath!;
    String netUrl = snap.image?.imgUrl ?? "";
    return Hero(
      tag: snap.hashCode.toString(),
      child: !LinkjoyGnomeSister.isEmptyString(snap.image?.relativePath)
          ? Container(
              decoration: BoxDecoration(
                borderRadius: borderRadius,
                image: DecorationImage(
                  image: FileImage(File(snap.image!.absolutePath!)),
                ),
              ),
            )
          : LinkjoyGnomeSister.isEmpty(filePath)
          ? LinkjoyFasten.round(
              netUrl,
              width: size.width,
              height: size.height,
              clip: ImageClipType.middle,
              fit: BoxFit.fill,
              ignorePlaceHolder: true,
            )
          : LinkjoyFasten.file(
              filePath,
              width: size.width,
              height: size.height,
              fit: BoxFit.fill,
            ),
    );
  }
}
