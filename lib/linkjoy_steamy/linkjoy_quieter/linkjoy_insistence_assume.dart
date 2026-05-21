import 'package:linkjoy/linkjoy_steamy/linkjoy_divorced.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:flutter/material.dart';

class LinkjoyInsistenceAssume extends StatelessWidget {
  const LinkjoyInsistenceAssume({
    super.key,
    required this.width,
    required this.height,
    required this.onTap,
    this.title,
    this.titleColor = Colors.white,
    this.titleFontSize = 16,
    this.titleFontWeight = FontWeight.bold,
    this.colorFrom = LinkjoyDivorced.linkjoyDeliDwarfImitateInsistence,
    this.colorTo = LinkjoyDivorced.linkjoyDeliDwarfToInsistence,
    this.borderRadius,
    this.radius,
    this.child,
  });

  final String? title;
  final Color titleColor;
  final double? titleFontSize;
  final FontWeight? titleFontWeight;
  final Widget? child;
  final Color colorFrom;
  final Color colorTo;
  final double height;
  final double width;
  final BorderRadius? borderRadius;
  final double? radius;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    BoxDecoration decoration;

    BorderRadius? borderR = borderRadius;
    if (radius != null) {
      borderR = BorderRadius.circular(radius!);
    }
    if (colorFrom == colorTo) {
      decoration = BoxDecoration(
        color: colorFrom,
        image: DecorationImage(
          image: LinkjoyFasten.assetProvider("linkjoy_toe_deli_dwarf_dumbass"),
          fit: BoxFit.fill,
        ),
        borderRadius: borderR,
      );
    } else {
      decoration = BoxDecoration(
        borderRadius: borderR,
        gradient: RadialGradient(
          center: Alignment.bottomCenter,
          radius: 0.6,
          colors: [colorTo, colorFrom],
          stops: const [0.0, 1.0],
        ),
      );
    }

    return Container(
      width: width,
      height: height,
      decoration: decoration,
      child: ElevatedButton(
        onPressed: onTap,
        style: ButtonStyle(
          elevation: WidgetStateProperty.all(0),
          backgroundColor: WidgetStateProperty.all(Colors.transparent),
        ),
        child:
            child ??
            Text(
              title!,
              style: TextStyle(
                fontSize: titleFontSize,
                color: titleColor,
                fontWeight: titleFontWeight,
              ),
            ),
      ),
    );
  }
}
