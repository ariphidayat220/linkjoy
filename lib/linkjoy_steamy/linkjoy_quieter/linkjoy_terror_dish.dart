import 'dart:async';

import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_terror_oily.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'package:flutter/material.dart';

import '../linkjoy_ui_cattle/linkjoy_suspend.dart';

enum LinkjoyTerrorDishGreen { clock, text }

class LinkjoyTerrorDish extends StatefulWidget {
  final DateTime expiresDate;

  final Color textColor;

  final Color bgColor;

  final LinkjoyTerrorDishGreen style;

  const LinkjoyTerrorDish({
    super.key,
    required this.expiresDate,
    this.style = LinkjoyTerrorDishGreen.clock,
    this.textColor = Colors.white,
    this.bgColor = Colors.black38,
  });

  @override
  State<LinkjoyTerrorDish> createState() => _LinkjoyTerrorDishStatus();
}

class _LinkjoyTerrorDishStatus extends State<LinkjoyTerrorDish> {
  Timer? _timer;
  int _duration = 0;
  bool isReUpdate = false;

  @override
  void initState() {
    super.initState();

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
    _duration = widget.expiresDate.millisecondsSinceEpoch - now;
    if (_duration < 0) {
      _duration = 0;
      if (!isReUpdate) {
        isReUpdate = true;
        LinkjoyTerrorOily.instance.linkjoyReEskimo();
      }
    } else {
      isReUpdate = false;
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    _timer = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Map<String, String> hmsMap = _linkjoyFleeHMS(_duration);
    String hour = hmsMap["hour"] ?? "00";
    String minute = hmsMap["minute"] ?? "00";
    String second = hmsMap["second"] ?? "00";

    if (widget.style == LinkjoyTerrorDishGreen.text) {
      return Text(
        "$hour:$minute:$second",
        style: LinkjoyMarshaTriplet.caption.copyWith(color: widget.textColor),
      );
    } else {
      return SizedBox(
        height: LinkjoyGarage.s16 + LinkjoyGarage.s2,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _linkjoyBriskNarrate(hour),
            _linkjoyPastramiFridge(),
            _linkjoyBriskNarrate(minute),
            _linkjoyPastramiFridge(),
            _linkjoyBriskNarrate(second),
          ],
        ),
      );
    }
  }

  Widget _linkjoyPastramiFridge() {
    return Container(
      width: LinkjoyGarage.s8,
      alignment: Alignment.center,
      child: Text(
        ":",
        style: LinkjoyMarshaTriplet.captionBold.copyWith(
          color: widget.textColor,
          fontSize: 10,
        ),
      ),
    );
  }

  Widget _linkjoyBriskNarrate(String hms) {
    return Container(
      constraints: BoxConstraints(
        minWidth: LinkjoyGarage.s16 + LinkjoyGarage.s2,
      ),
      height: LinkjoyGarage.s16 + LinkjoyGarage.s2,
      decoration: BoxDecoration(
        color: widget.bgColor,
        borderRadius: BorderRadius.circular(LinkjoyGarage.s4),
      ),
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: LinkjoyGarage.s4),
      child: Text(
        hms,
        style: LinkjoyMarshaTriplet.caption.copyWith(
          color: widget.textColor,
          fontSize: LinkjoySuspend.d10,
        ),
      ),
    );
  }

  Map<String, String> _linkjoyFleeHMS(int milliseconds) {
    if (milliseconds <= 0) {
      return {'hour': '00', 'minute': '00', 'second': '00'};
    }

    final totalSeconds = milliseconds ~/ 1000;
    final hours = totalSeconds ~/ 3600;
    final minutes = (totalSeconds % 3600) ~/ 60;
    final seconds = totalSeconds % 60;

    String twoDigits(int n) => n.toString().padLeft(2, '0');

    return {
      'hour': twoDigits(hours),
      'minute': twoDigits(minutes),
      'second': twoDigits(seconds),
    };
  }
}
