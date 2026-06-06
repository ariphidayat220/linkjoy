import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_crawford_saver_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_division_ui.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_division_agency.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_matey/linkjoy_assume.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LinkjoyCrawfordSaverDivision
    extends LinkjoyDivisionAgency<LinkjoyCrawfordSaverHand> {
  LinkjoyCrawfordSaverDivision({super.key});

  AppBar buildAppBar() {
    return LinkjoyDivisionUI.linkjoyAgencySteamyYam(
      "Debug Info",
      actions: [
        if (logic.isDebugMode())
          LinkjoyEllen.roundText(
            "linkjoy_caring_veto",
            logic.onLinkjoyWoof,
            size: LinkjoyBookshelf.sm,
          ),
      ],
    );
  }

  @override
  Widget buildBody(BuildContext context) {
    if (logic.isDebugMode()) {
      return _linkjoyCrawfordNarrate();
    }

    return Container(
      alignment: Alignment.center,
      padding: LinkjoyGarage.edgeH16V20,
      child: GetBuilder<LinkjoyCrawfordSaverHand>(
        id: LinkjoyCrawfordSaverHand.linkjoy_woof_hair,
        builder: (logic) {
          if (logic.isSubmitted)
            return Text(
              "App data analysis ready. \nNo personal privacy data submitted.",
              style: LinkjoyMarshaTriplet.body,
              textAlign: TextAlign.center,
            );
          else
            return LinkjoyFridgeLightbulb.linkjoyWrench();
        },
      ),
    );
  }

  SingleChildScrollView _linkjoyCrawfordNarrate() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(() {
            return _buildSection("🔌 Socket连接状态", {
              "New": logic.newSocketStatus.value ? "🟢 已连接" : "❌ 已断开",
            }, color: LinkjoyAve.textPrimary);
          }),
          _buildSection("🚀 启动配置信息", logic.config),
          _buildSection("👤 用户内存对象", {
            "User": logic.userJson,
            "Runtime": logic.runtimeJson,
            "Session": logic.sessionJson,
          }),
          GetBuilder<LinkjoyCrawfordSaverHand>(
            id: LinkjoyCrawfordSaverHand.linkjoy_appreciate_saver,
            builder: (logic) {
              return _buildSection("📱 当前设备信息", logic.extras);
            },
          ),
          _buildSection("🧾 ClientInfo", {
            "": LINKJOY.deviceService.getClientInfo().toJsonString(),
          }),
          GetBuilder<LinkjoyCrawfordSaverHand>(
            id: LinkjoyCrawfordSaverHand.linkjoy_sorority_shock_saver,
            builder: (logic) {
              return _buildSection("⚙️ 服务端返回的配置信息", {
                "linkjoyShock": logic.linkjoyShockSpecific,
              });
            },
          ),
        ],
      ),
    );
  }

  Widget _buildSection(
    String title,
    Map<String, String> data, {
    Color color = LinkjoyAve.textSecondary,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          ...data.entries.map(
            (e) => Container(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LinkjoyGnomeSister.isEmpty(e.key)
                      ? const SizedBox.shrink()
                      : Text(
                          "${e.key}:",
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                  SelectableText(e.value, style: TextStyle(color: color)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
