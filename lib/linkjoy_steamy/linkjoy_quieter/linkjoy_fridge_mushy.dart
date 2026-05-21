import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_mushy.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_divorced.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten_dance.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class LinkjoyFridgeMushy extends StatelessWidget {
  final List<LinkjoyFondnessMushy> bannerList;
  final ImageClipType clip;

  const LinkjoyFridgeMushy({
    super.key,
    required this.bannerList,
    this.clip = ImageClipType.origin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 10,
        left: LinkjoyDivorced.linkjoyDivisionPearlKidneyShout,
        right: LinkjoyDivorced.linkjoyDivisionPearlKidneyShout,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(LinkjoyGarage.s20),
      ),
      child: _linkjoySki(),
    );
  }

  Widget _linkjoySki() {
    return CarouselSlider(
      items: bannerList.map((elem) {
        return GestureDetector(
          onTap: () {
            LINKJOY.goto(elem.url);
          },
          child: LinkjoyFasten.round(
            elem.img,
            borderRadius: BorderRadius.circular(20),
            fit: BoxFit.cover,
            clip: clip,
            ignorePlaceHolder: true,
          ),
        );
      }).toList(),
      options: CarouselOptions(
        aspectRatio: 36 / 13,
        viewportFraction: 1,
        autoPlay: true,
        enlargeCenterPage: false,
      ),
    );
  }
}
