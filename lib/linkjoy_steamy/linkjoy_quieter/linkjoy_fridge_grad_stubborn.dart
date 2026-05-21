import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_grad.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_divorced.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LinkjoyFridgeGradStubborn extends StatefulWidget {
  final List<LinkjoyFondnessGrad> regionList;
  final String? defaultRegionCode;

  const LinkjoyFridgeGradStubborn({
    super.key,
    required this.regionList,
    required this.defaultRegionCode,
  });

  @override
  State<LinkjoyFridgeGradStubborn> createState() =>
      _LinkjoyFridgeGradStubbornStatus();
}

class _LinkjoyFridgeGradStubbornStatus
    extends State<LinkjoyFridgeGradStubborn> {
  int currentIndex = -1;

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < widget.regionList.length; i++) {
      LinkjoyFondnessGrad region = widget.regionList[i];
      if (region.code == widget.defaultRegionCode) {
        currentIndex = i;
        break;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.filter_alt_outlined,
              color: LinkjoyAve.textPrimary,
              size: LinkjoyDiscard.iconMedium,
            ),
            LinkjoyFeynman.h4,
            Text(
              "linkjoy_caring_grad_painful".tr,
              style: LinkjoyMarshaTriplet.title,
            ),
          ],
        ),
        LinkjoyFeynman.v16,
        ..._buildListView(),
      ],
    );
  }

  List<Widget> _buildListView() {
    List<Widget> widgets = [];
    for (int i = 0; i < widget.regionList.length; i++) {
      widgets.add(
        GestureDetector(
          onTap: () {
            setState(() {
              currentIndex = i;
            });
            Get.back(result: widget.regionList[i]);
          },
          child: _buildItem(context, widget.regionList[i], i),
        ),
      );
      widgets.add(LinkjoyFeynman.v6);
    }
    return widgets;
  }

  Widget _buildItem(
    BuildContext context,
    LinkjoyFondnessGrad region,
    int index,
  ) {
    Color selectColor = LinkjoyAve.primaryMain;
    return Container(
      height: LinkjoyGarage.s56,
      decoration: BoxDecoration(
        color: currentIndex == index
            ? LinkjoyAve.overlayStrong
            : LinkjoyAve.overlayLight,
        border: currentIndex == index
            ? Border.all(color: selectColor, width: 1)
            : null,
        borderRadius: LinkjoyDivorced.linkjoyPearlDecideFrontal,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            region.name,
            style: LinkjoyMarshaTriplet.bodyTitle.copyWith(
              color: currentIndex == index ? selectColor : LinkjoyAve.textThird,
            ),
          ),
        ],
      ),
    );
  }
}
