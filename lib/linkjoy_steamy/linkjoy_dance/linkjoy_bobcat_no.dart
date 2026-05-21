class LinkjoyBobcatNo {
  static const int _MAX = 0x7fffffff;

  static const int _MIN = 100;

  static const linkjoy_barrel_bobcat_mallet = 1;
  static const linkjoy_barrel_bobcat_guinea = 2;

  static int _SEQ = _MIN;

  static int next() {
    if (_SEQ < _MAX) {
      _SEQ++;
    } else {
      _SEQ = _MIN;
    }
    return _SEQ;
  }

  static void reset() {
    _SEQ = _MIN;
  }
}
