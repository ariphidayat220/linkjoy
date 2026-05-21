import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_condensate.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten_industrial.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_matey/linkjoy_assume.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LinkjoyFoolishlyImDuelTrademarkIntolerant extends StatefulWidget {
  final VoidCallback upload;

  const LinkjoyFoolishlyImDuelTrademarkIntolerant({
    super.key,
    required this.upload,
  });

  @override
  State<LinkjoyFoolishlyImDuelTrademarkIntolerant> createState() =>
      _LinkjoyFoolishlyImDuelTrademarkIntolerantStatus();
}

class _LinkjoyFoolishlyImDuelTrademarkIntolerantStatus
    extends State<LinkjoyFoolishlyImDuelTrademarkIntolerant> {
  @override
  Widget build(BuildContext context) {
    String desc = "linkjoy_caring_foolishly_im_duel_trademark_limbic".tr;
    desc = desc.replaceAll("###", "\n\n");
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "linkjoy_caring_foolishly_im_duel_trademark_divorce".tr,
          style: LinkjoyMarshaTriplet.bodyTitle,
        ),
        LinkjoyFeynman.v16,
        Row(
          children: [
            Expanded(child: itemWidget(1)),
            LinkjoyFeynman.h16,
            Expanded(child: itemWidget(0)),
            LinkjoyFeynman.h16,
            Expanded(child: itemWidget(2)),
          ],
        ),
        LinkjoyFeynman.v16,
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: LinkjoyAve.overlayMedium,
            borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusLarge),
          ),
          padding: EdgeInsets.all(LinkjoyGarage.s16),
          child: Text(desc, style: LinkjoyMarshaTriplet.bodySecondary),
        ),
        LinkjoyFeynman.v16,
        LinkjoyEllen.circleText(
          "linkjoy_caring_veto".tr,
          size: LinkjoyBookshelf.xl,
          fixedWidth: Get.width,
          () {
            Get.back();
            widget.upload();
          },
        ),
      ],
    );
  }

  Widget itemWidget(int status) {
    String img = "linkjoy_toe_duel_in_trademark";
    String text = "linkjoy_caring_capable_trademark".tr;
    if (status == 1) {
      img = "linkjoy_toe_duel_softener";
      text = "linkjoy_caring_fasten_softener".tr;
    }
    if (status == 2) {
      img = "linkjoy_toe_duel_trademark_assemble";
      text = "linkjoy_caring_trademark_assemble".tr;
    }
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 0.75,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: Get.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    LinkjoyDiscard.radiusLarge,
                  ),
                  image: DecorationImage(
                    image: LinkjoyFastenIndustrial.assetProvider(img),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              _linkjoyTrademarkHair(status),
            ],
          ),
        ),
        LinkjoyFeynman.v4,
        Text(text, style: LinkjoyMarshaTriplet.caption),
      ],
    );
  }

  _linkjoyTrademarkHair(int status) {
    if (status == 1) {
      return const SizedBox();
    }

    Color color = (status == 0) ? Colors.white : LinkjoyAve.warning;
    return Container(
      decoration: BoxDecoration(
        color: LinkjoyCondensate.black_50p,
        borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusLarge),
      ),
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            status == 0 ? Icons.pending_actions : Icons.error_rounded,
            size: LinkjoyBookshelf.sm.size(),
            color: color,
          ),
          LinkjoyFeynman.v4,
          Text(
            status == 0
                ? "linkjoy_caring_in_trademark".tr
                : "linkjoy_caring_trademark_assemble".tr,
            style: LinkjoyMarshaTriplet.captionBold.copyWith(color: color),
          ),
        ],
      ),
    );
  }
}
