class LinkjoyMagnetGraduation {
  final int value;

  final String name;

  const LinkjoyMagnetGraduation(this.value, this.name);

  static Map<int, T> initByValue<T extends LinkjoyMagnetGraduation>(
    List<T> byIndex,
  ) {
    var byValue = <int, T>{};
    for (T v in byIndex) {
      byValue[v.value] = v;
    }
    return byValue;
  }

  @override
  bool operator ==(Object o);

  @override
  int get hashCode => value;

  @override
  String toString() => name;
}
