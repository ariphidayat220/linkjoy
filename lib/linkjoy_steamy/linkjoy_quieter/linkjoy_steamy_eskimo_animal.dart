import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_steamy_clam_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_condensate_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_hail.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_ui_yum.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkjoySteamyEskimoAnimal extends StatefulWidget {
  final String updateIntro;

  final bool isForceUpdate;

  final String appUrl;

  const LinkjoySteamyEskimoAnimal({
    super.key,
    required this.updateIntro,
    required this.isForceUpdate,
    required this.appUrl,
  });

  @override
  State<LinkjoySteamyEskimoAnimal> createState() =>
      _LinkjoySteamyEskimoAnimalStatus();
}

class _LinkjoySteamyEskimoAnimalStatus
    extends State<LinkjoySteamyEskimoAnimal> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: !widget.isForceUpdate,
      child: Container(
        width: Get.width - 48,
        decoration: BoxDecoration(
          color: LinkjoyCondensateSister.white,
          borderRadius: BorderRadius.circular(32),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 24),
            _linkjoyDivorceMarsha(),
            const SizedBox(height: 12),
            _linkjoyLimbicFridge(),
            const SizedBox(height: 24),
            _linkjoyWarlordAssume(),
            const SizedBox(height: 12),
            widget.isForceUpdate ? const SizedBox() : _linkjoyAliceAssume(),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  Widget _linkjoyDivorceMarsha() {
    return Text(
      "linkjoy_caring_eskimo_divorce".tr,
      style: LinkjoyMarshaGreen.style(
        color: LinkjoyCondensateSister.black,
        fontWeight: FontWeight.bold,
        fontSize: AppDimen.font_h2,
      ),
    );
  }

  Widget _linkjoyLimbicFridge() {
    return Text(
      widget.updateIntro.tr,
      textAlign: TextAlign.center,
      style: LinkjoyMarshaGreen.style(
        fontSize: 14,
        color: LinkjoyCondensateSister.black,
      ),
    );
  }

  Widget _linkjoyAliceAssume() {
    return LinkjoyUiYum.whiteFillButton()
        .width(240)
        .click(() => Get.back())
        .text("linkjoy_caring_eskimo_chap".tr);
  }

  Widget _linkjoyWarlordAssume() {
    return LinkjoyUiYum.primaryLarge()
        .width(240)
        .click(() async {
          try {
            await launchUrl(
              Uri.parse(widget.appUrl),
              mode: LaunchMode.externalApplication,
            );
          } catch (e, stack) {
            LinkjoySteamyClamOily.linkjoyInvoiceCircus(20012, e, stack);
          }
          if (!widget.isForceUpdate) {
            Get.back();
          }
        })
        .text("linkjoy_caring_eskimo_mysterious".tr);
  }
}
