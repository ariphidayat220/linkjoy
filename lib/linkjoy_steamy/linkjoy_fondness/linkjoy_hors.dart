import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_ancestor_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:linkjoy/linkjoy_steamy/proto/im_object.pbenum.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

import 'linkjoy_ancestor_unborn.dart';

class LinkjoyAncestorSupercool {
  int? id;
  int? type;
  String? name;
  String? coverURL;
  int? owner;
  String? qrCodeURL;
  int? weight;
  bool? muted;
  int? unreadCount;
  int? updateTime;
  String? additionalInfo;
  String? desc;
  bool? serviceChat = false;
  bool? hasChat;
  int? lastReadSnapTime;
  int? clearCacheTime;
  int? displayTime;
  int? lastSnapSendStatus;
  int? chatTemp;
  int? partnerId;

  int? lastSnapType;
  String? lastSnapTextContent;
  String? lastSnapJsonContent;
  int? lastSnapCreateTime;

  List<LinkjoyAncestorUnborn>? members;
  LinkjoyAncestorUnborn? chatUser;
  List<InlineSpan>? lastContent;

  LinkjoyAncestorSupercool();

  @override
  int get hashCode => id ?? 0;

  @override
  bool operator ==(other) {
    if (identical(this, other)) return true;
    return other is LinkjoyAncestorSupercool && id == other.id;
  }

  void replaceMember(LinkjoyAncestorUnborn user) {
    final index = members?.indexOf(user) ?? -1;
    if (index > -1) {
      members?.removeAt(index);
      members?.insert(index, user);
    }
  }

  String? get showName {
    if (LinkjoyAncestorSister.isLinkjoySailorProcessing(partnerId)) {
      return "linkjoy_caring_canada_sailor".tr;
    }
    return chatUser?.nickName;
  }

  String? get showCoverURL {
    if (LinkjoyAncestorSister.isLinkjoySailorProcessing(partnerId)) {
      return LinkjoyAncestorSister.linkjoy_sailor_vent;
    }

    if (!LinkjoyGnomeSister.isEmptyString(coverURL)) {
      return coverURL;
    } else {
      return chatUser?.avatarUrl;
    }
  }

  bool get isTop => (weight ?? 0) > 0;

  set isTop(bool isTop) => weight = isTop ? 1 : 0;

  bool get isSingle => type == Chatbox_Type.SINGLE.value;

  bool get isGroup => type == Chatbox_Type.GROUP.value;

  bool get hasSnap => lastReadSnapTime != null && lastReadSnapTime! > 0;

  LinkjoyAncestorSupercool copyWith({
    int? id,
    int? type,
    String? name,
    String? coverURL,
    int? owner,
    String? qrCodeURL,
    int? weight,
    bool? muted,
    int? unreadCount,
    int? updateTime,
    String? additionalInfo,
    String? desc,
    bool? serviceChat,
    bool? hasChat,
    int? lastReadSnapTime,
    int? clearCacheTime,
    int? displayTime,
    int? lastSnapSendStatus,
    int? chatTemp,
    int? partnerId,
    int? lastSnapType,
    String? lastSnapTextContent,
    String? lastSnapJsonContent,
    int? lastSnapCreateTime,
    List<LinkjoyAncestorUnborn>? members,
    LinkjoyAncestorUnborn? chatUser,
    List<InlineSpan>? lastContent,
  }) {
    return LinkjoyAncestorSupercool()
      ..id = id ?? this.id
      ..type = type ?? this.type
      ..name = name ?? this.name
      ..coverURL = coverURL ?? this.coverURL
      ..owner = owner ?? this.owner
      ..qrCodeURL = qrCodeURL ?? this.qrCodeURL
      ..weight = weight ?? this.weight
      ..muted = muted ?? this.muted
      ..unreadCount = unreadCount ?? this.unreadCount
      ..updateTime = updateTime ?? this.updateTime
      ..additionalInfo = additionalInfo ?? this.additionalInfo
      ..desc = desc ?? this.desc
      ..serviceChat = serviceChat ?? this.serviceChat
      ..hasChat = hasChat ?? this.hasChat
      ..lastReadSnapTime = lastReadSnapTime ?? this.lastReadSnapTime
      ..clearCacheTime = clearCacheTime ?? this.clearCacheTime
      ..displayTime = displayTime ?? this.displayTime
      ..lastSnapSendStatus = lastSnapSendStatus ?? this.lastSnapSendStatus
      ..chatTemp = chatTemp ?? this.chatTemp
      ..partnerId = partnerId ?? this.partnerId
      ..lastSnapType = lastSnapType ?? this.lastSnapType
      ..lastSnapTextContent = lastSnapTextContent ?? this.lastSnapTextContent
      ..lastSnapJsonContent = lastSnapJsonContent ?? this.lastSnapJsonContent
      ..lastSnapCreateTime = lastSnapCreateTime ?? this.lastSnapCreateTime
      ..members = members ?? this.members
      ..chatUser = chatUser ?? this.chatUser
      ..lastContent = lastContent ?? this.lastContent;
  }

  factory LinkjoyAncestorSupercool.fromJson(Map<String, dynamic> json) =>
      LinkjoyAncestorSupercool()
        ..id = (json['id'] as num?)?.toInt()
        ..type = (json['type'] as num?)?.toInt()
        ..name = json['name'] as String?
        ..coverURL = json['coverURL'] as String?
        ..owner = (json['owner'] as num?)?.toInt()
        ..qrCodeURL = json['qrCodeURL'] as String?
        ..weight = (json['weight'] as num?)?.toInt()
        ..muted = json['muted'] as bool?
        ..unreadCount = (json['unreadCount'] as num?)?.toInt()
        ..updateTime = (json['updateTime'] as num?)?.toInt()
        ..additionalInfo = json['additionalInfo'] as String?
        ..desc = json['desc'] as String?
        ..serviceChat = json['serviceChat'] as bool?
        ..hasChat = json['hasChat'] as bool?
        ..lastReadSnapTime = (json['lastReadSnapTime'] as num?)?.toInt()
        ..clearCacheTime = (json['clearCacheTime'] as num?)?.toInt()
        ..displayTime = (json['displayTime'] as num?)?.toInt()
        ..lastSnapSendStatus = (json['lastSnapSendStatus'] as num?)?.toInt()
        ..partnerId = (json['partnerId'] as num?)?.toInt()
        ..lastSnapType = (json['lastSnapType'] as num?)?.toInt()
        ..lastSnapTextContent = json['lastSnapTextContent'] as String?
        ..lastSnapJsonContent = json['lastSnapJsonContent'] as String?
        ..lastSnapCreateTime = (json['lastSnapCreateTime'] as num?)?.toInt()
        ..isTop = json['isTop'] as bool;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type,
      'name': name,
      'coverURL': coverURL,
      'owner': owner,
      'qrCodeURL': qrCodeURL,
      'weight': weight,
      'muted': muted,
      'unreadCount': unreadCount,
      'updateTime': updateTime,
      'additionalInfo': additionalInfo,
      'desc': desc,
      'serviceChat': serviceChat,
      'hasChat': hasChat,
      'lastReadSnapTime': lastReadSnapTime,
      'clearCacheTime': clearCacheTime,
      'displayTime': displayTime,
      'lastSnapSendStatus': lastSnapSendStatus,
      'partnerId': partnerId,
      'lastSnapType': lastSnapType,
      'lastSnapTextContent': lastSnapTextContent,
      'lastSnapJsonContent': lastSnapJsonContent,
      'lastSnapCreateTime': lastSnapCreateTime,
      'isTop': isTop,
    };
  }
}
