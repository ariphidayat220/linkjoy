import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_andrew.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_forgot_lap_financial.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_muse.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_andrew_generic_duel_financial_uneven.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_destine_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:visibility_detector/visibility_detector.dart';

class LinkjoyForgotLapStubbornOintment extends StatelessWidget {
  static Set<int> readSet = {};
  final LinkjoyForgotLapFinancial item;

  const LinkjoyForgotLapStubbornOintment({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: Key('sys-notify-${item.id}'),
      onVisibilityChanged: (visibilityInfo) {
        if (visibilityInfo.visibleFraction == 1) {
          readSystemNotify(item.id);
        }
      },
      child: Padding(
        padding: EdgeInsets.only(
          left: LinkjoyGarage.s16,
          right: LinkjoyGarage.s16,
          top: LinkjoyGarage.s20,
          bottom: LinkjoyGarage.s8,
        ),
        child: _contentWidget(context),
      ),
    );
  }

  void readSystemNotify(int sysNotifyId) async {
    if (readSet.contains(sysNotifyId)) {
      return;
    }
    bool rsp = await LINKJOY.http.submit(6024, {
      "id": sysNotifyId,
    }, showLoadingUI: false);
    if (rsp) {
      readSet.add(sysNotifyId);
    }
  }

  Widget _contentWidget(BuildContext context) {
    List<Widget> children = [];
    children.add(
      Text(
        LinkjoyDestineSister.formatRecordsTimes(item.time),
        style: LinkjoyMarshaTriplet.captionThin,
      ),
    );

    children.add(LinkjoyFeynman.v4);
    String? imageUrl = item.image?.imageUrl ?? item.imgUrl;
    if (!LinkjoyGnomeSister.isEmptyString(imageUrl)) {
      final width =
          Get.width -
          2 * LinkjoyGarage.s16 -
          2 * LinkjoyGarage.s16 -
          LinkjoyGarage.s40 -
          LinkjoyGarage.s8;
      children.add(
        Container(
          width: width,
          height: (width * 140.0 / 315.0).ceil().toDouble(),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.0),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: CachedNetworkImageProvider(imageUrl!),
            ),
          ),
        ).clickOld(() {
          PhotoVO photoVO = PhotoVO();
          photoVO.img_url = imageUrl;
          photoVO.paid = -1;
          LinkjoyAndrewGenericDuelFinancialUneven.showViewer(
            context,
            list: [photoVO],
          );
        }),
      );
      children.add(LinkjoyFeynman.v16);
    }

    if (!LinkjoyGnomeSister.isEmptyString(item.content)) {
      children.add(Text(item.content!, style: LinkjoyMarshaTriplet.bodyLarge));
    } else {
      if (!LinkjoyGnomeSister.isEmptyString(item.title)) {
        children.add(Text(item.title!, style: LinkjoyMarshaTriplet.body));
      }
    }

    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LinkjoyFridgeLightbulb.linkjoyForgotLap(LinkjoyGarage.s40),
        LinkjoyFeynman.h8,
        Container(
          width:
              Get.width -
              LinkjoyGarage.s40 -
              LinkjoyGarage.s8 -
              LinkjoyGarage.s16 * 2,
          padding: EdgeInsets.all(LinkjoyGarage.s16),
          decoration: LinkjoyAve.surfaceDecoration,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: children,
          ),
        ),
      ],
    );
  }
}
