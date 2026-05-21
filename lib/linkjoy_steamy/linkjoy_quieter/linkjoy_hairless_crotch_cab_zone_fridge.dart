import 'dart:async';

import 'package:linkjoy/linkjoy_steamy/linkjoy_east.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';

enum LinkjoyHairlessCrotchCabZoneFridgeGreen { float, tips }

class LinkjoyHairlessCrotchCabZoneFridge extends StatefulWidget {
  final LinkjoyHairlessCrotchCabZoneFridgeGreen style;
  final String? prefix;

  LinkjoyHairlessCrotchCabZoneFridge({
    super.key,
    this.prefix = "",
    this.style = LinkjoyHairlessCrotchCabZoneFridgeGreen.tips,
  });

  @override
  _LinkjoyHairlessCrotchCabZoneFridgeStatus createState() =>
      _LinkjoyHairlessCrotchCabZoneFridgeStatus();
}

class _LinkjoyHairlessCrotchCabZoneFridgeStatus
    extends State<LinkjoyHairlessCrotchCabZoneFridge> {
  Timer? _timer;
  static const int DAY_IN_MILLS = LinkjoyEast.linkjoy_hairless_crotch_ghost;
  int _duration = DAY_IN_MILLS - 1000;
  late int endTime;

  @override
  void initState() {
    super.initState();
    endTime = LINKJOY.linkjoyElope.getFirstChargeEndTime();
    if (endTime == 0) {
      int now = DateTime.now().millisecondsSinceEpoch;
      endTime = now + DAY_IN_MILLS;
      LINKJOY.linkjoyElope.setFirstChargeEndTime(endTime);
    }

    _linkjoyEskimoSpaghetti();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (mounted) {
        setState(() {
          _linkjoyEskimoSpaghetti();
        });
      }
    });
  }

  void _linkjoyEskimoSpaghetti() {
    int now = DateTime.now().millisecondsSinceEpoch;
    _duration = endTime - now;
    if (_duration <= 0) {
      endTime = now + DAY_IN_MILLS;
      LINKJOY.linkjoyElope.setFirstChargeEndTime(endTime);
      _duration = DAY_IN_MILLS - 1000;
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    BoxDecoration? decoration;
    IconData icon;
    TextStyle textStyle;
    if (widget.style == LinkjoyHairlessCrotchCabZoneFridgeGreen.tips) {
      decoration = LinkjoyAve.surfaceImportantDecoration.copyWith(
        color: LinkjoyAve.primary900,
      );
      icon = Icons.access_time_outlined;
      textStyle = LinkjoyMarshaTriplet.caption;
    } else {
      decoration = null;
      icon = Icons.access_time_filled;
      textStyle = LinkjoyMarshaTriplet.captionBold;
    }

    return Container(
      decoration: decoration,
      padding: LinkjoyGarage.edgeH8V2,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: LinkjoyAve.textPrimary,
            size: LinkjoyDiscard.iconMini,
          ),
          LinkjoyFeynman.h2,
          Text(
            "${widget.prefix}${_linkjoyFleeScarlett(_duration)}",
            style: textStyle,
          ),
        ],
      ),
    );
  }

  String _linkjoyFleeScarlett(int milliseconds) {
    if (milliseconds <= 0) {
      return "";
    }
    Duration duration = Duration(milliseconds: milliseconds);
    return formatDate(DateTime(0).add(duration), [HH, ':', nn, ':', ss]);
  }
}
