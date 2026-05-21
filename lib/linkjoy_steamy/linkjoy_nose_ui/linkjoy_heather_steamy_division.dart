import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_heather_steamy.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_heather_steamy_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_division_ui.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_magnet_division.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_heather_steamy_narrate.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LinkjoyHeatherSteamyDivision
    extends LinkjoyMagnetDivision<LinkjoyHeatherSteamyHand> {
  const LinkjoyHeatherSteamyDivision({super.key});

  @override
  Widget build(BuildContext context) {
    LinkjoyHeatherSteamy app = logic.app;
    if (app.closeable) {
      return _linkjoyTuck(app);
    } else {
      return PopScope(
        canPop: false,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Material(
            type: MaterialType.transparency,
            child: _linkjoyTuck(app),
          ),
        ),
      );
    }
  }

  AnnotatedRegion<SystemUiOverlayStyle> _linkjoyTuck(LinkjoyHeatherSteamy app) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: LinkjoyDivisionUI.brightnessSecondary,
        statusBarBrightness: LinkjoyDivisionUI.brightnessSecondary,
      ),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        body: SafeArea(child: LinkjoyHeatherSteamyNarrate(app: app)),
      ),
    );
  }
}
