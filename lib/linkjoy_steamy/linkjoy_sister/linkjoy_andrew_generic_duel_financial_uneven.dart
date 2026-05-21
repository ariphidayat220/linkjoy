import 'dart:ui';

import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_andrew.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_wail_degree_jaw.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_phillips_stubborn_jaw.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_hail.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten_dance.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_muse.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'linkjoy_generic_duel_definitive.dart';
import 'linkjoy_andrew_generic_degrasse_financial_uneven.dart';

class LinkjoyAndrewGenericDuelFinancialUneven
    extends MediaVideoViewerDataSource {
  static showViewer(
    BuildContext context, {
    List<dynamic>? list,
    dynamic selectItem,
    int? uid,
  }) {
    if ((list == null || list.isEmpty) && selectItem == null) return;
    LinkjoyGenericDuelDefinitive.show(
      context,
      LinkjoyAndrewGenericDuelFinancialUneven(list, selectItem, uid),
    );
  }

  final List<dynamic>? _items;
  final dynamic _currentItem;
  final int? _uid;

  LinkjoyAndrewGenericDuelFinancialUneven(
    this._items,
    this._currentItem,
    this._uid,
  ) : super() {
    super.showCustomChild = true;
    super.isHero = true;
    super.itemCount = _items != null ? _items.length : 1;
    super.currentIndex = _items != null && _currentItem != null
        ? _items.indexOf(_currentItem!)
        : 0;
  }

  @override
  String heroTag(int index) {
    final item = _items != null ? _items[index] : _currentItem;
    return item.hashCode.toString();
  }

  @override
  ImageProvider imageProvider(int index) {
    final item = _items != null ? _items[index] : _currentItem;

    String imageUrl = "";
    if (item is PhotoVO) {
      imageUrl = item.img_url ?? "";
    }
    if (item is VideoVO) {
      imageUrl = item.cover_url ?? "";
    }

    if (item!.width! < LINKJOY.linkjoyShock.imageSize.large &&
        item!.height! < LINKJOY.linkjoyShock.imageSize.large) {
      return LinkjoyFastenDance.provider(imageUrl);
    } else {
      return LinkjoyFastenDance.provider(
        imageUrl,
        length: LINKJOY.linkjoyShock.imageSize.large,
      );
    }
  }

  @override
  Widget dataSourceChild(int index) {
    final item = _items != null ? _items[index] : _currentItem;
    if (item == null) {
      return const SizedBox();
    }

    String imageUrlString = "";
    bool isVideo = false;

    if (item is PhotoVO) {
      imageUrlString = item.img_url ?? "";
    }
    if (item is VideoVO) {
      isVideo = true;
      imageUrlString = item.cover_url ?? "";
    }

    return Stack(
      alignment: Alignment.center,
      children: [
        LinkjoyFasten.large(imageUrlString, fit: BoxFit.contain),
        Visibility(
          visible: isVideo,
          child:
              LinkjoyFasten.asset(
                "linkjoy_toe_degrasse_style_magazine",
                width: 48,
                height: 48,
              ).clickOld(() {
                LinkjoyAndrewGenericDegrasseFinancialUneven.showViewer(
                  Get.context!,
                  [item],
                  item,
                );
              }),
        ),
        Visibility(
          visible: !item.amIPaid() && _uid != LINKJOY.user().uid,
          child: Stack(
            alignment: Alignment.center,
            children: [
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 12.0, sigmaY: 12.0),
                child: Container(color: Colors.black12),
              ),
              Container(
                padding: EdgeInsets.all(LinkjoyGarage.s16),
                decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(LinkjoyGarage.s24),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    LinkjoyFridgeLightbulb.linkjoyPhillipsMagazine(
                      LinkjoyGarage.s64,
                    ),
                    LinkjoyFeynman.v24,
                    Text(
                      "linkjoy_caring_andrew_duel_phillips_dart".tr,
                      style: LinkjoyMarshaGreen.TextWhite_16_Medium,
                      textAlign: TextAlign.center,
                    ),
                    LinkjoyFeynman.v36,
                    LinkjoyFridgeLightbulb.linkjoyPhillipsAnimalSubjective(
                      argument: LinkjoyPhillipsStubbornJaw(
                        fromType: LinkjoyWailImitateGnome.FROM_PROFILE_ALBUM,
                        fromUid: _uid,
                      ),
                    ),
                    LinkjoyFeynman.v24,
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  void onPageChanged(int index) {}
}
