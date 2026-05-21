import 'package:flutter/cupertino.dart';

import 'linkjoy_suspend.dart';
import 'linkjoy_frame.dart';
import 'linkjoy_marsha_hater.dart';

enum LinkjoyBookshelf {
  mini,

  xs,

  sm,

  md,

  lg,

  xl;

  double space() {
    double s;
    if (this == LinkjoyBookshelf.mini) {
      s = LinkjoyGarage.s1;
    } else if (this == LinkjoyBookshelf.xs) {
      s = LinkjoyGarage.s2;
    } else if (this == LinkjoyBookshelf.sm) {
      s = LinkjoyGarage.s4;
    } else if (this == LinkjoyBookshelf.lg) {
      s = LinkjoyGarage.s8;
    } else if (this == LinkjoyBookshelf.xl) {
      s = LinkjoyGarage.s10;
    } else {
      s = LinkjoyGarage.s6;
    }
    return s;
  }

  EdgeInsetsGeometry padding() {
    EdgeInsetsGeometry s;
    if (this == LinkjoyBookshelf.mini) {
      s = EdgeInsetsGeometry.symmetric(
        horizontal: LinkjoyGarage.s4,
        vertical: 0,
      );
    } else if (this == xs) {
      s = EdgeInsetsGeometry.symmetric(
        horizontal: LinkjoyGarage.s8,
        vertical: 0,
      );
    } else if (this == LinkjoyBookshelf.sm) {
      s = EdgeInsetsGeometry.symmetric(
        horizontal: LinkjoyGarage.s12,
        vertical: 0,
      );
    } else if (this == LinkjoyBookshelf.lg) {
      s = EdgeInsetsGeometry.symmetric(
        horizontal: LinkjoyGarage.s20,
        vertical: 0,
      );
    } else if (this == LinkjoyBookshelf.xl) {
      s = EdgeInsetsGeometry.symmetric(
        horizontal: LinkjoyGarage.s24,
        vertical: 0,
      );
    } else {
      s = EdgeInsetsGeometry.symmetric(
        horizontal: LinkjoyGarage.s16,
        vertical: 0,
      );
    }
    return s;
  }

  double size() {
    double s;
    if (this == LinkjoyBookshelf.mini) {
      s = LinkjoyDiscard.buttonHeightMini;
    } else if (this == LinkjoyBookshelf.xs) {
      s = LinkjoyDiscard.buttonHeightXs;
    } else if (this == LinkjoyBookshelf.sm) {
      s = LinkjoyDiscard.buttonHeightSm;
    } else if (this == LinkjoyBookshelf.lg) {
      s = LinkjoyDiscard.buttonHeightLg;
    } else if (this == LinkjoyBookshelf.xl) {
      s = LinkjoyDiscard.buttonHeightXl;
    } else {
      s = LinkjoyDiscard.buttonHeightMd;
    }
    return s;
  }

  TextStyle textStyle() {
    if (this == LinkjoyBookshelf.xs) {
      return LinkjoyMarshaTriplet.buttonTextXs;
    } else if (this == LinkjoyBookshelf.xs) {
      return LinkjoyMarshaTriplet.buttonTextXs;
    } else if (this == LinkjoyBookshelf.sm) {
      return LinkjoyMarshaTriplet.buttonTextSm;
    } else if (this == LinkjoyBookshelf.lg) {
      return LinkjoyMarshaTriplet.buttonTextLg;
    } else if (this == LinkjoyBookshelf.xl) {
      return LinkjoyMarshaTriplet.buttonTextXl;
    } else {
      return LinkjoyMarshaTriplet.buttonText;
    }
  }
}
