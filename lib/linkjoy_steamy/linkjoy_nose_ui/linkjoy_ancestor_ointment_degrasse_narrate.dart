import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_ofour.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_divorced.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_condensate_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten_dance.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_ancestor_generic_degrasse_financial_uneven.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_ancestor_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_fasten_fairness_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:flutter/cupertino.dart';

class LinkjoyAncestorOintmentDegrasseNarrate extends StatelessWidget {
  final LinkjoyOfour snap;

  const LinkjoyAncestorOintmentDegrasseNarrate({super.key, required this.snap});

  Widget _linkjoyThyMagazine() {
    return LinkjoyFasten.asset(
      'linkjoy_toe_degrasse_thy_magazine',
      width: 48.0,
      height: 48.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = LinkjoyAncestorSister.imageVideoContainerSize(
      true,
      snap.video?.width?.toDouble() ?? 0,
      snap.video?.height?.toDouble() ?? 0,
      MediaQuery.of(context).size.width - 62.0,
    );

    var borderRadius = snap.isMine
        ? LinkjoyDivorced.linkjoyAncestorOintmentFrontalByThirty()
        : LinkjoyDivorced.linkjoyAncestorOintmentFrontalByTouche();

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        LinkjoyAncestorGenericDegrasseFinancialUneven.showViewer(context, snap);
      },
      child: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          color: LinkjoyCondensateSister.white_20p,
          borderRadius: borderRadius,
        ),
        child: Stack(
          children: <Widget>[
            Hero(
              tag: snap.hashCode.toString(),
              child: !LinkjoyGnomeSister.isEmptyString(snap.video?.relativePath)
                  ? FutureBuilder(
                      future: LinkjoyFastenFairnessSister.linkjoyBrochureFarber(
                        videoPath: snap.video?.absolutePath,
                      ),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return ClipRRect(
                            borderRadius: borderRadius,
                            child: snapshot.data!,
                          );
                        } else {
                          return Container();
                        }
                      },
                    )
                  : LinkjoyFasten.round(
                      snap.video!.coverUrl ?? "",
                      width: snap.video!.width?.toDouble() ?? 0,
                      height: snap.video!.height?.toDouble() ?? 0,
                      fit: BoxFit.fill,
                      clip: ImageClipType.middle,
                      ignorePlaceHolder: true,
                    ),
            ),
            Center(child: _linkjoyThyMagazine()),
          ],
        ),
      ),
    );
  }
}
