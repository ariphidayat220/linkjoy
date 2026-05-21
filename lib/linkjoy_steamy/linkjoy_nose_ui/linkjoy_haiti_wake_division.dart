import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_life_haiti/shengwang_beauty_sdk.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_life_haiti/shengwang_beauty_view.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_haiti_wake_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_division_ui.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_division_agency.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LinkjoyHaitiWakeDivision
    extends LinkjoyDivisionAgency<LinkjoyHaitiWakeHand> {
  const LinkjoyHaitiWakeDivision({super.key});

  @override
  AppBar buildAppBar() {
    return LinkjoyDivisionUI.linkjoyAgencySteamyYam(
      "linkjoy_caring_haiti_wake".tr,
      actions: [],
    );
  }

  @override
  Widget buildBody(BuildContext context) {
    return _linkjoyOughtaDivision(context);
  }

  Widget _linkjoyOughtaDivision(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: EdgeInsets.only(bottom: padding(context).bottom),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          SizedBox(width: Get.width, height: Get.height),

          Positioned.fill(child: _linkjoyOughtaAwwAidSelectNarrate()),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: ShengwangBeautyView(
              beautyConfig: ShengwangBeautySDK.instance.beautyConfig,
            ),
          ),
        ],
      ),
    );
  }

  EdgeInsets padding(BuildContext context) => MediaQuery.of(context).padding;

  Widget _linkjoyOughtaAwwAidSelectNarrate() {
    return GetBuilder<LinkjoyHaitiWakeHand>(
      id: LinkjoyHaitiWakeHand.linkjoy_industrial_aid,
      builder: (logic) {
        return Visibility(
          visible: logic.isReadyPreview,
          child: AgoraVideoView(
            controller: VideoViewController(
              useAndroidSurfaceView: true,
              rtcEngine: logic.getEngine(),
              canvas: const VideoCanvas(uid: 0),
            ),
          ),
        );
      },
    );
  }
}
