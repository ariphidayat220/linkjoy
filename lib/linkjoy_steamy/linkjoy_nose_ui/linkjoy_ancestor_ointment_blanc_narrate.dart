import 'dart:async';
import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_blanc.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_ofour.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_divorced.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_carefree_style_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_condensate_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_hail.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_ancestor_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:flutter/cupertino.dart';

import 'linkjoy_fasten_pinocchio_dribble_fridge.dart';

class LinkjoyAncestorOintmentBlancNarrate extends StatefulWidget {
  final LinkjoyOfour snap;
  final String cachePath;

  const LinkjoyAncestorOintmentBlancNarrate({
    super.key,
    required this.snap,
    required this.cachePath,
  });

  @override
  _ChatCellVoiceViewState createState() => _ChatCellVoiceViewState();
}

class _ChatCellVoiceViewState
    extends State<LinkjoyAncestorOintmentBlancNarrate> {
  int _timeSec = 0;
  int _currentTimeSec = 0;
  bool _isPlaying = false;

  LinkjoyFondnessBlanc? get _voice => widget.snap.voice;
  StreamSubscription? _positionSubscription;
  StreamSubscription? _playerStateChangeSubscription;

  @override
  void dispose() {
    _positionSubscription?.cancel();
    _playerStateChangeSubscription?.cancel();
    LinkjoyCarefreeStyleOily.instance.cancelPlayAudio();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    _timeSec = _voice?.duration?.toInt() ?? 0;
    _currentTimeSec = _timeSec;

    _positionSubscription = LinkjoyCarefreeStyleOily
        .instance
        .audioPlayer
        .onPositionChanged
        .listen((p) {
          if (isCurrentFile()) {
            if (mounted) {
              setState(() {
                _currentTimeSec = p.inSeconds < 1 ? 1 : p.inSeconds;
              });
            }
          }
        });

    _playerStateChangeSubscription = LinkjoyCarefreeStyleOily
        .instance
        .audioPlayer
        .onPlayerStateChanged
        .listen((event) {
          if (isCurrentFile()) {
            if (event == PlayerState.playing) {
              if (mounted) {
                setState(() {
                  _isPlaying = true;
                });
              }
            } else {
              if (mounted) {
                setState(() {
                  _isPlaying = false;
                });
              }
            }
          }
        });
  }

  bool isCurrentFile() {
    var mediaUrl = LinkjoyCarefreeStyleOily.instance.audioUrl;
    if (_voice == null) return false;
    if (!LinkjoyGnomeSister.isEmpty(_voice!.relativePath) &&
        mediaUrl == _voice!.relativePath)
      return true;
    if (!LinkjoyGnomeSister.isEmpty(_voice!.voiceUrl) &&
        mediaUrl == _voice!.voiceUrl)
      return true;
    return false;
  }

  @override
  Widget build(BuildContext context) {
    Widget tapWidget;
    if (!widget.snap.isMine && widget.snap.isUnread) {
      tapWidget = Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[getContainer(), getUnreadRed()],
      );
    } else {
      tapWidget = getContainer();
    }

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () async {
        _readAction();
        if (!_isPlaying) {
          if (!LinkjoyGnomeSister.isEmpty(_voice?.relativePath)) {
            File voiceFile = File(_voice!.relativePath!);
            if (await voiceFile.exists()) {
              LinkjoyCarefreeStyleOily.instance.startPlayFileAudio(voiceFile);
              setState(() {
                _isPlaying = true;
              });
              return;
            }
          }

          if (!LinkjoyGnomeSister.isEmpty(_voice?.voiceUrl)) {
            _downLoadVoice(_voice!.voiceUrl!).then((file) {
              if (file != null) {
                LinkjoyCarefreeStyleOily.instance.startPlayFileAudio(file);
                if (mounted) {
                  setState(() {
                    _isPlaying = true;
                  });
                }
              }
            });
          }
        } else {
          LinkjoyCarefreeStyleOily.instance.stopPlayAudio();
          if (mounted) {
            setState(() {
              _isPlaying = false;
              _currentTimeSec = _timeSec;
            });
          }
        }
      },
      child: tapWidget,
    );
  }

  Widget getContainer() {
    List<Widget> rowChildren = [];
    if (_voice?.voiceUrl != null) {
      rowChildren = widget.snap.isMine
          ? <Widget>[getVoiceIcon(), const SizedBox(width: 8), getText()]
          : <Widget>[getVoiceIcon(), const SizedBox(width: 8), getText()];
    } else {
      rowChildren = [const Text('')];
    }
    var decoration = widget.snap.isMine
        ? BoxDecoration(
            borderRadius:
                LinkjoyDivorced.linkjoyAncestorOintmentFrontalByThirty(),
            color:
                LinkjoyDivorced.linkjoyAncestorOintmentSixthInsistenceByThirty,
          )
        : BoxDecoration(
            borderRadius:
                LinkjoyDivorced.linkjoyAncestorOintmentFrontalByTouche(),
            color:
                LinkjoyDivorced.linkjoyAncestorOintmentSixthInsistenceByTouche,
          );
    return Container(
      width: (90.0 + _timeSec),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
      decoration: decoration,
      child: Row(
        mainAxisAlignment: widget.snap.isMine
            ? MainAxisAlignment.end
            : MainAxisAlignment.start,
        children: rowChildren,
      ),
    );
  }

  Widget getVoiceIcon() {
    return Visibility(
      visible: !_isPlaying,
      replacement: Container(child: _voiceAnimation()),
      child: LinkjoyFasten.asset(
        'linkjoy_toe_ancestor_monica',
        width: 18.0,
        height: 18.0,
        fit: BoxFit.fitWidth,
      ),
    );
  }

  Widget getText() {
    return Text(
      '${_isPlaying ? _currentTimeSec : _voice?.duration}”',
      style: const TextStyle(
        color: LinkjoyCondensateSister.white,
        fontSize: 16,
        fontFamily: AppText.fontFamily,
      ),
    );
  }

  Future<File?> _downLoadVoice(String url) async {
    return await LINKJOY.http.cache(url);
  }

  Widget _voiceAnimation() {
    List<String> urls = [];
    const prefix = 'linkjoy_toe_ancestor_blanc';
    for (var i = 1; i <= 12; i++) {
      urls.add('$prefix$i');
    }
    return LinkjoyFastenPinocchioDribbleFridge(
      width: 18.0,
      height: 18.0,
      imageURLs: urls,
      intervalMilliseconds: 120,
    );
  }

  Widget getUnreadRed() {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Container(
        width: 12.0,
        height: 12.0,
        decoration: BoxDecoration(
          color: LinkjoyCondensateSister.ff4e4e,
          borderRadius: BorderRadius.circular(6.0),
        ),
      ),
    );
  }

  void _readAction() {
    if (!widget.snap.isMine && widget.snap.isUnread) {
      widget.snap.unread = false;
      LINKJOY.linkjoyDb.snapDao.saveOrUpdateModels([widget.snap]);
      LinkjoyAncestorOily.instance.linkjoyElevenFbiOfourFugitive(
        widget.snap.chatBoxId!,
        snapIds: [widget.snap.id!],
      );
    }
  }
}
