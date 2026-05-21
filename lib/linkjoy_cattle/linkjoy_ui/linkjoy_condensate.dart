import 'package:flutter/material.dart';

import 'linkjoy_suspend.dart';

class LinkjoyAve {
  LinkjoyAve._();

  static const Color primaryMain = Color(0xFF9C27B0);

  static const Color primaryLight = Color(0xFFBA68C8);

  static const Color primaryDark = Color(0xFF7B1FA2);

  static const Color primary50 = Color(0xFFF3E5F5);

  static const Color primary100 = Color(0xFFE1BEE7);

  static const Color primary200 = Color(0xFFCE93D8);

  static const Color primary300 = Color(0xFFAB47BC);

  static const Color primary400 = Color(0xFFBA68C8);

  static const Color primary500 = Color(0xFF9C27B0);

  static const Color primary600 = Color(0xFF8E24AA);

  static const Color primary700 = Color(0xFF7B1FA2);

  static const Color primary800 = Color(0xFF6A1B9A);

  static const Color primary900 = Color(0xFF4A148C);

  static const Color accentMain = Colors.redAccent;

  static const Color _neutral50 = Color(0xFFF8F6F6);
  static const Color _neutral100 = Color(0xFFE8E4E5);
  static const Color _neutral200 = Color(0xFFD1CBCD);
  static const Color _neutral300 = Color(0xFFB3AAAD);
  static const Color _neutral400 = Color(0xFF94878B);
  static const Color _neutral500 = Color(0xFF7A6D71);
  static const Color _neutral600 = Color(0xFF64585C);

  static const Color white = Color(0xFFFFFFFF);

  static const Color black = Color(0xFF000000);

  static const Color bgDark = Color(0xFF1F1029);

  static const Color bgDarkDark = Color(0xFF170C1F);

  static const Color bgLight = Color(0xFFF8F6F6);

  static final Color surfaceBlock = Color(0xFF9C27B0);

  static final Color surface = overlayMedium;

  static const Color surfaceLight = Color(0x1C52474B);

  static final Color overlayLight = surfaceBlock.withValues(alpha: 0.05);

  static final Color overlayMedium = surfaceBlock.withValues(alpha: 0.1);

  static final Color overlayStrong = surfaceBlock.withValues(alpha: 0.2);

  static final Color overlayDark = bgDark.withValues(alpha: 0.5);

  static const Color bgAppBar = bgDark;

  static const Color badgeCounter = Color(0xFFDC2626);

  static const Color success = Colors.greenAccent;

  static const Color successLight = Colors.lightGreenAccent;

  static const Color successDark = Colors.greenAccent;

  static const Color error = Color(0xFFEF4444);

  static const Color errorLight = Color(0xFFFCA5A5);

  static const Color errorDark = Color(0xFFDC2626);

  static const Color warning = Color(0xFFF59E0B);

  static const Color warningLight = Color(0xFFFDE047);

  static const Color warningDark = Color(0xFFD97706);

  static const Color info = Color(0xFF3B82F6);

  static const Color infoLight = Color(0xFF93C5FD);

  static const Color infoDark = Color(0xFF2563EB);

  static const Color disabled = _neutral500;

  static const Color textPrimary = _neutral50;

  static const Color textSecondary = _neutral200;

  static const Color textThird = _neutral400;

  static const Color textDisabled = _neutral600;

  static Color textImportant1 = transparent(primaryMain, 0.7);

  static Color textImportant2 = transparent(primaryMain, 0.6);

  static Color transparent(Color color, double alpha) {
    assert(alpha >= 0.0 && alpha <= 1.0, 'Alpha must be between 0.0 and 1.0');
    return color.withValues(alpha: alpha);
  }

  static Color overlay(Color color, double opacity) =>
      color.withValues(alpha: opacity);

  static Color overlayGray = transparent(white, 0.05);

  static Color lineSplit = overlayMedium;

  static Color borderWhite = Colors.white30;

  static Color borderLight = transparent(Colors.white, 0.05);

  static Color borderMedium = transparent(Colors.white, 0.1);

  static Color borderStrong = transparent(Colors.white, 0.2);

  static Color inputOverlay = transparent(primaryMain, 0.05);

  static Color inputBorder = transparent(primaryMain, 0.2);

  static Color inputPlaceholder = transparent(primaryMain, 0.6);

  static Color progressBarBg = transparent(primaryMain, 0.2);

  static Color progressGlow = transparent(primaryMain, 0.5);

  static const Color snackbarBg = Color(0xFA1A1F2E);

  static const Color dialogBg = Color(0xFF1A1F2E);

  static const Color dialogBgStart = Color(0xFF1A1F2E);

  static const Color dialogBgEnd = Color(0xFF0F121A);

  static const Color userOptionsBg = Color(0xFF2A1A28);

  static const Color switchTrack = Color(0xFF3D4655);

  static const Color iconBgPurple = Color(0x33F4258C);

