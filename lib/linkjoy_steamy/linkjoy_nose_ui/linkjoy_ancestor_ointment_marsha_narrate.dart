import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_ofour.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_divorced.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_muse.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_statue_marsha_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LinkjoyAncestorOintmentMarshaNarrate extends StatefulWidget {
  final LinkjoyOfour textSnap;
  final bool translateFlag;

  const LinkjoyAncestorOintmentMarshaNarrate({
    super.key,
    required this.textSnap,
    required this.translateFlag,
  });

  static void linkjoyJazzHonStatueMarsha(LinkjoyOfour snap) {
    snap.richTexts ??= LinkjoyStatueMarshaSister.getRichText(
      snap.textContent,
      style: snap.isMine
          ? LinkjoyDivorced.outgoingTextStyle
          : LinkjoyDivorced.incomingTextStyle,
    );
  }

  @override
  _LinkjoyAncestorOintmentMarshaNarrateStatus createState() =>
      _LinkjoyAncestorOintmentMarshaNarrateStatus();
}

class _LinkjoyAncestorOintmentMarshaNarrateStatus
    extends State<LinkjoyAncestorOintmentMarshaNarrate> {
  late LinkjoyOfour snap;
  bool isTranslate = false;
  bool needTranslate = false;

  bool isTranslating = false;

  @override
  void initState() {
    super.initState();
    snap = widget.textSnap;
    needTranslate = widget.translateFlag;
    if (needTranslate &&
        LinkjoyGnomeSister.isEmpty(snap.translate) &&
        snap.textContent!.isNotEmpty) {
      translateContent(snap.textContent!);
    }
  }

  @override
  void didUpdateWidget(
    covariant LinkjoyAncestorOintmentMarshaNarrate oldWidget,
  ) {
    super.didUpdateWidget(oldWidget);
    if (widget.textSnap != oldWidget.textSnap) {
      snap = widget.textSnap;
    }
  }

  @override
  Widget build(BuildContext context) {
    var decoration = snap.isMine
        ? BoxDecoration(
            borderRadius:
                LinkjoyDivorced.linkjoyAncestorOintmentFrontalByThirty(),
            color:
                LinkjoyDivorced.linkjoyAncestorOintmentSixthInsistenceByThirty,
          )
        : BoxDecoration(
            borderRadius:
                LinkjoyDivorced.linkjoyAncestorOintmentFrontalByTouche(),
            color:
                LinkjoyDivorced.linkjoyAncestorOintmentSixthInsistenceByTouche,
          );
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(
            top: LinkjoyGarage.s4,
            right: LinkjoyGarage.s4,
          ),
          child: _linkjoyStatueFridge(decoration, context),
        ),
        PositionedDirectional(
          top: LinkjoyGarage.s4,
          end: LinkjoyGarage.s4,
          child: needTranslate || snap.isMine
              ? const SizedBox.shrink()
              : LinkjoyFridgeLightbulb.linkjoyPancake().clickOld(() {
                  setState(() {
                    needTranslate = true;
                    if (LinkjoyGnomeSister.isEmpty(snap.translate) &&
                        snap.textContent!.isNotEmpty) {
                      translateContent(snap.textContent!);
                    }
                  });
                }),
        ),
      ],
    );
  }

  Widget _linkjoyStatueFridge(decoration, context) {
    return IntrinsicWidth(
      child: Container(
        padding: EdgeInsetsDirectional.only(
          start: LinkjoyGarage.s16,
          end: LinkjoyGarage.s24,
          top: LinkjoyGarage.s12,
          bottom: LinkjoyGarage.s12,
        ),
        decoration: decoration,
        child: needTranslate
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text.rich(TextSpan(children: snap.richTexts)),
                  LinkjoyFeynman.v8,
                  Container(height: 0.5, color: Colors.white24),
                  LinkjoyFeynman.v8,
                  isTranslating
                      ? SizedBox(
                          height: LinkjoyGarage.s32,
                          child: const CupertinoActivityIndicator(),
                        )
                      : Text(
                          snap.translate ?? "",
                          style: snap.isMine
                              ? LinkjoyDivorced.outgoingTextStyle
                              : LinkjoyDivorced.incomingTextStyle,
                        ),
                ],
              )
            : Text.rich(TextSpan(children: snap.richTexts)),
      ),
    );
  }

  Future<void> translateContent(String textContent) async {
    if (mounted) {
      setState(() {
        isTranslating = true;
      });
    }
    Map<String, dynamic> params = {
      "uid": widget.textSnap.ownerId,
      "text": textContent,
    };
    String translateData = textContent;
    LINKJOY.http.rest(10301, params, (p0) => p0).then((value) {
      if (value != null) {
        translateData = LinkjoySmearSister.strDef(value, 'trans', textContent);
        snap.translate = translateData;
        LINKJOY.linkjoyDb.snapDao.updateSnapTranslate(snap);
      } else {
        snap.translate = textContent;
      }
      if (mounted) {
        setState(() {
          isTranslating = false;
        });
      }
    });
  }
}
