import 'package:date_format/date_format.dart' as DateFormat;
import 'package:flutter/material.dart';

class LinkjoyDestineSister {
  static const FORMAT_DATE3 = [
    DateFormat.mm,
    "-",
    DateFormat.dd,
    "  ",
    DateFormat.HH,
    ':',
    DateFormat.nn,
  ];
  static const FORMAT_HHNNSS = [
    DateFormat.HH,
    ":",
    DateFormat.nn,
    ":",
    DateFormat.ss,
  ];
  static const FORMAT_YYYYMMDD = [
    DateFormat.yyyy,
    '-',
    DateFormat.mm,
    '-',
    DateFormat.dd,
  ];
  static const FORMAT_YYYY_MM_DD_HH_MM_SS = [
    DateFormat.yyyy,
    '-',
    DateFormat.mm,
    '-',
    DateFormat.dd,
    ' ',
    DateFormat.hh,
    ':',
    DateFormat.nn,
    ':',
    DateFormat.ss,
  ];

  static String getFormatDateTime(
    DateTime dateTime, {
    List<String> formats = FORMAT_YYYY_MM_DD_HH_MM_SS,
  }) {
    return DateFormat.formatDate(dateTime, formats);
  }

  static String formatDay(
    int timeInMills, {
    List<String> formats = FORMAT_YYYYMMDD,
  }) {
    return DateFormat.formatDate(
      DateTime.fromMillisecondsSinceEpoch(timeInMills),
      formats,
    );
  }

  static String getFormatTimer(
    int seconds, {
    List<String> formats = const [DateFormat.nn, ":", DateFormat.ss],
  }) {
    return DateFormat.formatDate(
      DateTime(0).add(Duration(seconds: seconds)),
      formats,
    );
  }

  static String formatDuration(Duration d) {
    int hour = d.inHours;
    int minute = d.inMinutes >= 60 ? (d.inMinutes % 60) : d.inMinutes;
    int second = (d.inSeconds >= 60) ? (d.inSeconds % 60) : d.inSeconds;
    String formatTime(int time) => time < 10 ? '0$time' : '$time';
    return '${hour == 0 ? '' : '${formatTime(hour)}:'}${formatTime(minute)}:${formatTime(second)}';
  }

  static int getAge(int timestamp) {
    DateTime birthDate = DateTime.fromMillisecondsSinceEpoch(timestamp);
    DateTime today = DateTime.now();

    int age = today.year - birthDate.year;

    if (today.month < birthDate.month ||
        (today.month == birthDate.month && today.day < birthDate.day)) {
      age--;
    }

    return age;
  }

  static String formatRecordsTimesShort(int? milliSeconds, [String? locale]) {
    if (milliSeconds == null || milliSeconds == 0) return '';
    String ret;
    final now = DateTime.now();
    final dateTime = DateTime.fromMillisecondsSinceEpoch(milliSeconds);
    if (dateTime.isAfter(now) || dateTime.year < now.year) {
      ret = LinkjoyDestineSister.getFormatDateTime(
        dateTime,
        formats: const [
          /*DateFormat.yyyy, '-', */ DateFormat.mm,
          '-',
          DateFormat.dd,
        ],
      );
    } else if (dateTime.month < now.month || dateTime.day <= now.day - 1) {
      ret = LinkjoyDestineSister.getFormatDateTime(
        dateTime,
        formats: const [DateFormat.mm, '-', DateFormat.dd],
      );
    } else {
      ret = LinkjoyDestineSister.getFormatDateTime(
        dateTime,
        formats: const [DateFormat.am, ' ', DateFormat.hh, ':', DateFormat.nn],
      );
    }
    return ret;
  }

  static String formatRecordsTimes(int? milliSeconds, [String? locale]) {
    if (milliSeconds == null || milliSeconds == 0) return '';
    String ret;
    final now = DateTime.now();
    final dateTime = DateTime.fromMillisecondsSinceEpoch(milliSeconds);
    if (dateTime.isAfter(now) || dateTime.year < now.year) {
      ret = LinkjoyDestineSister.getFormatDateTime(
        dateTime,
        formats: const [
          DateFormat.yyyy,
          '-',
          DateFormat.mm,
          '-',
          DateFormat.dd,
        ],
      );
    } else {
      ret = LinkjoyDestineSister.getFormatDateTime(
        dateTime,
        formats: const [
          DateFormat.mm,
          '-',
          DateFormat.dd,
          ' ',
          DateFormat.HH,
          ':',
          DateFormat.nn,
        ],
      );
    }
    return ret;
  }

  static String getTimeMonth(DateTime targetMonth) {
    return DateFormat.formatDate(targetMonth, [DateFormat.MM]);
  }

  static bool isToday(int time) {
    final dateTime = DateTime.fromMillisecondsSinceEpoch(time);
    return DateUtils.isSameDay(dateTime, DateTime.now());
  }

  static String linkjoyGilToPun(int sec) {
    if (sec < 0) sec = 0;

    int hours = sec ~/ 3600;
    int minutes = (sec % 3600) ~/ 60;
    int seconds = sec % 60;

    String twoDigits(int n) => n.toString().padLeft(2, '0');

    final hoursStr = twoDigits(hours);
    final minutesStr = twoDigits(minutes);
    final secondsStr = twoDigits(seconds);

    return '$hoursStr:$minutesStr:$secondsStr';
  }
}
