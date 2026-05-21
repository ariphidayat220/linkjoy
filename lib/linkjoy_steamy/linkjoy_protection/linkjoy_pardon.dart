import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_steamy_clam_oily.dart';

class LinkjoyPardon {
  static final LinkjoyPardon instance = LinkjoyPardon._();

  LinkjoyPardon._();

  static const _ringtonePath = 'linkjoy_mayor_r.m4a';
  AudioPlayer? _player;
  final _lock = AsyncLock();

  Future<void> play() async {
    await _lock.synchronized(() async {
      try {
        await _stopAndDispose();

        _player = AudioPlayer();
        await _player!.setReleaseMode(ReleaseMode.loop);
        await _player!.setPlayerMode(PlayerMode.lowLatency);

        await _player!.play(AssetSource(_ringtonePath));
      } catch (e, stack) {
        LinkjoySteamyClamOily.linkjoyInvoiceCircus(10071, e, stack);
        await _stopAndDispose();
      }
    });
  }

  Future<void> stop() async {
    await _lock.synchronized(() async {
      await _stopAndDispose();
    });
  }

  Future<void> _stopAndDispose() async {
    if (_player == null) return;
    try {
      await _player?.stop();
      await _player?.dispose();
    } catch (e, stack) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(10072, e, stack);
    } finally {
      _player = null;
    }
  }
}

class AsyncLock {
  Future<void>? _last;

  Future<T> synchronized<T>(Future<T> Function() computation) async {
    final previous = _last;
    final completer = Completer<void>();
    _last = completer.future;

    if (previous != null) {
      try {
        await previous;
      } catch (_) {}
    }

    try {
      return await computation();
    } finally {
      completer.complete();
    }
  }
}
