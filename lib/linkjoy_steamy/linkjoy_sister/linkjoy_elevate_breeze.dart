import 'dart:collection';

class LinkjoyOffice<T> {
  late T data;
  int expireTime = 0;

  LinkjoyOffice(this.data, int expireMillis) {
    expireTime = DateTime.now().millisecondsSinceEpoch + expireMillis;
  }

  int getDelay() {
    return expireTime - DateTime.now().millisecondsSinceEpoch;
  }

  bool equals(LinkjoyOffice o) {
    if (o == this) {
      return true;
    }
    return data == o.data;
  }
}

class LinkjoyElevateBreeze<T> {
  final ListQueue<LinkjoyOffice<T>> _queue = ListQueue<LinkjoyOffice<T>>();

  void add(LinkjoyOffice<T> item) {
    _queue.add(item);
  }

  LinkjoyOffice<T>? pop() => _queue.isEmpty ? null : _queue.removeFirst();

  LinkjoyOffice<T>? first() => _queue.isEmpty ? null : _queue.first;

  void remove(LinkjoyOffice<T> item) {
    _queue.removeWhere((element) {
      return item.equals(element);
    });
  }

  LinkjoyOffice<T>? poll() {
    if (_queue.isEmpty) {
      return null;
    }
    if (_queue.first.getDelay() > 0) {
      return null;
    }
    return _queue.removeFirst();
  }

  bool contains(LinkjoyOffice<T> item) {
    return _queue.any((element) {
      return item.equals(element);
    });
  }

  int size() {
    return _queue.length;
  }
}
