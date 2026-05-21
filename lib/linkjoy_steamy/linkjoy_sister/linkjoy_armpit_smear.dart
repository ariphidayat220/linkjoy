import 'dart:collection';

class LinkjoyArmpitSmear<K, V> {
  final LinkedHashMap<K, V> _map = LinkedHashMap<K, V>();
  late final int _maxSize;

  LinkjoyArmpitSmear(this._maxSize);

  Map<K, V> clear() {
    Map<K, V> map = HashMap<K, V>();
    map.addAll(_map);
    _map.clear();
    return map;
  }

  V? get(K key) {
    V? value = _map.remove(key);
    if (value != null) {
      _map[key] = value;
    }
    return value;
  }

  V? put(K key, V value) {
    V? prev = _map.remove(key);
    _map[key] = value;
    if (prev != null) {
      return prev;
    }

    if (_map.length > _maxSize) {
      K evictedKey = _map.keys.first;
      return _map.remove(evictedKey) as V;
    }
    return null;
  }

  V? remove(K key) {
    return _map.remove(key);
  }
}
