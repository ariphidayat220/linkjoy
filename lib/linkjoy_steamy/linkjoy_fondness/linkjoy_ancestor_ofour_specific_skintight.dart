import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_ancestor_ofour_specific_skintight_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'linkjoy_magnet_graduation.dart';

class LinkjoyAncestorOfourSpecificSkintight {
  int? category;
  int? type;
  String? title;
  String? desc;
  String? cover;
  int? count;
  int? status;
  int? userId;
  String? userName;
  String? userHead;
  int? gender;
  int? userLevel;
  String? constellation;
  int? age;
  String? area;
  int? evaluateId;
  int? star;
  String? starText;

  int? id;
  int? to_uid;
  int? quantity;
  String? icon;
  String? name;
  int? cost;
  int? value;
  int? price;
  int? min_duration;
  int? max_duration;
  int? animation_type;
  String? animation_url;

  bool get isUserIdMine => userId == LINKJOY.uid();

  LinkjoyAncestorOfourSpecificSkintight();

  factory LinkjoyAncestorOfourSpecificSkintight.fromJson(
    Map<String, dynamic> json,
  ) => LinkjoyAncestorOfourSpecificSkintight()
    ..category = LinkjoySmearSister.intDef(json, "category", 0)
    ..type = LinkjoySmearSister.intDef(json, "type", 0)
    ..title = LinkjoySmearSister.strDef(json, "title", "")
    ..desc = LinkjoySmearSister.strDef(json, "desc", "")
    ..cover = LinkjoySmearSister.strDef(json, "cover", "")
    ..count = LinkjoySmearSister.intDef(json, "count", 0)
    ..status = LinkjoySmearSister.intDef(json, "status", 0)
    ..userId = LinkjoySmearSister.intDef(json, "user_id", 0)
    ..userName = LinkjoySmearSister.strDef(json, "userName", "")
    ..userHead = LinkjoySmearSister.strDef(json, "userHead", "")
    ..gender = LinkjoySmearSister.intDef(json, "gender", 0)
    ..userLevel = LinkjoySmearSister.intDef(json, "userLevel", 0)
    ..constellation = LinkjoySmearSister.strDef(json, "constellation", "")
    ..age = LinkjoySmearSister.intDef(json, "age", 0)
    ..area = LinkjoySmearSister.strDef(json, "area", "")
    ..evaluateId = LinkjoySmearSister.intDef(json, "evaluateId", 0)
    ..star = LinkjoySmearSister.intDef(json, "star", 0)
    ..starText = LinkjoySmearSister.strDef(json, "starText", "")
    ..id = LinkjoySmearSister.intDef(json, "id", 0)
    ..to_uid = LinkjoySmearSister.intDef(json, "to_uid", 0)
    ..quantity = LinkjoySmearSister.intDef(json, "quantity", 1)
    ..icon = LinkjoySmearSister.strDef(json, "icon", "")
    ..name = LinkjoySmearSister.strDef(json, "name", "")
    ..cost = LinkjoySmearSister.intDef(json, "cost", 0)
    ..price = LinkjoySmearSister.intDef(json, "price", 0)
    ..value = LinkjoySmearSister.intDef(json, "value", 0)
    ..min_duration = LinkjoySmearSister.intDef(json, "min_duration", 0)
    ..max_duration = LinkjoySmearSister.intDef(json, "max_duration", 0)
    ..animation_type = LinkjoySmearSister.intDef(json, "animation_type", 0)
    ..animation_url = LinkjoySmearSister.strDef(json, "animation_url", "");

  Map<String, dynamic> toJson() {
    return {
      'category': category,
      'type': type,
      'title': title,
      'desc': desc,
      'cover': cover,
      'count': count,
      'status': status,
      'userId': userId,
      'userName': userName,
      'userHead': userHead,
      'gender': gender,
      'userLevel': userLevel,
      'constellation': constellation,
      'age': age,
      'area': area,
      'evaluateId': evaluateId,
      'star': star,
      'starText': starText,
      'id': id,
      'to_uid': to_uid,
      'quantity': quantity,
      'icon': icon,
      'name': name,
      'cost': cost,
      'price': price,
      'value': value,
      'min_duration': min_duration,
      'max_duration': max_duration,
      'animation_type': animation_type,
      'animation_url': animation_url,
    };
  }

