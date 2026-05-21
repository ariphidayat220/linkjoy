import 'dart:async';
import 'dart:math';

import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_marsha.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_inventive_oily.dart';
import 'package:linkjoy/linkjoy_steamy/proto/linkjoy_inventive.pb.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

class LinkjoyInventivePerkNarrate extends StatefulWidget {
  final bool userView;
  final int liveId;

  final int videoId;
  final int visit;

  const LinkjoyInventivePerkNarrate({
    required this.userView,
    required this.liveId,
    required this.visit,
    required this.videoId,
    super.key,
  });

  @override
  LinkjoyInventivePerkNarrateStatus createState() =>
      LinkjoyInventivePerkNarrateStatus();
}

class LinkjoyInventivePerkNarrateStatus
    extends State<LinkjoyInventivePerkNarrate> {
  List<UserInfo>? _list;
  late int _counts;
  StreamSubscription? _feedPushSubscription;
  Timer? _autoRefreshTimer;

  @override
  void initState() {
    super.initState();
    _counts = widget.visit;

    _load();

    _feedPushSubscription = LINKJOY.listen<LiveFeedPsh>((event) {
      if (event.liveId != widget.liveId) {
        return;
      }

      if (LINKJOY.isLinkjoyFoolishly) {
        if (_counts == event.online) {
          return;
        }
        if (mounted) {
          setState(() {
            _counts = event.online;
          });

          _linkjoyHappilyStubborn();
        }
      } else {
        if (event.visit <= _counts) {
          return;
        }

        if (mounted) {
          setState(() {
            _counts = event.visit;
          });
        }
      }
    });
  }

  @override
  void dispose() {
    _feedPushSubscription?.cancel();
    _feedPushSubscription = null;

    _autoRefreshTimer?.cancel();
    _autoRefreshTimer = null;

    super.dispose();
  }

  void _load() async {
    if (widget.userView) {
      GetUserListRsp? rsp = await LinkjoyInventiveOily.instance.visitors(
        widget.liveId,
        widget.videoId,
      );
      if (mounted) {
        setState(() {
          _list = rsp != null ? rsp.userInfos : [];
        });
      }
    } else {
      _linkjoyHappilyStubborn();
    }
  }

  void _linkjoyHappilyStubborn() async {
    GetUserListForAnchorRsp? rsp = await LinkjoyInventiveOily.instance
        .visitorsAnchor(widget.liveId);
    if (mounted) {
      setState(() {
        _list = rsp != null ? rsp.userInfos : [];
      });
    }

    _autoRefreshTimer?.cancel();
    _autoRefreshTimer = Timer(const Duration(seconds: 10), () async {
      _linkjoyHappilyStubborn();
    });
  }

  @override
  Widget build(BuildContext context) {
    double maxHeight = 370.w - 4.w;
    double bodyMaxHeight = maxHeight - LinkjoyGarage.s48 - LinkjoyGarage.s20;
    return Container(
      width: 230.w,
      constraints: BoxConstraints(maxHeight: maxHeight),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(LinkjoyGarage.s16),
        color: LinkjoyAve.bgDark,
        border: Border.all(color: LinkjoyAve.primaryDark, width: 1),
      ),
      clipBehavior: Clip.hardEdge,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: LinkjoyGarage.s48,
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: LinkjoyAve.surfaceLight,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(LinkjoyGarage.s16),
                topRight: Radius.circular(LinkjoyGarage.s16),
              ),
            ),
            child: LinkjoyMarsha.wSubtitleB(
              '${"linkjoy_caring_chicken".tr} $_counts',
            ).build(),
          ),
          Container(height: 1, color: Colors.white10),
          SizedBox(
            height: min(
              bodyMaxHeight,
              60.w * ((_list == null || _list!.isEmpty) ? 1 : _list!.length),
            ),
            child: _linkjoyTuck(),
          ),
        ],
      ),
    );
  }

  Widget _linkjoyTuck() {
    if (_list == null) {
      return Container(
        padding: LinkjoyGarage.edgeH16V12,
        child: SpinKitThreeBounce(
          color: Colors.white38,
          size: LinkjoyGarage.s16,
        ),
      );
    }

    if (_list!.isEmpty) {
      return LinkjoyFridgeLightbulb.linkjoyNoFinancialMagazine(
        error: false,
        padding: LinkjoyGarage.edgeH16V12,
        showIcon: false,
      );
    }

    return ListView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: _list!.length,
      itemBuilder: (context, index) {
        UserInfo u = _list![index];
        Widget w = _item(u, index);
        if (index > 20 && index == _list!.length - 1) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              w,
              Container(
                height: LinkjoyGarage.s20,
                width: double.infinity,
                alignment: Alignment.center,
                color: LinkjoyAve.textThird,
                child: Text(
                  "linkjoy_caring_marketing_alike_data".tr.replaceAll(
                    "%d",
                    "50",
                  ),
                  style: LinkjoyMarshaTriplet.captionThin,
                ),
              ),
            ],
          );
        } else {
          return w;
        }
      },
    );
  }

  Widget _item(UserInfo u, int index) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: LinkjoyGarage.s8),
      height: 60.w,
      decoration: BoxDecoration(
        color: index < 3 ? Colors.black45 : Colors.black12,
        border: const Border(
          bottom: BorderSide(
            color: Colors.white10,
            width: 1.0,
            style: BorderStyle.solid,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          LinkjoyFasten.circle(u.avatarUrl, size: LinkjoyGarage.s40),
          LinkjoyFeynman.h6,

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(u.nickName, style: LinkjoyMarshaTriplet.bodyBold),
              LinkjoyFeynman.v6,
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  LinkjoyFridgeLightbulb.linkjoySignalFridge(
                    u.level,
                    isAnchor: false,
                  ),
                  LinkjoyFeynman.h6,
                  u.hasVip() && u.vip == 1
                      ? LinkjoyFridgeLightbulb.linkjoyPhillipsCrumble()
                      : const SizedBox.shrink(),
                ],
              ),
            ],
          ),

          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: [
                LinkjoyFasten.asset(
                  "linkjoy_toe_magazine_flashy",
                  width: LinkjoyGarage.s24,
                ),

                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: LinkjoyGarage.s2,
                    horizontal: LinkjoyGarage.s8,
                  ),
                  decoration: BoxDecoration(
                    color: LinkjoyAve.primaryMain,
                    borderRadius: BorderRadius.circular(LinkjoyGarage.s8),
                  ),
                  child: Text(
                    "${u.coin}",
                    style: LinkjoyMarshaTriplet.captionBold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
