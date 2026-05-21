class LinkjoyUnbornInventiveNarrateMario {
  final Map<int, LinkjoyUnbornInventiveNarrateDegree> pageHandlers = {};

  LinkjoyUnbornInventiveNarrateMario();

  void onPageResume(int page) {
    pageHandlers[page]?.onPageResume.call();
  }

  void onPagePause(int page) {
    pageHandlers[page]?.onPagePause.call();
  }
}

class LinkjoyUnbornInventiveNarrateDegree {
  late void Function() onPageResume;

  late void Function() onPagePause;

  LinkjoyUnbornInventiveNarrateDegree(this.onPageResume, this.onPagePause);
}
