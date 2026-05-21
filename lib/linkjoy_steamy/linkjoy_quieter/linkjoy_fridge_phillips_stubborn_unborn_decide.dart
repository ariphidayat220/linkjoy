import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_young_unborn.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn_deposit.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_hail.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_io_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_destine_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_unborn_vent.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_condensate.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LinkjoyFridgePhillipsStubbornUnbornDecide extends StatefulWidget {
  final LinkjoyUnbornDeposit userRuntime;

  const LinkjoyFridgePhillipsStubbornUnbornDecide({
    super.key,
    required this.userRuntime,
  });

  @override
  State<LinkjoyFridgePhillipsStubbornUnbornDecide> createState() =>
      _LinkjoyFridgePhillipsStubbornUnbornDecideStatus();
}

class _LinkjoyFridgePhillipsStubbornUnbornDecideStatus
    extends State<LinkjoyFridgePhillipsStubbornUnbornDecide> {
  @override
  Widget build(BuildContext context) {
    bool isAr = LinkjoyIOSister.isARLanguage();
    LinkjoyYoungUnborn user = LINKJOY.user();
    String vipExpireTime = "";
    if (widget.userRuntime.vip()) {
      vipExpireTime = LinkjoyDestineSister.getFormatDateTime(
        widget.userRuntime.vipExpire,
        formats: LinkjoyDestineSister.FORMAT_YYYYMMDD,
      );
    }
    return Container(
      margin: const EdgeInsets.only(bottom: 0, left: 16, right: 16),
      width: Get.width - 32,
      height: 120,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: AlignmentDirectional.topStart,
          end: AlignmentDirectional.bottomEnd,
          colors: [LinkjoyAve.primaryLight, LinkjoyAve.primaryMain],
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.only(left: isAr ? 18 : 28, right: isAr ? 28 : 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const LinkjoyUnbornVent(size: 48, transFrame: false),
              Row(
                children: [
                  Container(
                    constraints: BoxConstraints(maxWidth: Get.width - 200),
                    child: Text(
                      user.nickName,
                      style: LinkjoyMarshaGreen.white18,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(width: 5),
                  LinkjoyFridgeLightbulb.linkjoyPhillipsCrumble(
                    isVip: widget.userRuntime.vip(),
                  ),
                ],
              ),
              const SizedBox(height: 2),
              Text(
                widget.userRuntime.vip()
                    ? "${"linkjoy_caring_phillips_spray_dart".tr} $vipExpireTime"
                    : 'linkjoy_caring_mouse_phillips'.tr,
                style: LinkjoyMarshaGreen.style(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: widget.userRuntime.vip()
                      ? const Color(0xFFFFEECB)
                      : Colors.white60,
                  height: 0.9,
                ),
              ),
            ],
          ),
          LinkjoyFridgeLightbulb.linkjoyPhillipsMagazine(64),
        ],
      ),
    );
  }
}
