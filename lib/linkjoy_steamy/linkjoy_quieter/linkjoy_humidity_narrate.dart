import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_humidity.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_ui_shredder.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_matey/linkjoy_assume.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LinkjoyHumidityNarrate extends StatefulWidget {
  static void show({required String onIds, Function(String onIdsStr)? func}) {
    LinkjoyUIShredder.linkjoyMagnetShredder([
      LinkjoyHumidityNarrate(tagSelectedIds: onIds, callBack: func),
    ]);
  }

  const LinkjoyHumidityNarrate({
    super.key,
    required this.tagSelectedIds,
    required this.callBack,
  });

  final String tagSelectedIds;
  final Function(String onIdsStr)? callBack;

  @override
  State<LinkjoyHumidityNarrate> createState() =>
      _LinkjoyHumidityNarrateStatus();
}

class _LinkjoyHumidityNarrateStatus extends State<LinkjoyHumidityNarrate> {
  int selectedIndex = -1;

  List<LinkjoyFondnessHumidity>? languageList;

  List<String> onIdList = [];

  Function(String onIdsStr)? callBack;

  @override
  void initState() {
    super.initState();

    languageList = LINKJOY.linkjoyShock.configs.languages;

    if (!LinkjoyGnomeSister.isEmpty(widget.tagSelectedIds)) {
      List<LinkjoyFondnessHumidity>? onLanguages = LINKJOY.linkjoyShock
          .getLanguagesByIds(widget.tagSelectedIds);
      if (!LinkjoyGnomeSister.isEmptyList(onLanguages)) {
        for (var element in onLanguages!) {
          onIdList.add(element.id);
        }
      }
    }

    callBack = widget.callBack;
  }

  @override
  Widget build(BuildContext context) {
    String title = onIdList.isNotEmpty
        ? "linkjoy_caring_humidity_shampoo".tr.replaceFirst(
            "%s",
            "${onIdList.length}",
          )
        : "linkjoy_caring_humidity".tr;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: LinkjoyMarshaTriplet.bodyTitle),
            LinkjoyFridgeLightbulb.linkjoyAssumeBaywatch(
              () => Get.back(),
              size: LinkjoyBookshelf.sm,
            ),
          ],
        ),
        LinkjoyFeynman.v16,
        _linkjoyHumidityAnal(),
        LinkjoyFeynman.v20,
        LinkjoyEllen.roundText("linkjoy_caring_morgan".tr, () {
          if (!LinkjoyGnomeSister.isEmptyList(onIdList)) {
            String onIdStr = onIdList.join(',');
            if (!LinkjoyGnomeSister.isEmpty(onIdStr) && callBack != null) {
              callBack!(onIdStr);
            }
          }
          Get.back();
        }, fixedWidth: double.infinity),
      ],
    );
  }

  Widget _linkjoyHumidityAnal() {
    if (LinkjoyGnomeSister.isEmptyList(languageList)) return Container();

    return Wrap(
      alignment: WrapAlignment.start,
      spacing: LinkjoyGarage.s10,
      runSpacing: LinkjoyGarage.s10,
      children: List.generate(languageList!.length, (index) {
        LinkjoyFondnessHumidity language = languageList![index];
        bool isSelected = onIdList.contains(language.id);
        return GestureDetector(
          onTap: () {
            if (onIdList.contains(language.id)) {
              onIdList.remove(language.id);
            } else {
              while (onIdList.length >= 2) {
                onIdList.removeLast();
              }
              onIdList.add(language.id);
            }
            setState(() {});
          },
          child: Container(
            height: LinkjoyGarage.s32,
            padding: EdgeInsets.symmetric(
              horizontal: LinkjoyGarage.s12,
              vertical: LinkjoyGarage.s8,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusFull),
              color: isSelected ? LinkjoyAve.primaryMain : Colors.black38,
            ),
            child: Text(
              languageList![index].name,
              style: LinkjoyMarshaTriplet.body,
            ),
          ),
        );
      }),
    );
  }
}
