import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/proto/linkjoy_convict.pb.dart';
import 'package:flutter/cupertino.dart';
import 'package:video_player/video_player.dart';

enum DataSourceType { network, asset }

class LinkjoyDegrasseStyle extends StatelessWidget {
  late LinkjoyDegrasseStyleMario controller;

  LinkjoyDegrasseStyle(this.controller, {super.key});

  @override
  Widget build(BuildContext context) {
    return !controller._initialized
        ? const SizedBox.shrink()
        : FittedBox(
            fit: BoxFit.cover,
            child: SizedBox(
              width: controller._controller!.value.aspectRatio,
              height: 1,
              child: VideoPlayer(controller._controller!),
            ),
          );
  }
}

class LinkjoyDegrasseStyleMario {
  void Function() onStart;

  void Function(bool error) onEnd;

  LinkjoyDegrasseStyleMario({required this.onStart, required this.onEnd});

  VideoPlayerController? _controller;

  bool _initialized = false;

  bool onRemoteVideoStateStarting = false;

  int preBufferDuration = 0;

  int bufferTimes = 0;

  int bufferTotalMills = 0;

  final int _bufferStartTime = 0;

  int totalMills = 0;
  int positionMills = 0;

  int _startPlayTime = 0;

  bool _hasEndInvoked = false;

  bool errorEnd = false;

  void play(
    String video, {
    DataSourceType dataSourceType = DataSourceType.network,
  }) {
    _startPlayTime = DateTime.now().millisecondsSinceEpoch;

    if (_controller != null) {
      _controller!.dispose();
    }

    switch (dataSourceType) {
      case DataSourceType.network:
        _controller = VideoPlayerController.networkUrl(Uri.parse(video))
          ..initialize()
              .then((_) {
                _onInitialized();
              })
              .catchError((error) {
                _onFinish(true);
              });
        break;
      case DataSourceType.asset:
        _controller = VideoPlayerController.asset(video)
          ..initialize()
              .then((_) {
                _onInitialized();
              })
              .catchError((error) {
                _onFinish(true);
              });
        break;
    }

    _controller!.addListener(_listener);
  }

  void _onInitialized() {
    _initialized = true;

    int now = DateTime.now().millisecondsSinceEpoch;
    preBufferDuration = now - _startPlayTime;
    totalMills = _controller!.value.duration.inMilliseconds;

    _controller!.play();
    onStart.call();
  }

  void _listener() {
    if (_controller == null) {
      return;
    }

    final value = _controller!.value;

    if (value.hasError) {
      _onFinish(true);
      return;
    }

    positionMills = value.position.inMilliseconds;

    final duration = value.duration;
    final position = value.position;
    if (duration.inMilliseconds > 0 &&
        position.inMilliseconds >= duration.inMilliseconds - 100) {
      _onFinish(false);
    }
  }

  void _onFinish(bool error) {
    if (!_hasEndInvoked) {
      _hasEndInvoked = true;
      errorEnd = error;
      onEnd.call(error);
    }
  }

  VideoPlaySummary stat() {
    VideoPlaySummary stat = VideoPlaySummary();
    stat.preBufferDuration = preBufferDuration;
    stat.bufferingTimes = bufferTimes;
    stat.bufferingTotalDuration = bufferTotalMills;
    stat.closeType = errorEnd ? 3 : (positionMills == totalMills ? 1 : 2);
    stat.progress = totalMills <= 0
        ? 0
        : ((positionMills * 100) / totalMills).toInt();

    return stat;
  }

  int durationInSeconds() {
    return _controller?.value.duration.inSeconds ?? 0;
  }

  void setVolume(double volume) {
    _controller?.setVolume(volume);
  }

  void dispose() {
    _controller?.removeListener(_listener);
    _controller?.dispose();
    _controller = null;
  }
}
