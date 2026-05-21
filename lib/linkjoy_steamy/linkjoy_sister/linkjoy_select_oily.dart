import 'dart:io';

import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:archive/archive.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_life_haiti/shengwang_beauty_sdk.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_paw_shock.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_steamy_clam_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

enum LinkjoySelectPonchoEmbarrass {
  linkjoy_convict_tile,

  linkjoy_convict_unborn,

  linkjoy_inventive_tile,

  linkjoy_inventive_just,
}

class LinkjoyRTCOily {
  LinkjoyRTCOily._internal();

  static LinkjoyRTCOily? _instance;

  static LinkjoyRTCOily get instance => _getInstance();

  factory LinkjoyRTCOily() => _getInstance();

  static LinkjoyRTCOily _getInstance() {
    return _instance ??= LinkjoyRTCOily._internal();
  }

  late RtcEngineEx engine;

  Future<void>? _agoraSdkInit;

  Future<void> init(String appId) async {
    _agoraSdkInit ??= _init(appId);
    return _agoraSdkInit;
  }

  Future<void> _init(String appId) async {
    int start = DateTime.now().millisecondsSinceEpoch;

    engine = createAgoraRtcEngineEx();

    await engine.initialize(
      RtcEngineContext(
        appId: appId,

        channelProfile: ChannelProfileType.channelProfileLiveBroadcasting,
      ),
    );

    LinkjoyPawShock cfg = LINKJOY.linkjoyShock.configs.linkjoyPaw;

    await engine.setVideoEncoderConfiguration(
      VideoEncoderConfiguration(
        dimensions: VideoDimensions(
          width: cfg.agoraWidth,
          height: cfg.agoraHeight,
        ),
        frameRate: cfg.linkjoyLifePinocchioSqueaky,
        bitrate: standardBitrate,
        orientationMode: OrientationMode.orientationModeFixedPortrait,
        degradationPreference: DegradationPreference.maintainBalanced,
      ),
    );

    await ShengwangBeautySDK.instance.initBeautySDK(
      rtcEngine: engine,
      materialBundlePath:
          "${await setupBeautyMaterials()}/beauty_material_functional",
    );
  }

  Future<String> setupBeautyMaterials() async {
    final directory = await getApplicationDocumentsDirectory();
    final targetDir = Directory('${directory.path}/beauty_material');

    return extractAssetZipToDirectory('assets/beauty_material.zip', targetDir);
  }

  Future<String> extractAssetZipToDirectory(
    String assetZipPath,
    Directory targetDir, {
    String? zipRootDir,
  }) async {
    final completeFlagFile = File(path.join(targetDir.path, '.unzip_complete'));

    if (await completeFlagFile.exists()) {
      return targetDir.path;
    }

    try {
      final ByteData data = await rootBundle.load(assetZipPath);
      final Uint8List bytes = data.buffer.asUint8List();
      final Archive archive = ZipDecoder().decodeBytes(bytes);

      for (final ArchiveFile file in archive) {
        String fileName = file.name;

        if (zipRootDir != null && zipRootDir.isNotEmpty) {
          if (!fileName.startsWith(zipRootDir)) {
            continue;
          }
          fileName = fileName.replaceFirst('$zipRootDir/', '');
        }

        final String savePath = path.join(targetDir.path, fileName);

        if (file.isFile) {
          final File outFile = File(savePath);
          await outFile.parent.create(recursive: true);
          await outFile.writeAsBytes(file.content as List<int>);
        } else {
          await Directory(savePath).create(recursive: true);
        }
      }

      await completeFlagFile.create(recursive: true);
      return targetDir.path;
    } catch (e) {
      if (await targetDir.exists()) {
        await targetDir.delete(recursive: true);
      }
      rethrow;
    }
  }

  RtcEngineEx getRtcEngine() {
    return engine;
  }

  configEngine(LinkjoySelectPonchoEmbarrass mode) async {
    await _agoraSdkInit;

    if (mode == LinkjoySelectPonchoEmbarrass.linkjoy_convict_tile ||
        mode == LinkjoySelectPonchoEmbarrass.linkjoy_inventive_tile) {
      await engine.enableLocalVideo(true);
      await engine.enableLocalAudio(true);
      await engine.enableFaceDetection(true);
    } else {
      if (mode == LinkjoySelectPonchoEmbarrass.linkjoy_inventive_just) {
        await engine.enableLocalVideo(false);
        await engine.enableLocalAudio(false);
      } else if (mode == LinkjoySelectPonchoEmbarrass.linkjoy_convict_unborn) {
        await engine.enableLocalVideo(true);
        await engine.enableLocalAudio(true);
      }
    }
  }

