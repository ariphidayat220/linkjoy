import 'dart:io';

import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_andrew.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_dance/linkjoy_peanuts_sorority.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_io_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_select_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_veto_oily.dart';
import 'package:path/path.dart' as Path;

import 'linkjoy_steamy_clam_oily.dart';

class LinkjoyGenericSoftball {
  static LinkjoyGenericSoftball? _instance;

  static LinkjoyGenericSoftball get instance => _getInstance();

  factory LinkjoyGenericSoftball() => _getInstance();

  static LinkjoyGenericSoftball _getInstance() {
    return _instance ??= LinkjoyGenericSoftball._internal();
  }

  LinkjoyGenericSoftball._internal();

  MediaRecorder? recorder;

  bool uploadingVideo = false;

  void startRecording(String channel, int lengthInSecond, bool voice) async {
    if (recorder != null) {
      return;
    }

    if (uploadingVideo) {
      return;
    }

    recorder = await LinkjoyRTCOily.instance.engine.createMediaRecorder(
      RecorderStreamInfo(channelId: channel, uid: LINKJOY.uCodeInt()),
    );
    recorder?.setMediaRecorderObserver(
      MediaRecorderObserver(
        onRecorderStateChanged:
            (
              String channelId,
              int uid,
              RecorderState state,
              RecorderReasonCode error,
            ) {
              switch (state) {
                case RecorderState.recorderStateStart:
                  {
                    break;
                  }
                case RecorderState.recorderStateStop:
                  {
                    break;
                  }
                case RecorderState.recorderStateError:
                  {
                    finish();
                    break;
                  }
              }
            },
        onRecorderInfoUpdated: (String channelId, int uid, RecorderInfo info) {
          int durationMs = info.durationMs ?? 0;
          if (durationMs / 1000 >= lengthInSecond) {
            finish();
          }
        },
      ),
    );

    recorder?.startRecording(
      MediaRecorderConfiguration(
        storagePath: _storagePath(),
        containerFormat: MediaRecorderContainerFormat.formatMp4,
        streamType: voice
            ? MediaRecorderStreamType.streamTypeBoth
            : MediaRecorderStreamType.streamTypeVideo,
        maxDurationMs: lengthInSecond * 1000,
        recorderInfoUpdateInterval: 1000,
      ),
    );
  }

  String _storagePath() {
    var path = Path.join(LINKJOY.cachePath, 'AgoraMedia');
    LinkjoyIOSister.makeSureDirectory(path);
    path = Path.join(path, "Video.mp4");
    return path;
  }

  Future<void> finish() async {
    MediaRecorder? r = recorder;
    if (r != null) {
      recorder = null;
      try {
        await r.stopRecording();
      } catch (e, stack) {
        LinkjoySteamyClamOily.linkjoyInvoiceCircus(166001, e, stack);
      } finally {
        await LinkjoyRTCOily.instance.engine.destroyMediaRecorder(r);
      }
    }
  }

  void finishAndUpload(String callId, bool voice, int type) async {
    await finish();

    uploadVideoFile(callId, voice, type);
  }

  Future<void> uploadVideoFile(String callId, bool voice, int type) async {
    if (uploadingVideo) {
      return;
    }
    uploadingVideo = true;
    try {
      File recordFile = File(_storagePath());
      if (!await recordFile.exists()) {
        return;
      }

      final rsp = await LinkjoyVetoOily.instance
          .upload(recordFile.path, UploadType.video, showLoadingUI: false)
          .last;
      if (rsp.result?.video != null) {
        VideoVO vo = VideoVO()
          ..id = LinkjoyGnomeSister.parseString(rsp.result!.video!.id)
          ..video_url = LinkjoyGnomeSister.parseString(rsp.result!.video!.url)
          ..cover_url = LinkjoyGnomeSister.parseString(
            rsp.result!.video!.coverUrl,
          )
          ..duration = rsp.result!.video!.duration
          ..size = 0
          ..width = rsp.result!.video!.width
          ..height = rsp.result!.video!.height
          ..paid = -1
          ..status = 1;
        commit(vo.id, callId, voice, type);
      } else {}
      await recordFile.delete();
    } catch (e, stack) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(166003, e, stack);
    } finally {
      uploadingVideo = false;
    }
  }

  Future<void> commit(
    String videoId,
    String callId,
    bool voice,
    int type,
  ) async {
    LinkjoyPeanutsSorority? resp = await LINKJOY.http.req(10103, {
      "video_id": videoId,
      "call_id": callId,
      "voice": voice,
      "type": type,
    });
  }
}
