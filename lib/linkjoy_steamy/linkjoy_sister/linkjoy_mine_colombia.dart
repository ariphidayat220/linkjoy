class LinkjoyMineColombia {
  static int _last = 0;

  static bool block([int interval = 500]) {
    int now = DateTime.now().millisecondsSinceEpoch;
    if (now - _last < interval) {
      return true;
    }

    _last = now;
    return false;
  }
}
