import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_wedgie_madness.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_muse.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_wail_degree_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_wail_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_chipmunk_fail_subjective_mushy_narrate.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../linkjoy_cattle/linkjoy_ui/linkjoy_martini.dart';

class LinkjoyMosquitoVinegarNarrate extends StatefulWidget {
  static Widget? create({
    required String tips,
    required int fromType,
    required int? fromUid,
    required VoidCallback close,
  }) {
    LinkjoyWedgieMadness? data;

    List<LinkjoyWedgieMadness>? firstList =
        LinkjoyWailOily.instance.firstListOptions;
    List<LinkjoyWedgieMadness>? coinsList =
        LinkjoyWailOily.instance.coinsListOptions;

    if (!LinkjoyGnomeSister.isEmpty(firstList)) {
      data = firstList!.first;
    } else if (!LinkjoyGnomeSister.isEmpty(coinsList)) {
      data = coinsList!.first;
    }
    if (data == null) return null;
    return LinkjoyMosquitoVinegarNarrate(
      data: data,
      tips: tips,
      fromType: fromType,
      fromUid: fromUid,
      close: close,
    );
  }

  final LinkjoyWedgieMadness data;
  final int fromType;
  final String tips;
  final VoidCallback close;

  int? fromUid;

  LinkjoyMosquitoVinegarNarrate({
    super.key,
    required this.data,
    this.fromUid,
    required this.fromType,
    required this.tips,
    required this.close,
  });

  @override
  State<LinkjoyMosquitoVinegarNarrate> createState() =>
      _LinkjoyMosquitoVinegarNarrateStatus();
}

class _LinkjoyMosquitoVinegarNarrateStatus
    extends State<LinkjoyMosquitoVinegarNarrate> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width - 32,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              LinkjoyFridgeLightbulb.linkjoyAssumeBaywatch(
                widget.close,
                iconColor: Colors.black,
                bgColor: Colors.white30,
              ),
            ],
          ),
          LinkjoyFeynman.v8,
          GestureDetector(
            onTap: () {
              widget.close();
              LinkjoyWailDegreeOily.instance.linkjoyGoToWailDegree(
                option: widget.data,
                fromType: widget.fromType,
                fromUid: widget.fromUid,
              );
            },
            child: LinkjoyChipmunkFailSubjectiveMushyNarrate(
              data: widget.data,
              onPressed: () {
                widget.close();
                LinkjoyWailDegreeOily.instance.linkjoyGoToWailDegree(
                  option: widget.data,
                  fromType: widget.fromType,
                  fromUid: widget.fromUid,
                );
              },
              title: widget.tips,
            ),
          ),
          84.hGap,
        ],
      ),
    );
  }
}
