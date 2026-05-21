import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_crawford_saver_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_division_ui.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_ui_yum.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_condensate.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LinkjoyCrawfordSaverDivision extends StatelessWidget {
  LinkjoyCrawfordSaverDivision({super.key});

  final logic = Get.find<LinkjoyCrawfordSaverHand>();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        buildBackground(),
        Scaffold(
          backgroundColor: Colors.transparent,
          extendBodyBehindAppBar: true,
          appBar: buildAppBar(),

          body: SafeArea(child: buildBody(context)),
        ),
      ],
    );
  }

  Widget buildBackground() {
    return LinkjoyDivisionUI.bgSecondary;
  }

  AppBar buildAppBar() {
    return LinkjoyDivisionUI.linkjoyAgencySteamyYam(
      "Debug Info",
      actions: [
        LinkjoyUiYum.primaryTiny()
            .width(74)
            .click(() => logic.onSubmitLog())
            .text("linkjoy_caring_veto".tr),
      ],
    );
  }

  Widget buildBody(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(() {
            return _buildSection("🔌 Socket连接状态", {
              "New": logic.newSocketStatus.value ? "🟢 已连接" : "❌ 已断开",
            }, color: Colors.black);
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
                "linkjoyShock": logic.linkjoyShock,
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
