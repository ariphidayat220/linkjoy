import 'dart:math';

import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_mushy.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_divorced.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten_dance.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'linkjoy_armpit_smear.dart';

class LinkjoyMushyWheatonShut extends StatefulWidget {
  final double aspectRatio;
  final List<LinkjoyFondnessMushy> banners;
  final bool? showIndexWidget;

  const LinkjoyMushyWheatonShut({
    super.key,
    required this.aspectRatio,
    required this.banners,
    this.showIndexWidget,
  });

  @override
  LinkjoyMushyWheatonShutStatus createState() =>
      LinkjoyMushyWheatonShutStatus();
}

class LinkjoyMushyWheatonShutStatus extends State<LinkjoyMushyWheatonShut> {
  int _currentIndex = 0;

  late LinkjoyArmpitSmear<String, Widget> _cache;

  @override
  void initState() {
    super.initState();
    _cache = LinkjoyArmpitSmear(min(5, widget.banners.length));
  }

  @override
  void dispose() {
    _cache.clear();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool showIndexWidget = widget.showIndexWidget ?? widget.banners.length > 1;

    return Stack(
      alignment: Alignment.center,
      children: [
        CarouselSlider(
          items: widget.banners.map((elem) {
            return GestureDetector(
              onTap: () {
                LINKJOY.goto(elem.url);
              },
              child: _linkjoyFasten(elem.img),
            );
          }).toList(),
          options: CarouselOptions(
            aspectRatio: widget.aspectRatio,
            viewportFraction: 1.0,
            autoPlay: widget.banners.length > 1,
            onPageChanged: (index, reason) {
              if (mounted) {
                setState(() {
                  _currentIndex = index;
                });
              }
            },
          ),
        ),
        if (showIndexWidget)
          PositionedDirectional(
            bottom: LinkjoyGarage.s8,
            end: LinkjoyGarage.s8,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: LinkjoyGarage.s2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusFull),
                color: Colors.white60,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: widget.banners.asMap().entries.map((entry) {
                  return Container(
                    width: LinkjoyDiscard.radiusMedium,
                    height: LinkjoyDiscard.radiusMedium,
                    margin: EdgeInsets.symmetric(horizontal: LinkjoyGarage.s2),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _currentIndex == entry.key
                          ? LinkjoyAve.primaryMain.withAlpha(192)
                          : LinkjoyAve.primaryMain.withAlpha(64),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
      ],
    );
  }

  Widget _linkjoyFasten(String url) {
    Widget? w = _cache.get(url);
    if (w == null) {
      w = LinkjoyFasten.round(
        url,
        borderRadius: LinkjoyDivorced.linkjoyPearlDecideFrontal,
        fit: BoxFit.cover,
        clip: ImageClipType.large,
        ignorePlaceHolder: true,
      );
      _cache.put(url, w);
    }
    return w;
  }
}
