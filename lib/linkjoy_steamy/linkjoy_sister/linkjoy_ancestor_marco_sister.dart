import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_marco.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_marco_dragon.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:path/path.dart' as Path;

import 'linkjoy_gnome_sister.dart';

class LinkjoyAncestorMarcoSister {
  final String kEmojiNameRegular = "\\[[\\s\\S]{1,}?\\]";

  String basePath = "";
  List<LinkjoyMarcoDragon> list = [];
  Map<String, LinkjoyMarco> dic = {};

  static LinkjoyAncestorMarcoSister get instance => _getInstance();
  static LinkjoyAncestorMarcoSister? _instance;

  static LinkjoyAncestorMarcoSister _getInstance() {
    return _instance ??= LinkjoyAncestorMarcoSister._internal();
  }

  LinkjoyAncestorMarcoSister._internal() {
    basePath = chatEmojiPath();
  }

  void dispose() => _instance = null;

  void getEmojiInfoList() {}

  String checkEmojiText(String? text) {
    if (text == null || text.isEmpty) {
      return "";
    }
    String returnText = '';
    Iterable<RegExpMatch> matches = RegExp(kEmojiNameRegular).allMatches(text);
    int start = 0;
    for (Match m in matches) {
      String? match = m.group(0);
      if (m.start > start) {
        String tempText = text.substring(start, m.start);
        returnText += tempText;
      }
      LinkjoyGnomeSister.nullSafe<String>(
        match,
        notNullBlock: (obj) => returnText += obj,
      );
      if (dic[match] != null) {
        returnText += '()';
      }
      start = m.end;
    }
    if (text.length > start) {
      String tempText = text.substring(start, text.length);
      returnText += tempText;
    }
    return returnText;
  }

  static final List<String> emojiTextList = [
    '🙂',
    '😀',
    '😁',
    '😉',
    '😍',
    '😘',
    '😜',
    '🤑',
    '🤗',
    '😚',
    '😇',
    '😎',
    '🤓',
    '😔',
    '☹️',
    '😁',
    '😡',
    '😭',
    '😓',
    '😪',
    '😳',
    '😱',
    '😰',
    '😴',
    '🤔',
    '🙄️',
    '😬',
    '🤒',
    '🤖️',
    '😈',
    '💩',
    '👻',
    '👽',
    '🛀',
    '👯',
    '🙏',
    '👏',
    '🙌',
    '👍',
    '👎',
    '✌️',
    '🤘',
    '👌',
    '👈',
    '👉',
    '👆',
    '👇',
    '👋',
    '💪',
    '🖕',
    '💋',
    '👄',
    '❤️',
    '💔',
    '💓',
    '💘',
    '🎉',
    '🎁',
    '🌹',
    '💣',
    '🦄️',
    '🐶',
    '🐯',
    '🐷',
    '🍏',
    '🍉',
    '🍗',
    '🍭',
    '🎂',
    '🍩',
    '🍾️',
    '🍺',
    '☕️',
    '👑',
    '💰',
    '🕶',
    '🔥',
    '☀️',
    '🌙',
    '🌈',
    '☁️',
    '⛈',
    '❄️',
    '🌫',
    '☔️',
    '💨',
    '☘️',
    '☮️',
    '💢',
  ];

  static String kAppConfigPathResourcePath = "unzip_resource";

  static String kChatEmojiResVersionKey = "kChatEmojiResVersionKey";
  static String kChatEmojiResName = "chat_emoji_res";
  static String kChatEmojiResArrayName = "chat_emoji_array.json";
  static String kChatEmojiResDicName = "chat_emoji_dic.json";

  int chatEmojiResourcesVersion() {
    /**
     * 1 : 初始
     */
    return 1;
  }

  String chatEmojiPath() {
    return Path.join(
      LINKJOY.rootPath,
      '$kAppConfigPathResourcePath/$kChatEmojiResName/',
    );
  }
}
