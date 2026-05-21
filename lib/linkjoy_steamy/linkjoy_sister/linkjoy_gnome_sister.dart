import 'dart:math';
import 'dart:ui';

import 'package:fixnum/fixnum.dart';
import 'package:intl/intl.dart';

typedef NotNullBlock<T> = void Function(T obj);

abstract class LinkjoyGnomeSister {
  static int? stringToInt(String? number) {
    return number == null ? null : int.tryParse(number);
  }

  static String? stringFromInt(int? number) => number?.toString();

  static bool? parseBool(dynamic object) {
    if (object == null) {
      return null;
    } else if (object is bool) {
      return object;
    } else if (object is int) {
      return object != 0;
    } else {
      int? value = stringToInt(object);
      return value == null ? false : value != 0;
    }
  }

  static int? parseInt(dynamic object) {
    if (object == null) {
      return null;
    } else if (object is int) {
      return object;
    } else if (object is double) {
      return double.tryParse(object.toString())?.toInt();
    } else {
      return stringToInt(object as String);
    }
  }

  static Int64 toInt64(int value) => Int64(value);

  static int parseIntDef(dynamic object, int def) {
    int? val = parseInt(object);

    return val ?? def;
  }

  static num? parseNum(dynamic object) {
    if (object == null) {
      return null;
    } else if (object is num) {
      return object;
    } else if (object is String) {
      return num.tryParse(object);
    } else {
      return null;
    }
  }

  static double? parseDouble(dynamic object) {
    if (object == null) {
      return null;
    } else if (object is double) {
      return object;
    } else if (object is String) {
      return double.tryParse(object);
    } else if (object != null) {
      return object.toDouble();
    } else {
      return null;
    }
  }

  static String parseString(dynamic object) {
    if (object is String) {
      return object;
    } else if (object != null) {
      return object.toString();
    } else {
      return '';
    }
  }

  static bool dynamicToBoolNotNull(dynamic number) =>
      parseBool(number) ?? false;

  static int dynamicToIntNotNull(dynamic number, {int defaultValue = 0}) =>
      parseInt(number) ?? defaultValue;

  static double dynamicToDoubleNotNull(dynamic number) =>
      parseDouble(number) ?? 0;

  static void nullSafe<T>(
    T? obj, {
    VoidCallback? nullBlock,
    NotNullBlock<T>? notNullBlock,
  }) {
    if (obj != null) {
      notNullBlock?.call(obj);
    } else {
      nullBlock?.call();
    }
  }

  static bool isEmpty(dynamic param) {
    if (param == null) return true;
    if (param is String) return param.isEmpty;
    if (param is List) return param.isEmpty;
    if (param is Map) return param.isEmpty;
    return false;
  }

  static bool isEmptyString(String? s) => s == null || s.isEmpty;

  static bool isEmptyList(List? l) => l == null || l.isEmpty;

  static bool isEmptySet(Set? s) => s == null || s.isEmpty;

  static bool isEmptyMap(Map? m) => m == null || m.isEmpty;

  static List<T> randomSubset<T>(List<T> list, int count) {
    if (count >= list.length) {
      return list..shuffle();
    }

    List<T> result = [];
    Random random = Random();

    List<T> copy = List.from(list);

    for (int i = 0; i < count; i++) {
      int randomIndex = random.nextInt(copy.length);
      result.add(copy.removeAt(randomIndex));
    }

    return result;
  }

  static String numberToString4(int value) {
    if (value <= 999) {
      return value.toString();
    } else if (value <= 9999) {
      return value.toString();
    } else if (value <= 99999) {
      return "${(((value / 1000) * 10).truncateToDouble() / 10).toStringAsFixed(1)}K";
    } else if (value <= 999999) {
      return "${value ~/ 1000}K";
    } else if (value <= 9999999) {
      return "${(((value / 1000000) * 100).truncateToDouble() / 100).toStringAsFixed(2)}M";
    } else if (value <= 99999999) {
      return "${(((value / 1000000) * 10).truncateToDouble() / 10).toStringAsFixed(1)}M";
    } else {
      return "${(value ~/ 1000000)}M";
    }
  }

  static String formatValue(int value, int matchedValue) {
    double result = value / matchedValue;
    NumberFormat formatter = result < 1
        ? NumberFormat("#0.0")
        : NumberFormat("#0");
    return formatter.format(result);
  }
}