  static const Color iconBgRed = Color(0x33EF4444);

  static const Color iconBgGreen = Color(0x3322C55E);

  static const Color iconBgYellow = Color(0x33F59E0B);

  static Color shadow = Colors.black.withValues(alpha: 0.3);

  static Color neonGlow = primaryMain.withValues(alpha: 0.5);

  static Color cardShadow = Colors.black.withValues(alpha: 0.25);

  static LinearGradient primaryGradient({
    AlignmentGeometry begin = Alignment.topLeft,
    AlignmentGeometry end = Alignment.bottomRight,
  }) {
    return LinearGradient(
      colors: const [primaryMain, primaryDark],
      begin: begin,
      end: end,
    );
  }

  static LinearGradient accentGradient({
    AlignmentGeometry begin = Alignment.topLeft,
    AlignmentGeometry end = Alignment.bottomRight,
  }) {
    return LinearGradient(
      colors: const [primaryLight, primaryDark],
      begin: begin,
      end: end,
    );
  }

  static BoxDecoration surfaceDecoration = BoxDecoration(
    color: LinkjoyAve.overlayMedium,
    borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusLarge),
    border: Border.all(
      color: LinkjoyAve.surface.withValues(alpha: 0.2),
      width: 0.5,
    ),
  );

  static BoxDecoration surfaceImportantDecoration = BoxDecoration(
    color: LinkjoyAve.surfaceBlock.withValues(alpha: 0.4),
    borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusLarge),
    border: Border.all(
      color: LinkjoyAve.primaryDark.withValues(alpha: 0.2),
      width: 0.5,
    ),
  );

  static BoxDecoration surfaceBanner = BoxDecoration(
    gradient: LinkjoyAve.gradient2(
      color1: LinkjoyAve.primaryMain,
      color2: LinkjoyAve.primaryDark,
    ),
    borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusXLarge),
    boxShadow: [
      BoxShadow(
        color: LinkjoyAve.primaryMain.withValues(alpha: 0.3),
        blurRadius: 20,
        offset: const Offset(0, 10),
      ),
    ],
  );

  static LinearGradient gradient2({
    required Color color1,
    required Color color2,
    AlignmentGeometry begin = Alignment.topCenter,
    AlignmentGeometry end = Alignment.bottomCenter,
  }) {
    return LinearGradient(colors: [color1, color2], begin: begin, end: end);
  }

  static LinearGradient gradient3({
    required Color color1,
    required Color color2,
    required Color color3,
    AlignmentGeometry begin = Alignment.topLeft,
    AlignmentGeometry end = Alignment.bottomRight,
    List<double>? stops,
  }) {
    return LinearGradient(
      colors: [color1, color2, color3],
      begin: begin,
      end: end,
      stops: stops,
    );
  }

  static const LinearGradient cardGradient1 = LinearGradient(
    colors: [primary900, primary900],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const LinearGradient cardGradient2 = LinearGradient(
    colors: [Color(0xFF2D1F22), Color(0xFF1A0F13)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const LinearGradient followGradient = LinearGradient(
    colors: [primaryMain, primaryMain],
    begin: Alignment.topLeft,
    end: Alignment.topRight,
  );

  static const LinearGradient sparkGradient = LinearGradient(
    colors: [Color(0xFF1F2937), Color(0xFF111827)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const LinearGradient cardGradient = LinearGradient(
    colors: [Color(0xFF2A1420), Color(0xFF521C38), primaryMain],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0.0, 0.5, 1.0],
  );

  static const LinearGradient badgeEliteGradient = LinearGradient(
    colors: [primaryMain, Color(0xFFFB923C)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0.0, 1.0],
  );

  static const LinearGradient buttonPrimaryGradient = LinearGradient(
    colors: [primaryMain, Color(0xFFFF4D9E)],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  static const Color badgeStarterBg = Color(0xFF334155);

  static const Color badgeStarterBorder = Color(0xFF64748B);

  static Color badgeActiveOverlay = transparent(primaryMain, 0.4);

  static const Color badgeEliteBorder = primaryMain;

  static const Color meBgTop = Color(0xFF2D1A26);

  static const Color meBgBottom = Color(0xFF1A0F14);

  static const Color goldBalanceCard = Color(0xFF3D1428);

  static const Color vipCardBg = Color(0xFF1A1A3D);

  static const Color vipButtonBg = Color(0xFF6B5AC8);

  static Color listItemBg = transparent(primaryMain, 0.05);

  static const Color goldCoin = Color(0xFFFFD700);

  static const Color goldCoinDark = Color(0xFFB8860B);

  static const LinearGradient meBackgroundGradient = LinearGradient(
    colors: [meBgTop, meBgBottom],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const LinearGradient goldBalanceGradient = LinearGradient(
    colors: [Color(0xFF3D1428), Color(0xFF5A1A3C)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient vipCardGradient = LinearGradient(
    colors: [Color(0xFF1A1A3D), Color(0xFF2A1A5C)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
