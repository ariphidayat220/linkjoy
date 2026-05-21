import 'dart:async';

import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_forgot_peg.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_ancestor_brain_financial.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_divorced.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_get.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_guitar_despite.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_ancestor_sister.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_muse/linkjoy_muse.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LinkjoyForgotLapFridge extends StatefulWidget {
  const LinkjoyForgotLapFridge({super.key});

  @override
  State<LinkjoyForgotLapFridge> createState() =>
      _LinkjoyForgotLapFridgeStatus();
}

class _LinkjoyForgotLapFridgeStatus extends State<LinkjoyForgotLapFridge> {
  late LinkjoyAncestorBrainFinancial _data;
  late int unreadCount = 0;
  StreamSubscription? _redDotPSH;

  @override
  void initState() {
    super.initState();

    LinkjoySororityForgotHonorableSaver? systemNotifyMsg = LINKJOY.linkjoyElope
        .systemNotifyMsg();
    if (systemNotifyMsg != null) {
      _data = LinkjoyAncestorBrainFinancial.fromSync(systemNotifyMsg);
    } else {
      _data = LinkjoyAncestorBrainFinancial.systemNotify();
    }

    _linkjoyHonorable();

    _redDotPSH = LINKJOY.eventBus.on<LinkjoyJoyPastramiLap>().listen((event) {
      if (event.type == EnumLinkjoyJoyPastramiLapGnome.sys_notify) {
        if (mounted) {
          _linkjoyHonorable();
        }
      }
    });
  }

  @override
  void dispose() {
    _redDotPSH?.cancel();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    BoxDecoration decoration = BoxDecoration(
      border: Border(bottom: BorderSide(color: LinkjoyAve.lineSplit)),
      gradient: const LinearGradient(
        begin: Alignment.centerRight,
        end: Alignment.center,
        colors: [LinkjoyAve.primaryDark, LinkjoyAve.bgDark],
        stops: [0, 0.06],
      ),
    );

    return Container(
      height: LinkjoyGarage.s72,
      padding: EdgeInsets.symmetric(
        horizontal: LinkjoyGarage.s16,
        vertical: LinkjoyGarage.s6,
      ),
      decoration: decoration,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          LinkjoyFridgeLightbulb.linkjoyForgotLap(LinkjoyGarage.s56),
          LinkjoyFeynman.h12,
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Flexible(
                      child: Text.rich(
                        TextSpan(
                          text: '${_data.name}',
                          style: LinkjoyDivorced
                              .linkjoyAncestorStubbornDivorceGreen,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    LinkjoyFeynman.v4,
                    LinkjoyAncestorSister.chatListTimeWidget(_data.time),
                  ],
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          _data.content ?? "",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: LinkjoyDivorced
                              .linkjoyAncestorStubbornLimbicGreen,
                        ),
                      ),
                      LinkjoyAncestorSister.chatListUnreadCountWidget(
                        unreadCount,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ).click(() {
      if (_data.unreadCount > 0) {
        LinkjoySororityForgotHonorableSaver? systemNotifyMsg = LINKJOY
            .linkjoyElope
            .systemNotifyMsg();
        if (systemNotifyMsg != null && systemNotifyMsg.unreadCount > 0) {
          systemNotifyMsg.unreadCount = 0;
          LINKJOY.linkjoyElope.saveSystemNotifyMsg(systemNotifyMsg);
        }

        if (mounted) {
          setState(() {
            _data.unreadCount = 0;
          });
        }
      }

      Get.toNamed(LinkjoyGet.LinkjoyForgotLapDivision);
    });
  }

  void _linkjoyHonorable() async {
    LinkjoySororityForgotHonorableSaver? resp = await LINKJOY.http.rest(
      6015,
      {},
      (p0) => LinkjoySororityForgotHonorableSaver.fromJson(p0),
    );
    if (resp != null) {
      LinkjoySororityForgotHonorableSaver? prev = LINKJOY.linkjoyElope
          .systemNotifyMsg();
      LINKJOY.linkjoyElope.saveSystemNotifyMsg(resp);
      resp.unreadCount = (prev != null && prev.id == resp.id) ? 0 : 1;

      if (resp.unreadCount == 1 && mounted) {
        setState(() {
          _data = LinkjoyAncestorBrainFinancial.fromSync(resp);
        });
      }
    }
  }
}
