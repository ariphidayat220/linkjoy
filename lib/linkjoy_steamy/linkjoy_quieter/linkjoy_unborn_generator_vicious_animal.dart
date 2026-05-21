import 'package:auto_size_text/auto_size_text.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_web.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_condensate_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten_dance.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_unborn_vent.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_matey/linkjoy_matey.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LinkjoyUnbornGeneratorWebAnimal extends StatefulWidget {
  static Future show(int index) async {
    return Get.dialog(
      Center(child: LinkjoyUnbornGeneratorWebAnimal(index: index)),
      barrierDismissible: false,
    );
  }

  final int index;

  const LinkjoyUnbornGeneratorWebAnimal({super.key, required this.index});

  @override
  State<LinkjoyUnbornGeneratorWebAnimal> createState() =>
      _LinkjoyUnbornGeneratorWebAnimalStatus();
}

class _LinkjoyUnbornGeneratorWebAnimalStatus
    extends State<LinkjoyUnbornGeneratorWebAnimal> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              width: Get.width - 40.w,
              height: 320.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32.w),
                color: LinkjoyAve.dialogBg,
              ),
              child: Swiper(
                index: widget.index,
                itemBuilder: (BuildContext context, int index) {
                  return _linkjoyDecide(index);
                },
                loop: false,
                itemCount: LinkjoyDeliver.values.length,
                scrollDirection: Axis.horizontal,
                pagination: _linkjoyMolecule(),
              ),
            ),
          ],
        ),
        LinkjoyFeynman.v12,
        _linkjoyBaywatchAssume(),
      ],
    );
  }

  Widget _linkjoyBaywatchAssume() {
    return LinkjoyFridgeLightbulb.linkjoyAssumeBaywatch(() => Get.back());
  }

  SwiperCustomPagination _linkjoyMolecule() {
    return SwiperCustomPagination(
      builder: (BuildContext context, SwiperPluginConfig config) {
        return Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: const EdgeInsets.only(bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(config.itemCount, (index) {
                bool active = index == config.activeIndex;
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 250),
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  width: 16,
                  height: 4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: active
                        ? const Color(0xFF805DFF)
                        : LinkjoyCondensateSister.black_20p,
                  ),
                );
              }),
            ),
          ),
        );
      },
    );
  }

  Widget _linkjoyDecide(int index) {
    LinkjoyDeliver item = LinkjoyDeliver.values[index];
    Widget picWidget;
    if (item == LinkjoyDeliver.level_icons) {
      picWidget = LinkjoyFridgeLightbulb.linkjoySignalFridge(
        LINKJOY.linkjoyUnbornDeposit!.level,
        isAnchor: false,
      );
    } else if (item == LinkjoyDeliver.avatar_frame) {
      picWidget = _linkjoyVentPinocchio();
    } else {
      picWidget = LinkjoyWear.circle(
        item.icon,
        size: LinkjoyBookshelf.xl,
        iconColor: LinkjoyAve.accentMain,
        bgColor: LinkjoyAve.accentMain.withValues(alpha: 0.2),
      );
    }
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 32.w),
      width: Get.width - 40.w - 64.w,
      height: 280.w,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          LinkjoyFeynman.v48,
          SizedBox(
            height: LinkjoyGarage.s72,
            child: Column(
              children: [const Spacer(), picWidget, const Spacer()],
            ),
          ),
          LinkjoyFeynman.v16,
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(item.title.tr, style: LinkjoyMarshaTriplet.title),
          ),
          LinkjoyFeynman.v16,
          AutoSizeText(
            item.desc.tr,
            textAlign: TextAlign.center,
            style: LinkjoyMarshaTriplet.bodyLarge,
          ),
          LinkjoyFeynman.v12,
          if (item == LinkjoyDeliver.free_coins)
            Text(
              "linkjoy_caring_olden_phlegm_incense_jabber".trParams({
                "x": "${LINKJOY.linkjoyUnbornDeposit!.userMaxLevel.dailyCoins}",
              }),
              textAlign: TextAlign.center,
              style: LinkjoyMarshaTriplet.bodyLargeBold.copyWith(
                color: LinkjoyAve.textImportant1,
              ),
            ),
          if (item == LinkjoyDeliver.discount)
            Text(
              "linkjoy_caring_deliver_english_jabber".trParams({
                "x": "${LINKJOY.linkjoyUnbornDeposit!.userMaxLevel.discount}",
              }),
              textAlign: TextAlign.center,
              style: LinkjoyMarshaTriplet.bodyLargeBold.copyWith(
                color: LinkjoyAve.textImportant1,
              ),
            ),
        ],
      ),
    );
  }

  Widget _linkjoyVentPinocchio() {
    return LinkjoyUnbornVent(
      size: 50.w,
      clip: ImageClipType.small,
      level: LinkjoyDeliver.avatar_frame.minLevel + 1,
      uid: LINKJOY.uid(),
    );
  }
}
