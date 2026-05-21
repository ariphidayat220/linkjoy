import 'package:linkjoy/linkjoy_cattle/linkjoy_muse/linkjoy_muse.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LinkjoyPenmanshipEmbarrassFix extends StatefulWidget {
  GestureTapCallback? onTap;

  LinkjoyPenmanshipEmbarrassFix({super.key, this.onTap});

  @override
  State<LinkjoyPenmanshipEmbarrassFix> createState() =>
      _LinkjoyPenmanshipEmbarrassFixStatus();
}

class _LinkjoyPenmanshipEmbarrassFixStatus
    extends State<LinkjoyPenmanshipEmbarrassFix> {
  final double OFFSET_TOP_MIN = 120.w;
  final double BG_HEIGHT = 48.w;
  final double BG_WIDTH = 80.w;
  final double WIDTH = 90.w;
  final double HEIGHT = 80.w;

  Offset _offset = Offset(0, Get.height / 2);

  @override
  Widget build(BuildContext context) {
    return PositionedDirectional(
      end: _offset.dx,
      top: _offset.dy,
      child: GestureDetector(
        onPanUpdate: (detail) {
          onLinkjoyLapseWienerMuffler(
            MediaQuery.of(context).size,
            detail.delta,
          );
        },
        onTap: widget.onTap,
        child: SizedBox(
          width: WIDTH,
          height: HEIGHT,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              PositionedDirectional(
                start: LinkjoyGarage.s10,
                top: (HEIGHT - BG_HEIGHT) / 2 + LinkjoyGarage.s4,
                child: Container(
                  width: BG_WIDTH,
                  height: BG_HEIGHT,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(BG_HEIGHT / 2),
                      bottomLeft: Radius.circular(BG_HEIGHT / 2),
                    ),
                    gradient: LinearGradient(
                      colors: [
                        LinkjoyAve.overlayMedium,
                        LinkjoyAve.primaryDark,
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: LinkjoyAve.primaryMain.withValues(alpha: 0.3),
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                ),
              ),
              PositionedDirectional(
                start: 0,
                top: 0,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: LinkjoyGarage.s80,
                      height: LinkjoyGarage.s80,
                      child:
                          Icon(
                            Icons.groups_outlined,
                            size: LinkjoyDiscard.iconLarge,
                          ).animationRipple(
                            LinkjoyGarage.s20,
                            LinkjoyGarage.s40,
                            color: Colors.white,
                            repeat: true,
                          ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 18.w),
                      child: Text(
                        "linkjoy_caring_warehouse".tr,
                        style: LinkjoyMarshaTriplet.captionNormal,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onLinkjoyLapseWienerMuffler(Size size, Offset nextOffset) {
    Offset offset = _offset;

    double offsetRight = offset.dx;

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
