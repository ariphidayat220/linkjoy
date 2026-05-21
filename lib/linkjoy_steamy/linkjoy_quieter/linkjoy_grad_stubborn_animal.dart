import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_grad.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_condensate_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_hail.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_condensate.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_martini.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LinkjoyGradStubbornAnimal extends StatefulWidget {
  final List<LinkjoyFondnessGrad> regionList;
  final LinkjoyFondnessGrad? selectRegion;
  final Function(LinkjoyFondnessGrad) onSelect;

  const LinkjoyGradStubbornAnimal({
    super.key,
    required this.regionList,
    this.selectRegion,
    required this.onSelect,
  });

  @override
  State<LinkjoyGradStubbornAnimal> createState() =>
      _LinkjoyGradStubbornAnimalStatus();
}

class _LinkjoyGradStubbornAnimalStatus
    extends State<LinkjoyGradStubbornAnimal> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      decoration: const BoxDecoration(
        color: LinkjoyCondensateSister.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "linkjoy_caring_arousal_a_hilarious".tr,
            style: LinkjoyMarshaGreen.linkjoy_marsha_h2_lakers,
          ),
          LinkjoyFeynman.v20,
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: widget.regionList
                .map((region) => _buildCountryItem(region))
                .toList(),
          ),
          LinkjoyFeynman.v20,
        ],
      ),
    );
  }

  Widget _buildCountryItem(LinkjoyFondnessGrad region) {
    final isSelected = widget.selectRegion?.code == region.code;
    return GestureDetector(
      onTap: () {
        widget.onSelect(region);
        Get.back();
      },
      child: Container(
        height: 35,
        decoration: BoxDecoration(
          color: isSelected
              ? LinkjoyCondensateSister.white
              : LinkjoyCondensateSister.f6,
          borderRadius: BorderRadius.circular(24),
          border: Border.all(
            color: isSelected
                ? LinkjoyCondensate.primary
                : LinkjoyCondensateSister.e4,
            width: isSelected ? 2 : 1,
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            LinkjoyGnomeSister.isEmpty(region.icon)
                ? const SizedBox()
                : LinkjoyFasten.circle(region.icon, size: 24),
            Text(
              region.name ?? "",
              style: LinkjoyMarshaGreen.linkjoy_marsha_c1_lakers,
            ),
          ],
        ),
      ),
    );
  }
}
