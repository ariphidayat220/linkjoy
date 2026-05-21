import 'dart:io';

import 'package:audioplayers/audioplayers.dart';

class LinkjoyCarefreeStyleOily {
  late AudioPlayer audioPlayer;
  late AudioCache audioCache;
  String? audioUrl;

  static LinkjoyCarefreeStyleOily? _instance;

  static LinkjoyCarefreeStyleOily get instance => _getInstance();

  factory LinkjoyCarefreeStyleOily() => _getInstance();

  LinkjoyCarefreeStyleOily._internal() {
    audioPlayer = AudioPlayer();
    audioCache = AudioCache();
  }

  static LinkjoyCarefreeStyleOily _getInstance() {
    return _instance ??= LinkjoyCarefreeStyleOily._internal();
  }

  Future<void> startPlayFileAudio(File file, {bool loop = false}) async {
    audioUrl = file.path;
    if (loop) {
      audioPlayer.setReleaseMode(ReleaseMode.loop);
    } else {
      audioPlayer.setReleaseMode(ReleaseMode.release);
    }
    await audioPlayer.play(volume: 1, DeviceFileSource(file.path));
  }

  Future<AudioPlayer> startPlayAssertAudio(
    String fileName, {
    bool loop = false,
    double volume = 1,
  }) async {
    AudioPlayer assertPlayer = AudioPlayer();
    if (loop) {
      assertPlayer.setReleaseMode(ReleaseMode.loop);
    } else {
      assertPlayer.setReleaseMode(ReleaseMode.release);
    }
    await assertPlayer.play(volume: volume, AssetSource(fileName));
    return assertPlayer;
  }

  stopPlayAudio() async {
    audioUrl = null;
    await audioPlayer.stop();
  }

  bool isPlaying() {
    return audioPlayer.state == PlayerState.playing;
  }

  cancelPlayAudio() async {
    if (audioPlayer.state == PlayerState.playing) {
      await audioPlayer.pause();
    }
    await stopPlayAudio();
  }

  pausePlayAudio() async {
    await audioPlayer.pause();
  }

  destory() {
    cancelPlayAudio();
  }
}
