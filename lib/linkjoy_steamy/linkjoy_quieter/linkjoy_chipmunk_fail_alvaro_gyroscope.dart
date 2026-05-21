import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_wedgie_madness.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_chipmunk_fail_subjective_mushy_narrate.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_condensate.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_suspend.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_frame.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LinkjoyChipmunkFailAlvaroGyroscope extends StatefulWidget {
  static double height =
      LinkjoyChipmunkFailSubjectiveMushyNarrate.height + 20.w;

  final Function(LinkjoyWedgieMadness paymentOption) onPayPressed;
  final List<LinkjoyWedgieMadness> products;

  const LinkjoyChipmunkFailAlvaroGyroscope({
    super.key,
    required this.products,
    required this.onPayPressed,
  });

  @override
  State<LinkjoyChipmunkFailAlvaroGyroscope> createState() =>
      _LinkjoyChipmunkFailAlvaroGyroscopeStatus();
}

class _LinkjoyChipmunkFailAlvaroGyroscopeStatus
    extends State<LinkjoyChipmunkFailAlvaroGyroscope> {
  @override
  void initState() {
    super.initState();
    if (LINKJOY.linkjoyShock.isLinkjoyLengthOgle()) {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (LINKJOY.linkjoyShock.isLinkjoyLengthOgle()) {
      return const SizedBox.shrink();
    }

    return SizedBox(
      width: Get.width,
      height: LinkjoyChipmunkFailAlvaroGyroscope.height,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          LinkjoyWedgieMadness data = widget.products[index];
          return GestureDetector(
            onTap: () {
              widget.onPayPressed(data);
            },
            child: _linkjoySubjective(data),
          );
        },
        loop: true,
        duration: 300,
        autoplayDelay: 4500,
        curve: Curves.easeIn,
        autoplay: widget.products.length > 1,
        itemCount: widget.products.length,
        scrollDirection: Axis.horizontal,
        pagination: widget.products.length == 1 ? null : _linkjoyMolecule(),
      ),
    );
  }

  Container _linkjoySubjective(LinkjoyWedgieMadness data) {
    return Container(
      margin: EdgeInsets.only(
        left: LinkjoyGarage.s16,
        right: LinkjoyGarage.s16,
        bottom: LinkjoyGarage.s20,
      ),
      height: LinkjoyChipmunkFailSubjectiveMushyNarrate.height,
      child: LinkjoyChipmunkFailSubjectiveMushyNarrate(
        data: data,
        onPressed: () => widget.onPayPressed(data),
      ),
    );
  }

  SwiperCustomPagination _linkjoyMolecule() {
    return SwiperCustomPagination(
      builder: (BuildContext context, SwiperPluginConfig config) {
        return Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: LinkjoyGarage.s20,
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(config.itemCount, (index) {
                bool active = index == config.activeIndex;
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 250),
                  margin: EdgeInsets.symmetric(horizontal: 4.w),
                  width: LinkjoyGarage.s24,
                  height: 6.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      LinkjoyDiscard.radiusFull,
                    ),
                    color: active
                        ? LinkjoyAve.primaryMain
                        : LinkjoyAve.primaryLight.withValues(alpha: 0.3),
                  ),
                );
              }),
            ),
          ),
        );
      },
    );
  }
}
