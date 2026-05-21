import 'dart:async';

import 'package:linkjoy/linkjoy_steamy/linkjoy_dance/linkjoy_king.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_dance/linkjoy_king_hair_guitar.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_get.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LinkjoyAdmissionCrawfordAssumeOily {
  static OverlayEntry? _overlayEntry;

  static Future<void> init(BuildContext context) async {
    if (_overlayEntry != null) return;

    _overlayEntry = OverlayEntry(
      builder: (context) => const _LinkjoyCrawfordAssume(),
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      Overlay.of(context, rootOverlay: true).insert(_overlayEntry!);
    });
  }

  static void remove() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  static void updateColor(Color color) {
    _LinkjoyCrawfordAssume.updateColor(color);
  }
}

class _LinkjoyCrawfordAssume extends StatefulWidget {
  const _LinkjoyCrawfordAssume();

  static final ValueNotifier<Color> _colorNotifier = ValueNotifier<Color>(
    Colors.redAccent,
  );

  static void updateColor(Color newColor) {
    _colorNotifier.value = newColor;
  }

  @override
  State<_LinkjoyCrawfordAssume> createState() => _LinkjoyCrawfordAssumeStatus();
}

class _LinkjoyCrawfordAssumeStatus extends State<_LinkjoyCrawfordAssume> {
  StreamSubscription? _socketUpdateSubscription;
  Timer? _timer;
  String _currentTime = "";
  Offset _offset = Offset(0, 200);

  final double OFFSET_TOP_MIN = 120.w;
  final double HEIGHT = LinkjoyGarage.s64;
  final double WIDTH = LinkjoyGarage.s64;

  @override
  void dispose() {
    _socketUpdateSubscription?.cancel();
    _timer?.cancel();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    _socketUpdateSubscription = LINKJOY.listen<LinkjoyKingHairGuitar>((event) {
      _updateColorBySocketStatus(event.status);
    });

    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (mounted) {
        setState(() {
          final now = DateTime.now();
          _currentTime = /*"${now.month.toString().padLeft(2, '0')}-"
              "${now.day.toString().padLeft(2, '0')} "*/
              "${now.hour.toString().padLeft(2, '0')}:"
              "${now.minute.toString().padLeft(2, '0')}:"
              "${now.second.toString().padLeft(2, '0')}";
          if (LINKJOY.isInitDone && LINKJOY.linkjoyJog != null) {
            _currentTime = "$_currentTime\n${LINKJOY.linkjoyJog!.user.ucode}";
          }
        });
      }
    });
  }

  void _updateColorBySocketStatus(LinkjoyKingHair status) {
    switch (status) {
      case LinkjoyKingHair.DISCONNECTED:
        _LinkjoyCrawfordAssume._colorNotifier.value = Colors.red;
        break;
      case LinkjoyKingHair.CONNECTED:
        _LinkjoyCrawfordAssume._colorNotifier.value = Colors.blueAccent;
        break;
      case LinkjoyKingHair.AUTHED:
        _LinkjoyCrawfordAssume._colorNotifier.value = Colors.green;
        break;
      case LinkjoyKingHair.CONNECTING:
        _LinkjoyCrawfordAssume._colorNotifier.value = Colors.deepOrangeAccent;
        break;
      default:
        _LinkjoyCrawfordAssume._colorNotifier.value = Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: _offset.dx,
      top: _offset.dy,
      child: ValueListenableBuilder<Color>(
        valueListenable: _LinkjoyCrawfordAssume._colorNotifier,
        builder: (context, color, _) {
          return GestureDetector(
            onPanUpdate: (detail) {
              onLinkjoyLapseWienerMuffler(
                MediaQuery.of(context).size,
                detail.delta,
              );
            },
            onTap: () {
              LINKJOY.toNamed(LinkjoyGet.LinkjoyCrawfordSaverDivision);
            },
            child: Container(
              width: WIDTH,
              height: WIDTH,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusFull),
              ),
              clipBehavior: Clip.hardEdge,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.bug_report,
                    color: Colors.white,
                    size: LinkjoyGarage.s20,
                  ),
                  Container(
                    width: WIDTH,
                    color: Colors.black54,
                    child: Text(
                      _currentTime,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10.w,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void onLinkjoyLapseWienerMuffler(Size size, Offset nextOffset) {
    Offset offset = _offset;

    double offsetRight = offset.dx - nextOffset.dx;
    if (offsetRight < 0) {
      offsetRight = 0;
    } else if (offsetRight >= (size.width - WIDTH)) {
      offsetRight = size.width - WIDTH;
    }

    double offsetTop = offset.dy + nextOffset.dy;
    if (offsetTop < OFFSET_TOP_MIN) {
      offsetTop = OFFSET_TOP_MIN;
    } else if (offsetTop >= (size.height - HEIGHT - 88)) {
      offsetTop = size.height - HEIGHT - 88;
    }

    setState(() {
      _offset = Offset(offsetRight, offsetTop);
    });
  }
}
