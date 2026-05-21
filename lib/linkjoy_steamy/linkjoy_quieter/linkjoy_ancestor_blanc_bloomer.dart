import 'dart:async';

import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_steamy_clam_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_condensate_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_hail.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_softball_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_upper.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

enum ChatInputVoiceRecordState { none, recording, recordingOnDelete }

class LinkjoyAncestorBlancBloomer extends StatefulWidget {
  final ValueChanged<String> onVoiceRecord;
  final String cachePath;

  const LinkjoyAncestorBlancBloomer({
    super.key,
    required this.onVoiceRecord,
    required this.cachePath,
  });

  @override
  _LinkjoyAncestorBlancBloomerStatus createState() =>
      _LinkjoyAncestorBlancBloomerStatus();
}

class _LinkjoyAncestorBlancBloomerStatus
    extends State<LinkjoyAncestorBlancBloomer> {
  ChatInputVoiceRecordState _recordState = ChatInputVoiceRecordState.none;

  Timer? _timer;
  double _volume = 0;
  final GlobalKey<_VoiceRecordAnimationState> _voiceRecordAnimationKey =
      GlobalKey();
  late LinkjoySoftballSister _recorder;

  @override
  void dispose() {
    _endTimer();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _recorder = LinkjoySoftballSister(cachePath: widget.cachePath);
    _recorder.onAudioRecordVolumeChangedCallback = (volume) {
      _volume = volume;
    };
    _recorder.onAudioRecordStopCallback = (time) {
      _endTimer();
    };
    _recorder.onAudioRecordTimeChangedCallback = (time) {};
    checkMikePhonePermission();
  }

  _startTimer() {
    _endTimer();
    _timer = Timer.periodic(const Duration(milliseconds: 100), (Timer timer) {
      _voiceRecordAnimationKey.currentState?.updateVolumeList(_volume);
    });
  }

  _endTimer() {
    if (_timer != null && _timer!.isActive) {
      _timer!.cancel();
      _timer = null;
    }
  }

  @override
  Widget build(BuildContext context) {
    String recordTips;
    switch (_recordState) {
      case ChatInputVoiceRecordState.recording:
        recordTips = "linkjoy_caring_divorced_to_eleven".tr;
        break;
      case ChatInputVoiceRecordState.recordingOnDelete:
        recordTips = "linkjoy_caring_divorced_to_alice".tr;
        break;
      default:
        recordTips = "linkjoy_caring_defect_to_federal".tr;
        break;
    }

    final MediaQueryData deviceData = MediaQuery.of(context);
    final rightSpace = (deviceData.size.width - 100.0) / 2;
    final buttonSpace = (rightSpace - 72.0) / 2;
    final GlobalKey deleteButtonKey = GlobalKey();

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        const SizedBox(height: 30.0),
        Text(
          recordTips,
          style: LinkjoyMarshaGreen.style(
            color: LinkjoyCondensateSister.white,
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 10.0),
        VoiceRecordAnimation(key: _voiceRecordAnimationKey),
        const SizedBox(height: 20.0),
        Row(
          children: <Widget>[
            SizedBox(width: buttonSpace),
            Visibility(
              visible:
                  _recordState == ChatInputVoiceRecordState.recording ||
                  _recordState == ChatInputVoiceRecordState.recordingOnDelete,
              maintainSize: true,
              maintainAnimation: true,
              maintainState: true,
              child: CupertinoButton(
                key: deleteButtonKey,
                padding: EdgeInsets.zero,
                child: Container(
                  width: 72.0,
                  height: 72.0,
                  decoration: BoxDecoration(
                    color:
                        _recordState ==
                            ChatInputVoiceRecordState.recordingOnDelete
                        ? LinkjoyCondensateSister.color_ff4d4d
                        : LinkjoyCondensateSister.transparent,
                    borderRadius: BorderRadius.circular(36.0),
                  ),
                  child: Center(
                    child: LinkjoyFasten.asset(
                      "linkjoy_toe_blanc_slur",
                      width: 24,
                      height: 24,
                    ),
                  ),
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(width: buttonSpace),
            GestureDetector(
              child: Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  color: _recordState == ChatInputVoiceRecordState.none
                      ? LinkjoyCondensateSister.white_10p
                      : null,
                  border: _recordState == ChatInputVoiceRecordState.none
                      ? Border.all(
                          color: LinkjoyCondensateSister.white_20p,
                          width: 1,
                        )
                      : null,
                  gradient: _recordState == ChatInputVoiceRecordState.none
                      ? null
                      : const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xFFFFB955), Color(0xFFCE4400)],
                        ),
                  borderRadius: BorderRadius.circular(50.0),
                ),
                alignment: Alignment.center,
                child: LinkjoyFasten.asset(
                  _recordState == ChatInputVoiceRecordState.none
                      ? "linkjoy_toe_blanc_on_magazine"
                      : "linkjoy_toe_blanc_vet_magazine",
                  width: 36,
                  height: 36,
                ),
              ),
              onLongPressStart: (details) {
                startRecord();
              },
              onLongPressEnd: (details) {
                _recordEnd();
              },
              onLongPressUp: () {
                _setRecordState(ChatInputVoiceRecordState.none);
              },
              onLongPressMoveUpdate: (details) {
                RenderBox? box =
                    deleteButtonKey.currentContext?.findRenderObject()
                        as RenderBox;
                Offset offset = box.localToGlobal(Offset.zero);
                Size? size = box.size;
                if (details.globalPosition.dx > offset.dx &&
                    details.globalPosition.dx < offset.dx + size.width &&
                    details.globalPosition.dy > offset.dy &&
                    details.globalPosition.dy < offset.dy + size.height) {
                  _setRecordState(ChatInputVoiceRecordState.recordingOnDelete);
                } else {
                  _setRecordState(ChatInputVoiceRecordState.recording);
                }
              },
            ),
            SizedBox(width: rightSpace),
          ],
        ),
      ],
    );
  }

  _recordEnd() async {
    _endTimer();
    if (_recordState == ChatInputVoiceRecordState.recordingOnDelete) {
      await _recorder.cancleRecorder();
    }
    if (_recordState == ChatInputVoiceRecordState.recording) {
      await _recorder.stopRecorder();
      widget.onVoiceRecord(_recorder.resultPath);
    }
    _setRecordState(ChatInputVoiceRecordState.none);

    _voiceRecordAnimationKey.currentState?.initVolumeListState();
  }

  void _setRecordState(ChatInputVoiceRecordState state) {
    if (_recordState == state) return;
    _recordState = state;
    if (mounted) {
      setState(() {});
    }
  }

  Future<void> checkMikePhonePermission() async {
    PermissionStatus status = await Permission.microphone.request();
    if (status == PermissionStatus.granted) {
      LinkjoySteamyClamOily.linkjoyCampusBop(3, 1);
    } else {
      LinkjoySteamyClamOily.linkjoyCampusBop(3, 0);
      LinkjoyUpper.showToast("linkjoy_caring_greeting_falcon_bop".tr);
    }
  }

  void startRecord() {
    _setRecordState(ChatInputVoiceRecordState.recording);
    _recorder.startRecorder();
    _startTimer();
  }
}

