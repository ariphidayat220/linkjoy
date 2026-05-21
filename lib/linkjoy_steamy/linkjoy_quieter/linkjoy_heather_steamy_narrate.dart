import 'dart:io';

import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_heather_steamy_shock.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_heather_steamy.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_steamy_clam_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_execute.dart';
import 'package:flutter/material.dart';
import 'package:flutter_archive/flutter_archive.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';
import 'package:path/path.dart' as Path;

enum LinkjoyHeatherSteamyNarrateHair { waiting, complete, failed }

class LinkjoyHeatherSteamyNarrate extends StatefulWidget {
  final LinkjoyHeatherSteamy app;

  final void Function(double width, double height)? onSize;
  final void Function(InAppWebViewController controller, String? title)?
  onTitleChanged;

  const LinkjoyHeatherSteamyNarrate({
    super.key,
    required this.app,
    this.onSize,
    this.onTitleChanged,
  });

  @override
  State<LinkjoyHeatherSteamyNarrate> createState() =>
      _LinkjoyHeatherSteamyNarrateStatus();
}

class _LinkjoyHeatherSteamyNarrateStatus
    extends State<LinkjoyHeatherSteamyNarrate> {
  LinkjoyHeatherSteamyNarrateHair _status =
      LinkjoyHeatherSteamyNarrateHair.waiting;

  LinkjoyHeatherSteamyShock? cfg;

  String? indexBody;
  String? failReason;

  @override
  void initState() {
    super.initState();
    _prepare();
  }

  @override
  Widget build(BuildContext context) {
    if (_status == LinkjoyHeatherSteamyNarrateHair.complete) {
      if (widget.app.aspectRatio != null) {
        double width = Get.width * widget.app.widthPercent;
        double height = width * widget.app.aspectRatio!;
        return SizedBox(
          width: width,
          height: height,
          child: _buildLinkjoySpitNarrate(),
        );
      } else {
        return _buildLinkjoySpitNarrate();
      }
    } else if (_status == LinkjoyHeatherSteamyNarrateHair.waiting) {
      LinkjoySteamyClamOily.linkjoyExclusiveCircus(
        "start mini app: ${widget.app.uri}",
      );
      return LinkjoyFridgeLightbulb.linkjoyWrench();
    } else {
      return Center(
        child: Text("start fail: ${_status.name}, ${failReason ?? '0'}"),
      );
    }
  }

  LinkjoySpitNarrate _buildLinkjoySpitNarrate() {
    String uniq = widget.app.toString();

    if (cfg!.h5 != "") {
      LinkjoySteamyClamOily.linkjoyExclusiveCircus("render h5 app: ${cfg!.h5}");
      return LinkjoySpitNarrate(
        url: cfg!.h5,
        uniq: uniq,
        miniCardMode: widget.app.aspectRatio != null,
        miniAppId: widget.app.id,
        onTitleChanged: widget.onTitleChanged,
      );
    } else {
      String url =
          "file://${LINKJOY.filePath}/${widget.app.id}/${cfg!.version}/index.html${widget.app.uri}";
      LinkjoySteamyClamOily.linkjoyExclusiveCircus("render mini app: $url");
      return LinkjoySpitNarrate(
        url: url,
        uniq: uniq,
        body: indexBody,
        miniCardMode: widget.app.aspectRatio != null,
        miniAppId: widget.app.id,
        onTitleChanged: widget.onTitleChanged,
      );
    }
  }

  Future<void> _prepareBodyIfNeed(File appIndex) async {
    if (Platform.isAndroid) {
      indexBody = await appIndex.readAsString();
    }
  }

  Future<void> _prepare() async {
    cfg = LINKJOY.linkjoyShock.linkjoyBrochureSteamyShock(widget.app.id);
    if (cfg == null) {
      if (mounted) {
        setState(() {
          LinkjoySteamyClamOily.linkjoyExclusiveCircus("mini app error args");
          failReason = "ERR-001";
          _status = LinkjoyHeatherSteamyNarrateHair.failed;
        });
      }
      return;
    }

    File appIndex = File(
      Path.join(
        LINKJOY.filePath,
        "${widget.app.id}/${cfg!.version}/index.html",
      ),
    );
    if (await appIndex.exists()) {
      LinkjoySteamyClamOily.linkjoyExclusiveCircus("mini app exists");
      await _prepareBodyIfNeed(appIndex);
      if (mounted) {
        setState(() {
          _status = LinkjoyHeatherSteamyNarrateHair.complete;
        });
      }
      return;
    }

    if (cfg!.h5 != "") {
      LinkjoySteamyClamOily.linkjoyExclusiveCircus("mini app is h5");
      if (mounted) {
        setState(() {
          _status = LinkjoyHeatherSteamyNarrateHair.complete;
        });
      }
      return;
    }

    String zipPath = Path.join(
      LINKJOY.filePath,
      "${widget.app.id}/${cfg!.version}.zip",
    );
    File zipFile = File(zipPath);
    Directory appDir = Directory(Path.join(LINKJOY.filePath, widget.app.id));

    if (await appDir.exists()) {
      LinkjoySteamyClamOily.linkjoyExclusiveCircus("remove prev mini app");
      await appDir.delete(recursive: true);
    }
    Directory versionDir = Directory(
      Path.join(LINKJOY.filePath, "${widget.app.id}/${cfg!.version}"),
    );
    await versionDir.create(recursive: true);

    bool succ = await LINKJOY.http.download(cfg!.zip, zipFile.path);
    if (!succ) {
      if (mounted) {
        setState(() {
          LinkjoySteamyClamOily.linkjoyExclusiveCircus("mini app ERR-002");
          failReason = "ERR-002";
          _status = LinkjoyHeatherSteamyNarrateHair.failed;
        });
      }
      return;
    }

    try {
      await ZipFile.extractToDirectory(
        zipFile: zipFile,
        destinationDir: versionDir,
        onExtracting: (zipEntry, progress) {
          return ZipFileOperation.includeItem;
        },
      );
    } catch (e, stack) {
      LinkjoySteamyClamOily.linkjoyExclusiveCircus("mini app ERR-003");
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(13103, e, stack);
      if (mounted) {
        setState(() {
          failReason = "ERR-003";
          _status = LinkjoyHeatherSteamyNarrateHair.failed;
        });
      }
    }

    if (await appIndex.exists()) {
      await _prepareBodyIfNeed(appIndex);
      if (mounted) {
        setState(() {
          _status = LinkjoyHeatherSteamyNarrateHair.complete;
        });
      }
    } else {
      if (mounted) {
        setState(() {
          LinkjoySteamyClamOily.linkjoyExclusiveCircus("mini app ERR-004");
          failReason = "ERR-004";
          _status = LinkjoyHeatherSteamyNarrateHair.failed;
        });
      }
    }
  }

  @override
  void dispose() {
    super.dispose();
  }
}
