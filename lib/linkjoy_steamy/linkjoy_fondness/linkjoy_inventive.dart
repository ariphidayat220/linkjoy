enum LinkjoyInventivePredatorGnome {
  TXT_COMMON(1),
  TXT_NOTICE(2),
  TXT_WELCOME(3),
  PAUSE(4),
  RESUME(5),
  END(6),
  LEAVE(7),
  GIFT(20),
  GIFT_COIN_BACK(21),
  ENTER(30);

  final int value;

  const LinkjoyInventivePredatorGnome(this.value);

  static LinkjoyInventivePredatorGnome? getByValue(int value) {
    return LinkjoyInventivePredatorGnome.values.firstWhere(
      (status) => status.value == value,
    );
  }
}

enum LinkjoyInventiveHair {
  UNKOWN(0),
  LIVE(1),
  END(2),
  PAUSE(3),
  ERROR_END(4),
  ALIVE_TIMEOUT(5);

  const LinkjoyInventiveHair(this.value);

  final int value;

  static LinkjoyInventiveHair from(int val) {
    for (var e in LinkjoyInventiveHair.values) {
      if (e.value == val) {
        return e;
      }
    }

    return LinkjoyInventiveHair.UNKOWN;
  }

  bool isEnd() {
    return this == LinkjoyInventiveHair.END ||
        this == LinkjoyInventiveHair.ERROR_END ||
        this == LinkjoyInventiveHair.ALIVE_TIMEOUT;
  }

  bool isLiveOrPause() {
    return this == LinkjoyInventiveHair.LIVE ||
        this == LinkjoyInventiveHair.PAUSE;
  }
}