  static bool isSupported(LinkjoyAncestorOfourSpecificSkintight? content) {
    bool ret = false;
    if (content == null) {
      return ret;
    }
    if (content.category != null) {
      switch (ChatSnapJsonContentCategory.valueOf(content.category)) {
        case ChatSnapJsonContentCategory.orderCate:
          break;
        case ChatSnapJsonContentCategory.liveVideoCate:
          break;
        case ChatSnapJsonContentCategory.liveVoiceCate:
          break;
        case ChatSnapJsonContentCategory.cardCate:
        case ChatSnapJsonContentCategory.skillCate:
          ret = true;
          break;
        case ChatSnapJsonContentCategory.feedCate:
          if (content.type != null) {
            switch (content.type) {
              case ChatSnapJsonContentType.feedText:
              case ChatSnapJsonContentType.feedImage:
              case ChatSnapJsonContentType.feedVideo:
                break;
              default:
                break;
            }
          }
          break;
        case ChatSnapJsonContentCategory.callCate:
          if (content.type != null) {
            switch (content.type) {
              case ChatSnapJsonContentType.callAudio:
              case ChatSnapJsonContentType.callVideo:
              case ChatSnapJsonContentType.callRating:
                ret = true;
                break;
              default:
                break;
            }
          }
          break;
        case ChatSnapJsonContentCategory.imGiftCate:
        case ChatSnapJsonContentCategory.imGiftBegCate:
          ret = true;
          break;
        default:
          break;
      }
    }
    return ret;
  }

  static TextSpan jsonContentListMessage(
    LinkjoyAncestorOfourSpecificSkintight? content,
    TextStyle style,
  ) {
    TextSpan ret = const TextSpan();
    if (content?.category != null) {
      switch (ChatSnapJsonContentCategory.valueOf(content!.category)) {
        case ChatSnapJsonContentCategory.callCate:
          switch (content.type) {
            case ChatSnapJsonContentType.callAudio:
            case ChatSnapJsonContentType.callVideo:
              ret = TextSpan(
                style: style,
                children: [
                  WidgetSpan(
                    alignment: PlaceholderAlignment.middle,
                    child: Padding(
                      padding: EdgeInsets.only(right: LinkjoyGarage.s4),
                      child: Icon(
                        Icons.video_camera_front_outlined,
                        color: LinkjoyAve.textSecondary,
                        size: LinkjoyDiscard.iconSmall,
                      ),
                    ),
                  ),
                  TextSpan(
                    text: "linkjoy_caring_degrasse_convict_satellite".tr,
                  ),
                ],
              );
              break;
            default:
              break;
          }
          break;
        case ChatSnapJsonContentCategory.imGiftCate:
        case ChatSnapJsonContentCategory.imGiftBegCate:
          ret = TextSpan(
            style: style,
            children: [
              WidgetSpan(
                alignment: PlaceholderAlignment.middle,
                child: Padding(
                  padding: EdgeInsets.only(right: LinkjoyGarage.s4),
                  child: Icon(
                    Icons.card_giftcard_outlined,
                    color: LinkjoyAve.textSecondary,
                    size: LinkjoyDiscard.iconSmall,
                  ),
                ),
              ),
              TextSpan(text: "linkjoy_caring_flashy".tr),
            ],
          );
          break;
        default:
          break;
      }
    }
    return ret;
  }

  bool isAnimationGift() {
    return LinkjoyAncestorOfourSpecificSkintightSister.isGiftCategory(this) &&
        name != null &&
        icon != null &&
        animation_url != null;
  }
}

class ChatSnapJsonContentCategory extends LinkjoyMagnetGraduation {
  static const orderCate = ChatSnapJsonContentCategory._(1, 'orderCate');
  static const liveVideoCate = ChatSnapJsonContentCategory._(
    2,
    'liveVideoCate',
  );
  static const feedCate = ChatSnapJsonContentCategory._(3, 'feedCate');
  static const cardCate = ChatSnapJsonContentCategory._(4, 'cardCate');
  static const skillCate = ChatSnapJsonContentCategory._(5, 'skillCate');
  static const callCate = ChatSnapJsonContentCategory._(6, 'callCate');
  static const liveVoiceCate = ChatSnapJsonContentCategory._(
    7,
    'liveVoiceCate',
  );
  static const imGiftCate = ChatSnapJsonContentCategory._(8, 'imGiftCate');
  static const imGiftBegCate = ChatSnapJsonContentCategory._(
    10,
    'imGiftBegCate',
  );

  static final Map<int, ChatSnapJsonContentCategory> _byValue =
      LinkjoyMagnetGraduation.initByValue(<ChatSnapJsonContentCategory>[
        orderCate,
        liveVideoCate,
        feedCate,
        cardCate,
        skillCate,
        callCate,
        liveVoiceCate,
        imGiftCate,
        imGiftBegCate,
      ]);

  static ChatSnapJsonContentCategory? valueOf(int? value) => _byValue[value];

  const ChatSnapJsonContentCategory._(super.value, super.name);
}

class ChatSnapJsonContentType {
  static const int callAudio = 1;
  static const int callVideo = 2;
  static const int callRating = 3;

  static const int feedText = 1;
  static const int feedImage = 2;
  static const int feedVideo = 3;

  static const int LiveVideoDefault = 0;

  static const int LiveVoiceDefault = 0;
}

class ChatSnapJsonContentStatus {
  static const int callDone = 1;
  static const int callCanceled = 2;
  static const int callRefused = 3;
  static const int callNoReply = 4;
  static const int callBusy = 5;
  static const int connectFailed = 6;
}