class VoiceRecordAnimation extends StatefulWidget {
  const VoiceRecordAnimation({required Key key}) : super(key: key);

  @override
  _VoiceRecordAnimationState createState() => _VoiceRecordAnimationState();
}

class _VoiceRecordAnimationState extends State<VoiceRecordAnimation> {
  List<Widget> lineWidgets = <Widget>[];
  List volumeList = [];

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    initVolumeListState();
  }

  void initVolumeListState() {
    volumeList.clear();
    for (var i = 0; i < 29; i++) {
      volumeList.add(0.toDouble());
    }
    _setVolumeList(0);
  }

  void updateVolumeList(double volume) {
    _setVolumeList(volume);
    if (mounted) {
      setState(() {});
    }
  }

  void _setVolumeList(double volume) {
    for (var i = 0; i < 15; i++) {
      if (i == 14) {
        volumeList[i] = volume;
      } else {
        double temp = volumeList[i + 1];
        volumeList[i] = temp;
        volumeList[volumeList.length - 1 - i] = temp;
      }
    }

    lineWidgets.clear();
    for (var i = 0; i < volumeList.length; i++) {
      lineWidgets.add(
        Container(
          width: 2,
          height: 8.0 + volumeList[i] * 20,
          color: LinkjoyCondensateSister.black_10p,
        ),
      );
      if (i != volumeList.length - 1) {
        lineWidgets.add(const SizedBox(width: 2));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 114,
      height: 30,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: lineWidgets,
      ),
    );
  }
}