  Future<bool> joinChannel(
    LinkjoySelectPonchoEmbarrass mode,
    RtcConnection connection,
    String token,
  ) async {
    ChannelMediaOptions options;
    if (mode == LinkjoySelectPonchoEmbarrass.linkjoy_inventive_just) {
      options = const ChannelMediaOptions(
        autoSubscribeVideo: true,
        autoSubscribeAudio: true,
        publishCameraTrack: false,
        publishMicrophoneTrack: false,
        clientRoleType: ClientRoleType.clientRoleAudience,
      );
    } else {
      options = const ChannelMediaOptions(
        autoSubscribeVideo: true,
        autoSubscribeAudio: true,
        publishCameraTrack: true,
        publishMicrophoneTrack: true,
        clientRoleType: ClientRoleType.clientRoleBroadcaster,
      );
    }

    try {
      await engine.joinChannelEx(
        token: token,
        connection: connection,
        options: options,
      );
      return true;
    } catch (e, stack) {
      LinkjoySteamyClamOily.socketTrace(
        "joinChannel error mode:${mode.name} channel:${connection.channelId}",
      );
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(8880000, e, stack);
      return false;
    }
  }

  Future<void> muteAllRemoteAudioStreamsEx(
    bool mute,
    RtcConnection connection,
  ) async {
    await engine.muteAllRemoteAudioStreamsEx(
      mute: mute,
      connection: connection,
    );
  }

  bool isAnchorBroadcasting = false;

  Future<void> controlPreview(bool showPreView, {bool force = false}) async {
    await controlBeauty(showPreView, force: force);

    if (isAnchorBroadcasting && !force) {
      return;
    }

    try {
      if (showPreView) {
        await engine.startPreview();
      } else {
        await engine.stopPreview();
      }
    } catch (e, stack) {
      LinkjoySteamyClamOily.socketTrace("controlPreview error: $showPreView");
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(8880005, e, stack);
    }
  }

  Future<void> controlBeauty(bool open, {bool force = false}) async {
    if (isAnchorBroadcasting && !force) {
      return;
    }

    try {
      if (LINKJOY.isLinkjoyFoolishly) {
        if (open) {
          await ShengwangBeautySDK.instance.enable(true);
        } else {
          await ShengwangBeautySDK.instance.enable(false);
        }
      } else {
        if (open) {
          try {
            await engine.setBeautyEffectOptions(
              enabled: true,
              options: const BeautyOptions(
                lighteningContrastLevel:
                    LighteningContrastLevel.lighteningContrastNormal,
                lighteningLevel: 0.7,
                smoothnessLevel: 0.5,
                rednessLevel: 0.1,
                sharpnessLevel: 0,
              ),
            );
          } catch (e, stack) {
            LinkjoySteamyClamOily.socketTrace("config beauty error, $e");
            LinkjoySteamyClamOily.linkjoyInvoiceCircus(8880400, e, stack);
          }
        } else {}
      }
    } catch (e, stack) {
      LinkjoySteamyClamOily.socketTrace("controlBeauty error, status=$open");
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(8880005, e, stack);
    }
  }

  void switchCamera() {
    engine.switchCamera();
  }

  void registerEventHandler(RtcEngineEventHandler rtcEngineEventHandler) {
    try {
      engine.registerEventHandler(rtcEngineEventHandler);
    } catch (e) {}
  }

  void unregisterEventHandler(RtcEngineEventHandler rtcEngineEventHandler) {
    try {
      engine.unregisterEventHandler(rtcEngineEventHandler);
    } catch (e, stack) {
      LinkjoySteamyClamOily.socketTrace("unregisterEventHandler error");
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(8880003, e, stack);
    }
  }

  void release() async {
    engine.leaveChannel();
    forceReleaseEngine();
    _instance = null;
  }

  void forceReleaseEngine({bool sync = true}) {
    engine.release(sync: sync);
    if (sync) {
      _syncDelay(15);
    }
  }

  void _syncDelay(int milliseconds) {
    final start = DateTime.now().millisecondsSinceEpoch;
    while (DateTime.now().millisecondsSinceEpoch - start < milliseconds) {}
  }

  Future<void> leaveChannel(RtcConnection connection) async {
    try {
      await engine.leaveChannelEx(connection: connection);
    } catch (e, stack) {
      LinkjoySteamyClamOily.socketTrace(
        "leaveChannel error, ${connection.channelId}",
      );
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(8880002, e, stack);
    }
  }

  Future<bool> muteLocalAudioStream(bool mute) async {
    try {
      await engine.muteLocalAudioStream(mute);
      return true;
    } catch (e, stack) {
      LinkjoySteamyClamOily.socketTrace("muteLocalAudioStream error, $mute");
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(8880001, e, stack);
      return false;
    }
  }
}
