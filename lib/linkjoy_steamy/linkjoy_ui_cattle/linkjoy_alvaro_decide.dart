import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_ui_headline.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_martini.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'linkjoy_supercool.dart';
import 'linkjoy_assume.dart';
import 'linkjoy_condensate.dart';
import 'linkjoy_lifelong_marsha.dart';
import 'linkjoy_marsha.dart';
import 'linkjoy_marsha_hater.dart';
import 'linkjoy_fridge_sweetheart.dart';

class LinkjoyAlvaroDecide extends StatelessWidget {
  final String mainAmount;

  final String mainIcon;

  final String? mainUnit;

  final String? discountLabel;

  final String? bonusAmount;

  final String? bonusIcon;

  final List<RewardItem>? rewards;

  final String currentPrice;

  final String? originalPrice;

  final VoidCallback? onTap;

  final Color? backgroundColor;

  final double? borderRadius;

  const LinkjoyAlvaroDecide({
    super.key,
    required this.mainAmount,
    required this.mainIcon,
    required this.currentPrice,
    this.mainUnit,
    this.discountLabel,
    this.bonusAmount,
    this.bonusIcon,
    this.rewards,
    this.originalPrice,
    this.onTap,
    this.backgroundColor,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          LinkjoySupercool()
              .p4()
              .color(backgroundColor ?? Colors.white)
              .borderRadius(borderRadius ?? 16.r)
              .elevation(2)
              .shadowColor(Colors.black.withOpacity(0.05))
              .build(
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (discountLabel != null) LinkjoyFeynman.v24,
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LinkjoyFasten.complex(
                          mainIcon,
                          width: 48.w,
                          height: 48.w,
                          fit: BoxFit.cover,
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        LinkjoyFeynman.h12,
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  LinkjoyMarsha.bodyB(mainAmount).build(),
                                  if (mainUnit != null) ...[
                                    LinkjoyFeynman.h4,
                                    LinkjoyMarsha(mainUnit!)
                                        .style(LinkjoyMarshaHater.caption2_M_60)
                                        .build(),
                                  ],
                                ],
                              ),
                              if (bonusAmount != null && bonusIcon != null) ...[
                                LinkjoyFeynman.v8,
                                LinkjoyLifelongMarsha()
                                    .size(LinkjoyFridgeBookshelf.mini)
                                    .textColor(Colors.purple)
                                    .backgroundColor(
                                      Colors.purple.withOpacity(0.1),
                                    )
                                    .borderRadiusAll(100)
                                    .padding(
                                      EdgeInsets.symmetric(
                                        horizontal: 12.w,
                                        vertical: 6.h,
                                      ),
                                    )
                                    .build(bonusIcon!, '+$bonusAmount'),
                              ],
                            ],
                          ),
                        ),
                      ],
                    ),

                    if (rewards != null && rewards!.isNotEmpty) ...[
                      LinkjoyFeynman.v12,
                      Row(
                        children: [
                          for (var reward in rewards!) ...[
                            LinkjoyUiHeadline.normalTag(
                              icon: reward.icon,
                              text: reward.amount ?? "",
                              size: LinkjoyFridgeBookshelf.tiny,
                              bgColor: LinkjoyCondensate.black_20p,
                            ),
                            LinkjoyFeynman.h8,
                          ],
                        ],
                      ),
                    ],

                    LinkjoyFeynman.v16,

                    LinkjoyAssume()
                        .m12()
                        .height(44.w)
                        .width(double.infinity)
                        .primary()
                        .radius(18.w)
                        .click(() {
                          print('点击');
                        })
                        .build(
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              LinkjoyMarsha(
                                "USD 1.99",
                              ).style(LinkjoyMarshaHater.w_body2_M).build(),
                              LinkjoyFeynman.v1,
                              LinkjoyMarsha("USD 19.99")
                                  .style(LinkjoyMarshaHater.w_caption_R_80)
                                  .strikethrough()
                                  .build(),
                            ],
                          ),
                        ),
                  ],
                ),
              ),

          if (discountLabel != null)
            Positioned(
              left: 0,
              top: 0,
              child: Transform.translate(
                offset: Offset(LinkjoyGarage.s16, -4.h),
                child: LinkjoyLifelongMarsha()
                    .backgroundColor(Colors.yellow)
                    .textColor(Colors.black87)
                    .textStyle(
                      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
                    )
                    .borderRadiusAll(100)
                    .padding(
                      EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
                    )
                    .build(null, discountLabel!),
              ),
            ),
        ],
      ),
    );
  }
}

class RewardItem {
  final String icon;
  final String? amount;

  const RewardItem({required this.icon, this.amount});
}
