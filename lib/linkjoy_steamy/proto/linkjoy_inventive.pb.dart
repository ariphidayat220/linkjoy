import 'dart:core' as $core;

import 'package:linkjoy/linkjoy_steamy/proto/linkjoy_access_courage.dart';
import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'linkjoy_convict.pb.dart' as $4;
import 'linkjoy_inventive.pbenum.dart';
import 'object.pb.dart' as $2;

export 'linkjoy_inventive.pbenum.dart';

class LiveCreateReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
    const $core.bool.fromEnvironment('protobuf.omit_message_names')
        ? ''
        : 'LiveCreateReq',
    package: $pb.PackageName(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : pP.linkjoyLatterInventive(),
    ),
    createEmptyInstance: create,
  )..hasRequiredFields = false;

  LiveCreateReq._() : super();

  factory LiveCreateReq() => create();

  factory LiveCreateReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory LiveCreateReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  LiveCreateReq clone() => LiveCreateReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  LiveCreateReq copyWith(void Function(LiveCreateReq) updates) =>
      super.copyWith((message) => updates(message as LiveCreateReq))
          as LiveCreateReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LiveCreateReq create() => LiveCreateReq._();

  LiveCreateReq createEmptyInstance() => create();

  static $pb.PbList<LiveCreateReq> createRepeated() =>
      $pb.PbList<LiveCreateReq>();

  @$core.pragma('dart2js:noInline')
  static LiveCreateReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LiveCreateReq>(create);
  static LiveCreateReq? _defaultInstance;
}

class LiveCreateRsp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'LiveCreateRsp',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.linkjoyLatterInventive(),
          ),
          createEmptyInstance: create,
        )
        ..a<$core.int>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'code',
          $pb.PbFieldType.OU3,
        )
        ..a<$fixnum.Int64>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'liveId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..aOS(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'token',
        )
        ..a<$core.int>(
          4,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'snapshotInterval',
          $pb.PbFieldType.OU3,
        )
        ..hasRequiredFields = false;

  LiveCreateRsp._() : super();

  factory LiveCreateRsp({
    $core.int? code,
    $fixnum.Int64? liveId,
    $core.String? token,
    $core.int? snapshotInterval,
  }) {
    final _result = create();
    if (code != null) {
      _result.code = code;
    }
    if (liveId != null) {
      _result.liveId = liveId;
    }
    if (token != null) {
      _result.token = token;
    }
    if (snapshotInterval != null) {
      _result.snapshotInterval = snapshotInterval;
    }
    return _result;
  }

  factory LiveCreateRsp.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory LiveCreateRsp.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  LiveCreateRsp clone() => LiveCreateRsp()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  LiveCreateRsp copyWith(void Function(LiveCreateRsp) updates) =>
      super.copyWith((message) => updates(message as LiveCreateRsp))
          as LiveCreateRsp;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LiveCreateRsp create() => LiveCreateRsp._();

  LiveCreateRsp createEmptyInstance() => create();

  static $pb.PbList<LiveCreateRsp> createRepeated() =>
      $pb.PbList<LiveCreateRsp>();

  @$core.pragma('dart2js:noInline')
  static LiveCreateRsp getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LiveCreateRsp>(create);
  static LiveCreateRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get code => $_getIZ(0);

  @$pb.TagNumber(1)
  set code($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);

  @$pb.TagNumber(1)
  void clearCode() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get liveId => $_getI64(1);

  @$pb.TagNumber(2)
  set liveId($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasLiveId() => $_has(1);

  @$pb.TagNumber(2)
  void clearLiveId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get token => $_getSZ(2);

  @$pb.TagNumber(3)
  set token($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasToken() => $_has(2);

  @$pb.TagNumber(3)
  void clearToken() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get snapshotInterval => $_getIZ(3);

  @$pb.TagNumber(4)
  set snapshotInterval($core.int v) {
    $_setUnsignedInt32(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasSnapshotInterval() => $_has(3);

  @$pb.TagNumber(4)
  void clearSnapshotInterval() => clearField(4);
}

class LiveSuggestPsh extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'LiveSuggestPsh',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.linkjoyLatterInventive(),
          ),
          createEmptyInstance: create,
        )
        ..aOM<LiveInfo>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'live',
          subBuilder: LiveInfo.create,
        )
        ..hasRequiredFields = false;

  LiveSuggestPsh._() : super();

  factory LiveSuggestPsh({LiveInfo? live}) {
    final _result = create();
    if (live != null) {
      _result.live = live;
    }
    return _result;
  }

  factory LiveSuggestPsh.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory LiveSuggestPsh.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  LiveSuggestPsh clone() => LiveSuggestPsh()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  LiveSuggestPsh copyWith(void Function(LiveSuggestPsh) updates) =>
      super.copyWith((message) => updates(message as LiveSuggestPsh))
          as LiveSuggestPsh;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LiveSuggestPsh create() => LiveSuggestPsh._();

  LiveSuggestPsh createEmptyInstance() => create();

  static $pb.PbList<LiveSuggestPsh> createRepeated() =>
      $pb.PbList<LiveSuggestPsh>();

  @$core.pragma('dart2js:noInline')
  static LiveSuggestPsh getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LiveSuggestPsh>(create);
  static LiveSuggestPsh? _defaultInstance;

  @$pb.TagNumber(1)
  LiveInfo get live => $_getN(0);

  @$pb.TagNumber(1)
  set live(LiveInfo v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasLive() => $_has(0);

  @$pb.TagNumber(1)
  void clearLive() => clearField(1);

  @$pb.TagNumber(1)
  LiveInfo ensureLive() => $_ensure(0);
}

class AnchorInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'AnchorInfo',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.linkjoyLatterInventive(),
          ),
          createEmptyInstance: create,
        )
        ..a<$fixnum.Int64>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'uid',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..aOS(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'nickName',
        )
        ..aOS(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'avatarUrl',
        )
        ..aOS(
          4,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'ucode',
        )
        ..a<$core.int>(
          5,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'chatPrice',
          $pb.PbFieldType.OU3,
        )
        ..a<$core.int>(
          6,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'level',
          $pb.PbFieldType.OU3,
        )
        ..a<$core.int>(
          7,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'relation',
          $pb.PbFieldType.OU3,
        )
        ..a<$core.int>(
          8,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'temp',
          $pb.PbFieldType.OU3,
        )
        ..aOM<$2.Country>(
          9,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'country',
          subBuilder: $2.Country.create,
        )
        ..hasRequiredFields = false;

  AnchorInfo._() : super();

  factory AnchorInfo({
    $fixnum.Int64? uid,
    $core.String? nickName,
    $core.String? avatarUrl,
    $core.String? ucode,
    $core.int? chatPrice,
    $core.int? level,
    $core.int? relation,
    $core.int? temp,
    $2.Country? country,
  }) {
    final _result = create();
    if (uid != null) {
      _result.uid = uid;
    }
    if (nickName != null) {
      _result.nickName = nickName;
    }
    if (avatarUrl != null) {
      _result.avatarUrl = avatarUrl;
    }
    if (ucode != null) {
      _result.ucode = ucode;
    }
    if (chatPrice != null) {
      _result.chatPrice = chatPrice;
    }
    if (level != null) {
      _result.level = level;
    }
    if (relation != null) {
      _result.relation = relation;
    }
    if (temp != null) {
      _result.temp = temp;
    }
    if (country != null) {
      _result.country = country;
    }
    return _result;
  }

  factory AnchorInfo.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory AnchorInfo.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  AnchorInfo clone() => AnchorInfo()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  AnchorInfo copyWith(void Function(AnchorInfo) updates) =>
      super.copyWith((message) => updates(message as AnchorInfo)) as AnchorInfo;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AnchorInfo create() => AnchorInfo._();

  AnchorInfo createEmptyInstance() => create();

  static $pb.PbList<AnchorInfo> createRepeated() => $pb.PbList<AnchorInfo>();

  @$core.pragma('dart2js:noInline')
  static AnchorInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AnchorInfo>(create);
  static AnchorInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get uid => $_getI64(0);

  @$pb.TagNumber(1)
  set uid($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);

  @$pb.TagNumber(1)
  void clearUid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get nickName => $_getSZ(1);

  @$pb.TagNumber(2)
  set nickName($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasNickName() => $_has(1);

  @$pb.TagNumber(2)
  void clearNickName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get avatarUrl => $_getSZ(2);

  @$pb.TagNumber(3)
  set avatarUrl($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasAvatarUrl() => $_has(2);

  @$pb.TagNumber(3)
  void clearAvatarUrl() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get ucode => $_getSZ(3);

  @$pb.TagNumber(4)
  set ucode($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasUcode() => $_has(3);

  @$pb.TagNumber(4)
  void clearUcode() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get chatPrice => $_getIZ(4);

  @$pb.TagNumber(5)
  set chatPrice($core.int v) {
    $_setUnsignedInt32(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasChatPrice() => $_has(4);

  @$pb.TagNumber(5)
  void clearChatPrice() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get level => $_getIZ(5);

  @$pb.TagNumber(6)
  set level($core.int v) {
    $_setUnsignedInt32(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasLevel() => $_has(5);

  @$pb.TagNumber(6)
  void clearLevel() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get relation => $_getIZ(6);

  @$pb.TagNumber(7)
  set relation($core.int v) {
    $_setUnsignedInt32(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasRelation() => $_has(6);

  @$pb.TagNumber(7)
  void clearRelation() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get temp => $_getIZ(7);

  @$pb.TagNumber(8)
  set temp($core.int v) {
    $_setUnsignedInt32(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasTemp() => $_has(7);

  @$pb.TagNumber(8)
  void clearTemp() => clearField(8);

  @$pb.TagNumber(9)
  $2.Country get country => $_getN(8);

  @$pb.TagNumber(9)
  set country($2.Country v) {
    setField(9, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasCountry() => $_has(8);

  @$pb.TagNumber(9)
  void clearCountry() => clearField(9);

  @$pb.TagNumber(9)
  $2.Country ensureCountry() => $_ensure(8);
}

class UserInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'UserInfo',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.linkjoyLatterInventive(),
          ),
          createEmptyInstance: create,
        )
        ..a<$fixnum.Int64>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'uid',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..aOS(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'nickName',
        )
        ..aOS(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'avatarUrl',
        )
        ..a<$core.int>(
          4,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'coin',
          $pb.PbFieldType.OU3,
        )
        ..a<$core.int>(
          5,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'coinFake',
          $pb.PbFieldType.OU3,
        )
        ..a<$core.int>(
          6,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'type',
          $pb.PbFieldType.OU3,
        )
        ..a<$core.int>(
          7,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'level',
          $pb.PbFieldType.OU3,
        )
        ..a<$core.int>(
          8,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'vip',
          $pb.PbFieldType.OU3,
        )
        ..hasRequiredFields = false;

  UserInfo._() : super();

  factory UserInfo({
    $fixnum.Int64? uid,
    $core.String? nickName,
    $core.String? avatarUrl,
    $core.int? coin,
    $core.int? coinFake,
    $core.int? type,
    $core.int? level,
    $core.int? vip,
  }) {
    final _result = create();
    if (uid != null) {
      _result.uid = uid;
    }
    if (nickName != null) {
      _result.nickName = nickName;
    }
    if (avatarUrl != null) {
      _result.avatarUrl = avatarUrl;
    }
    if (coin != null) {
      _result.coin = coin;
    }
    if (coinFake != null) {
      _result.coinFake = coinFake;
    }
    if (type != null) {
      _result.type = type;
    }
    if (level != null) {
      _result.level = level;
    }
    if (vip != null) {
      _result.vip = vip;
    }
    return _result;
  }

  factory UserInfo.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory UserInfo.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  UserInfo clone() => UserInfo()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  UserInfo copyWith(void Function(UserInfo) updates) =>
      super.copyWith((message) => updates(message as UserInfo)) as UserInfo;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserInfo create() => UserInfo._();

  UserInfo createEmptyInstance() => create();

  static $pb.PbList<UserInfo> createRepeated() => $pb.PbList<UserInfo>();

  @$core.pragma('dart2js:noInline')
  static UserInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserInfo>(create);
  static UserInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get uid => $_getI64(0);

  @$pb.TagNumber(1)
  set uid($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);

  @$pb.TagNumber(1)
  void clearUid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get nickName => $_getSZ(1);

  @$pb.TagNumber(2)
  set nickName($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasNickName() => $_has(1);

  @$pb.TagNumber(2)
  void clearNickName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get avatarUrl => $_getSZ(2);

  @$pb.TagNumber(3)
  set avatarUrl($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasAvatarUrl() => $_has(2);

  @$pb.TagNumber(3)
  void clearAvatarUrl() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get coin => $_getIZ(3);

  @$pb.TagNumber(4)
  set coin($core.int v) {
    $_setUnsignedInt32(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasCoin() => $_has(3);

  @$pb.TagNumber(4)
  void clearCoin() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get coinFake => $_getIZ(4);

  @$pb.TagNumber(5)
  set coinFake($core.int v) {
    $_setUnsignedInt32(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasCoinFake() => $_has(4);

  @$pb.TagNumber(5)
  void clearCoinFake() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get type => $_getIZ(5);

  @$pb.TagNumber(6)
  set type($core.int v) {
    $_setUnsignedInt32(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasType() => $_has(5);

  @$pb.TagNumber(6)
  void clearType() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get level => $_getIZ(6);

  @$pb.TagNumber(7)
  set level($core.int v) {
    $_setUnsignedInt32(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasLevel() => $_has(6);

  @$pb.TagNumber(7)
  void clearLevel() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get vip => $_getIZ(7);

  @$pb.TagNumber(8)
  set vip($core.int v) {
    $_setUnsignedInt32(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasVip() => $_has(7);

  @$pb.TagNumber(8)
  void clearVip() => clearField(8);
}

class Gift extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'Gift',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.linkjoyLatterInventive(),
          ),
          createEmptyInstance: create,
        )
        ..a<$fixnum.Int64>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'id',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..aOS(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'name',
        )
        ..aOS(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'icon',
        )
        ..a<$core.int>(
          4,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'price',
          $pb.PbFieldType.OU3,
        )
        ..a<$core.int>(
          5,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'value',
          $pb.PbFieldType.OU3,
        )
        ..a<$core.int>(
          6,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'minDuration',
          $pb.PbFieldType.OU3,
        )
        ..a<$core.int>(
          7,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'maxDuration',
          $pb.PbFieldType.OU3,
        )
        ..a<$core.int>(
          8,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'animationType',
          $pb.PbFieldType.OU3,
        )
        ..aOS(
          9,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'animationUrl',
        )
        ..hasRequiredFields = false;

  Gift._() : super();

  factory Gift({
    $fixnum.Int64? id,
    $core.String? name,
    $core.String? icon,
    $core.int? price,
    $core.int? value,
    $core.int? minDuration,
    $core.int? maxDuration,
    $core.int? animationType,
    $core.String? animationUrl,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    if (icon != null) {
      _result.icon = icon;
    }
    if (price != null) {
      _result.price = price;
    }
    if (value != null) {
      _result.value = value;
    }
    if (minDuration != null) {
      _result.minDuration = minDuration;
    }
    if (maxDuration != null) {
      _result.maxDuration = maxDuration;
    }
    if (animationType != null) {
      _result.animationType = animationType;
    }
    if (animationUrl != null) {
      _result.animationUrl = animationUrl;
    }
    return _result;
  }

  factory Gift.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory Gift.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  Gift clone() => Gift()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  Gift copyWith(void Function(Gift) updates) =>
      super.copyWith((message) => updates(message as Gift)) as Gift;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Gift create() => Gift._();

  Gift createEmptyInstance() => create();

  static $pb.PbList<Gift> createRepeated() => $pb.PbList<Gift>();

  @$core.pragma('dart2js:noInline')
  static Gift getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Gift>(create);
  static Gift? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);

  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);

  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);

  @$pb.TagNumber(2)
  set name($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);

  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get icon => $_getSZ(2);

  @$pb.TagNumber(3)
  set icon($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasIcon() => $_has(2);

  @$pb.TagNumber(3)
  void clearIcon() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get price => $_getIZ(3);

  @$pb.TagNumber(4)
  set price($core.int v) {
    $_setUnsignedInt32(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasPrice() => $_has(3);

  @$pb.TagNumber(4)
  void clearPrice() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get value => $_getIZ(4);

  @$pb.TagNumber(5)
  set value($core.int v) {
    $_setUnsignedInt32(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasValue() => $_has(4);

  @$pb.TagNumber(5)
  void clearValue() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get minDuration => $_getIZ(5);

  @$pb.TagNumber(6)
  set minDuration($core.int v) {
    $_setUnsignedInt32(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasMinDuration() => $_has(5);

  @$pb.TagNumber(6)
  void clearMinDuration() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get maxDuration => $_getIZ(6);

  @$pb.TagNumber(7)
  set maxDuration($core.int v) {
    $_setUnsignedInt32(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasMaxDuration() => $_has(6);

  @$pb.TagNumber(7)
  void clearMaxDuration() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get animationType => $_getIZ(7);

  @$pb.TagNumber(8)
  set animationType($core.int v) {
    $_setUnsignedInt32(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasAnimationType() => $_has(7);

  @$pb.TagNumber(8)
  void clearAnimationType() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get animationUrl => $_getSZ(8);

  @$pb.TagNumber(9)
  set animationUrl($core.String v) {
    $_setString(8, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasAnimationUrl() => $_has(8);

  @$pb.TagNumber(9)
  void clearAnimationUrl() => clearField(9);
}

class EnterLiveReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'EnterLiveReq',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.linkjoyLatterInventive(),
          ),
          createEmptyInstance: create,
        )
        ..a<$fixnum.Int64>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'liveId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$fixnum.Int64>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'anchorUid',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$fixnum.Int64>(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'videoId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..hasRequiredFields = false;

  EnterLiveReq._() : super();

  factory EnterLiveReq({
    $fixnum.Int64? liveId,
    $fixnum.Int64? anchorUid,
    $fixnum.Int64? videoId,
  }) {
    final _result = create();
    if (liveId != null) {
      _result.liveId = liveId;
    }
    if (anchorUid != null) {
      _result.anchorUid = anchorUid;
    }
    if (videoId != null) {
      _result.videoId = videoId;
    }
    return _result;
  }

  factory EnterLiveReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory EnterLiveReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  EnterLiveReq clone() => EnterLiveReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  EnterLiveReq copyWith(void Function(EnterLiveReq) updates) =>
      super.copyWith((message) => updates(message as EnterLiveReq))
          as EnterLiveReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EnterLiveReq create() => EnterLiveReq._();

  EnterLiveReq createEmptyInstance() => create();

  static $pb.PbList<EnterLiveReq> createRepeated() =>
      $pb.PbList<EnterLiveReq>();

  @$core.pragma('dart2js:noInline')
  static EnterLiveReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EnterLiveReq>(create);
  static EnterLiveReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get liveId => $_getI64(0);

  @$pb.TagNumber(1)
  set liveId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasLiveId() => $_has(0);

  @$pb.TagNumber(1)
  void clearLiveId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get anchorUid => $_getI64(1);

  @$pb.TagNumber(2)
  set anchorUid($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasAnchorUid() => $_has(1);

  @$pb.TagNumber(2)
  void clearAnchorUid() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get videoId => $_getI64(2);

  @$pb.TagNumber(3)
  set videoId($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasVideoId() => $_has(2);

  @$pb.TagNumber(3)
  void clearVideoId() => clearField(3);
}

class EnterLiveReportReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'EnterLiveReportReq',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.linkjoyLatterInventive(),
          ),
          createEmptyInstance: create,
        )
        ..a<$fixnum.Int64>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'liveId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$fixnum.Int64>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'videoId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$core.int>(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'code',
          $pb.PbFieldType.OU3,
        )
        ..a<$core.int>(
          4,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'cost',
          $pb.PbFieldType.OU3,
        )
        ..hasRequiredFields = false;

  EnterLiveReportReq._() : super();

  factory EnterLiveReportReq({
    $fixnum.Int64? liveId,
    $fixnum.Int64? videoId,
    $core.int? code,
    $core.int? cost,
  }) {
    final _result = create();
    if (liveId != null) {
      _result.liveId = liveId;
    }
    if (videoId != null) {
      _result.videoId = videoId;
    }
    if (code != null) {
      _result.code = code;
    }
    if (cost != null) {
      _result.cost = cost;
    }
    return _result;
  }

  factory EnterLiveReportReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory EnterLiveReportReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  EnterLiveReportReq clone() => EnterLiveReportReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  EnterLiveReportReq copyWith(void Function(EnterLiveReportReq) updates) =>
      super.copyWith((message) => updates(message as EnterLiveReportReq))
          as EnterLiveReportReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EnterLiveReportReq create() => EnterLiveReportReq._();

  EnterLiveReportReq createEmptyInstance() => create();

  static $pb.PbList<EnterLiveReportReq> createRepeated() =>
      $pb.PbList<EnterLiveReportReq>();

  @$core.pragma('dart2js:noInline')
  static EnterLiveReportReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EnterLiveReportReq>(create);
  static EnterLiveReportReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get liveId => $_getI64(0);

  @$pb.TagNumber(1)
  set liveId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasLiveId() => $_has(0);

  @$pb.TagNumber(1)
  void clearLiveId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get videoId => $_getI64(1);

  @$pb.TagNumber(2)
  set videoId($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasVideoId() => $_has(1);

  @$pb.TagNumber(2)
  void clearVideoId() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get code => $_getIZ(2);

  @$pb.TagNumber(3)
  set code($core.int v) {
    $_setUnsignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasCode() => $_has(2);

  @$pb.TagNumber(3)
  void clearCode() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get cost => $_getIZ(3);

  @$pb.TagNumber(4)
  set cost($core.int v) {
    $_setUnsignedInt32(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasCost() => $_has(3);

  @$pb.TagNumber(4)
  void clearCost() => clearField(4);
}

class EnterLiveRsp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'EnterLiveRsp',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.linkjoyLatterInventive(),
          ),
          createEmptyInstance: create,
        )
        ..a<$core.int>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'code',
          $pb.PbFieldType.OU3,
        )
        ..aOS(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'token',
        )
        ..aOM<AnchorInfo>(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'anchorInfo',
          protoName: 'anchorInfo',
          subBuilder: AnchorInfo.create,
        )
        ..pc<LiveFeed>(
          4,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'feeds',
          $pb.PbFieldType.PM,
          subBuilder: LiveFeed.create,
        )
        ..a<$core.int>(
          5,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'like',
          $pb.PbFieldType.OU3,
        )
        ..a<$core.int>(
          6,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'giftCount',
          $pb.PbFieldType.OU3,
        )
        ..a<$core.int>(
          7,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'giftCoin',
          $pb.PbFieldType.OU3,
        )
        ..a<$core.int>(
          8,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'visit',
          $pb.PbFieldType.OU3,
        )
        ..aOM<CallToastPops>(
          9,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'callToastPops',
          subBuilder: CallToastPops.create,
        )
        ..a<$core.int>(
          10,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'status',
          $pb.PbFieldType.OU3,
        )
        ..a<$fixnum.Int64>(
          11,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'createTime',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$core.int>(
          12,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'pay',
          $pb.PbFieldType.OU3,
        )
        ..aOS(
          13,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'video',
        )
        ..aOM<LivePkPsh>(
          14,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'pk',
          subBuilder: LivePkPsh.create,
        )
        ..pc<LivePkFeedPsh>(
          15,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'pkFeed',
          $pb.PbFieldType.PM,
          protoName: 'pkFeed',
          subBuilder: LivePkFeedPsh.create,
        )
        ..hasRequiredFields = false;

  EnterLiveRsp._() : super();

  factory EnterLiveRsp({
    $core.int? code,
    $core.String? token,
    AnchorInfo? anchorInfo,
    $core.Iterable<LiveFeed>? feeds,
    $core.int? like,
    $core.int? giftCount,
    $core.int? giftCoin,
    $core.int? visit,
    CallToastPops? callToastPops,
    $core.int? status,
    $fixnum.Int64? createTime,
    $core.int? pay,
    $core.String? video,
    LivePkPsh? pk,
    $core.Iterable<LivePkFeedPsh>? pkFeed,
  }) {
    final _result = create();
    if (code != null) {
      _result.code = code;
    }
    if (token != null) {
      _result.token = token;
    }
    if (anchorInfo != null) {
      _result.anchorInfo = anchorInfo;
    }
    if (feeds != null) {
      _result.feeds.addAll(feeds);
    }
    if (like != null) {
      _result.like = like;
    }
    if (giftCount != null) {
      _result.giftCount = giftCount;
    }
    if (giftCoin != null) {
      _result.giftCoin = giftCoin;
    }
    if (visit != null) {
      _result.visit = visit;
    }
    if (callToastPops != null) {
      _result.callToastPops = callToastPops;
    }
    if (status != null) {
      _result.status = status;
    }
    if (createTime != null) {
      _result.createTime = createTime;
    }
    if (pay != null) {
      _result.pay = pay;
    }
    if (video != null) {
      _result.video = video;
    }
    if (pk != null) {
      _result.pk = pk;
    }
    if (pkFeed != null) {
      _result.pkFeed.addAll(pkFeed);
    }
    return _result;
  }

  factory EnterLiveRsp.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory EnterLiveRsp.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  EnterLiveRsp clone() => EnterLiveRsp()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  EnterLiveRsp copyWith(void Function(EnterLiveRsp) updates) =>
      super.copyWith((message) => updates(message as EnterLiveRsp))
          as EnterLiveRsp;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EnterLiveRsp create() => EnterLiveRsp._();

  EnterLiveRsp createEmptyInstance() => create();

  static $pb.PbList<EnterLiveRsp> createRepeated() =>
      $pb.PbList<EnterLiveRsp>();

  @$core.pragma('dart2js:noInline')
  static EnterLiveRsp getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EnterLiveRsp>(create);
  static EnterLiveRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get code => $_getIZ(0);

  @$pb.TagNumber(1)
  set code($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);

  @$pb.TagNumber(1)
  void clearCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get token => $_getSZ(1);

  @$pb.TagNumber(2)
  set token($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasToken() => $_has(1);

  @$pb.TagNumber(2)
  void clearToken() => clearField(2);

  @$pb.TagNumber(3)
  AnchorInfo get anchorInfo => $_getN(2);

  @$pb.TagNumber(3)
  set anchorInfo(AnchorInfo v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasAnchorInfo() => $_has(2);

  @$pb.TagNumber(3)
  void clearAnchorInfo() => clearField(3);

  @$pb.TagNumber(3)
  AnchorInfo ensureAnchorInfo() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.List<LiveFeed> get feeds => $_getList(3);

  @$pb.TagNumber(5)
  $core.int get like => $_getIZ(4);

  @$pb.TagNumber(5)
  set like($core.int v) {
    $_setUnsignedInt32(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasLike() => $_has(4);

  @$pb.TagNumber(5)
  void clearLike() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get giftCount => $_getIZ(5);

  @$pb.TagNumber(6)
  set giftCount($core.int v) {
    $_setUnsignedInt32(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasGiftCount() => $_has(5);

  @$pb.TagNumber(6)
  void clearGiftCount() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get giftCoin => $_getIZ(6);

  @$pb.TagNumber(7)
  set giftCoin($core.int v) {
    $_setUnsignedInt32(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasGiftCoin() => $_has(6);

  @$pb.TagNumber(7)
  void clearGiftCoin() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get visit => $_getIZ(7);

  @$pb.TagNumber(8)
  set visit($core.int v) {
    $_setUnsignedInt32(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasVisit() => $_has(7);

  @$pb.TagNumber(8)
  void clearVisit() => clearField(8);

  @$pb.TagNumber(9)
  CallToastPops get callToastPops => $_getN(8);

  @$pb.TagNumber(9)
  set callToastPops(CallToastPops v) {
    setField(9, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasCallToastPops() => $_has(8);

  @$pb.TagNumber(9)
  void clearCallToastPops() => clearField(9);

  @$pb.TagNumber(9)
  CallToastPops ensureCallToastPops() => $_ensure(8);

  @$pb.TagNumber(10)
  $core.int get status => $_getIZ(9);

  @$pb.TagNumber(10)
  set status($core.int v) {
    $_setUnsignedInt32(9, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasStatus() => $_has(9);

  @$pb.TagNumber(10)
  void clearStatus() => clearField(10);

  @$pb.TagNumber(11)
  $fixnum.Int64 get createTime => $_getI64(10);

  @$pb.TagNumber(11)
  set createTime($fixnum.Int64 v) {
    $_setInt64(10, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasCreateTime() => $_has(10);

  @$pb.TagNumber(11)
  void clearCreateTime() => clearField(11);

  @$pb.TagNumber(12)
  $core.int get pay => $_getIZ(11);

  @$pb.TagNumber(12)
  set pay($core.int v) {
    $_setUnsignedInt32(11, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasPay() => $_has(11);

  @$pb.TagNumber(12)
  void clearPay() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get video => $_getSZ(12);

  @$pb.TagNumber(13)
  set video($core.String v) {
    $_setString(12, v);
  }

  @$pb.TagNumber(13)
  $core.bool hasVideo() => $_has(12);

  @$pb.TagNumber(13)
  void clearVideo() => clearField(13);

  @$pb.TagNumber(14)
  LivePkPsh get pk => $_getN(13);

  @$pb.TagNumber(14)
  set pk(LivePkPsh v) {
    setField(14, v);
  }

  @$pb.TagNumber(14)
  $core.bool hasPk() => $_has(13);

  @$pb.TagNumber(14)
  void clearPk() => clearField(14);

  @$pb.TagNumber(14)
  LivePkPsh ensurePk() => $_ensure(13);

  @$pb.TagNumber(15)
  $core.List<LivePkFeedPsh> get pkFeed => $_getList(14);
}

class CallToastPops extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'CallToastPops',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.linkjoyLatterInventive(),
          ),
          createEmptyInstance: create,
        )
        ..a<$core.int>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'firstDelay',
          $pb.PbFieldType.OU3,
        )
        ..a<$core.int>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'delay',
          $pb.PbFieldType.OU3,
        )
        ..a<$core.int>(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'delayRandom',
          $pb.PbFieldType.OU3,
        )
        ..hasRequiredFields = false;

  CallToastPops._() : super();

  factory CallToastPops({
    $core.int? firstDelay,
    $core.int? delay,
    $core.int? delayRandom,
  }) {
    final _result = create();
    if (firstDelay != null) {
      _result.firstDelay = firstDelay;
    }
    if (delay != null) {
      _result.delay = delay;
    }
    if (delayRandom != null) {
      _result.delayRandom = delayRandom;
    }
    return _result;
  }

  factory CallToastPops.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory CallToastPops.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  CallToastPops clone() => CallToastPops()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  CallToastPops copyWith(void Function(CallToastPops) updates) =>
      super.copyWith((message) => updates(message as CallToastPops))
          as CallToastPops;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CallToastPops create() => CallToastPops._();

  CallToastPops createEmptyInstance() => create();

  static $pb.PbList<CallToastPops> createRepeated() =>
      $pb.PbList<CallToastPops>();

  @$core.pragma('dart2js:noInline')
  static CallToastPops getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CallToastPops>(create);
  static CallToastPops? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get firstDelay => $_getIZ(0);

  @$pb.TagNumber(1)
  set firstDelay($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFirstDelay() => $_has(0);

  @$pb.TagNumber(1)
  void clearFirstDelay() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get delay => $_getIZ(1);

  @$pb.TagNumber(2)
  set delay($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDelay() => $_has(1);

  @$pb.TagNumber(2)
  void clearDelay() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get delayRandom => $_getIZ(2);

  @$pb.TagNumber(3)
  set delayRandom($core.int v) {
    $_setUnsignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasDelayRandom() => $_has(2);

  @$pb.TagNumber(3)
  void clearDelayRandom() => clearField(3);
}

class LiveLeaveReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'LiveLeaveReq',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.linkjoyLatterInventive(),
          ),
          createEmptyInstance: create,
        )
        ..a<$fixnum.Int64>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'liveId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..aOM<$4.VideoPlaySummary>(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'summary',
          subBuilder: $4.VideoPlaySummary.create,
        )
        ..hasRequiredFields = false;

  LiveLeaveReq._() : super();

  factory LiveLeaveReq({$fixnum.Int64? liveId, $4.VideoPlaySummary? summary}) {
    final _result = create();
    if (liveId != null) {
      _result.liveId = liveId;
    }
    if (summary != null) {
      _result.summary = summary;
    }
    return _result;
  }

  factory LiveLeaveReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory LiveLeaveReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  LiveLeaveReq clone() => LiveLeaveReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  LiveLeaveReq copyWith(void Function(LiveLeaveReq) updates) =>
      super.copyWith((message) => updates(message as LiveLeaveReq))
          as LiveLeaveReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LiveLeaveReq create() => LiveLeaveReq._();

  LiveLeaveReq createEmptyInstance() => create();

  static $pb.PbList<LiveLeaveReq> createRepeated() =>
      $pb.PbList<LiveLeaveReq>();

  @$core.pragma('dart2js:noInline')
  static LiveLeaveReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LiveLeaveReq>(create);
  static LiveLeaveReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get liveId => $_getI64(0);

  @$pb.TagNumber(1)
  set liveId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasLiveId() => $_has(0);

  @$pb.TagNumber(1)
  void clearLiveId() => clearField(1);

  @$pb.TagNumber(3)
  $4.VideoPlaySummary get summary => $_getN(1);

  @$pb.TagNumber(3)
  set summary($4.VideoPlaySummary v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasSummary() => $_has(1);

  @$pb.TagNumber(3)
  void clearSummary() => clearField(3);

  @$pb.TagNumber(3)
  $4.VideoPlaySummary ensureSummary() => $_ensure(1);
}

class LivePauseReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'LivePauseReq',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.linkjoyLatterInventive(),
          ),
          createEmptyInstance: create,
        )
        ..a<$fixnum.Int64>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'liveId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..hasRequiredFields = false;

  LivePauseReq._() : super();

  factory LivePauseReq({$fixnum.Int64? liveId}) {
    final _result = create();
    if (liveId != null) {
      _result.liveId = liveId;
    }
    return _result;
  }

  factory LivePauseReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory LivePauseReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  LivePauseReq clone() => LivePauseReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  LivePauseReq copyWith(void Function(LivePauseReq) updates) =>
      super.copyWith((message) => updates(message as LivePauseReq))
          as LivePauseReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LivePauseReq create() => LivePauseReq._();

  LivePauseReq createEmptyInstance() => create();

  static $pb.PbList<LivePauseReq> createRepeated() =>
      $pb.PbList<LivePauseReq>();

  @$core.pragma('dart2js:noInline')
  static LivePauseReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LivePauseReq>(create);
  static LivePauseReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get liveId => $_getI64(0);

  @$pb.TagNumber(1)
  set liveId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasLiveId() => $_has(0);

  @$pb.TagNumber(1)
  void clearLiveId() => clearField(1);
}

class LiveResumeReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'LiveResumeReq',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.linkjoyLatterInventive(),
          ),
          createEmptyInstance: create,
        )
        ..a<$fixnum.Int64>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'liveId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..hasRequiredFields = false;

  LiveResumeReq._() : super();

  factory LiveResumeReq({$fixnum.Int64? liveId}) {
    final _result = create();
    if (liveId != null) {
      _result.liveId = liveId;
    }
    return _result;
  }

  factory LiveResumeReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory LiveResumeReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  LiveResumeReq clone() => LiveResumeReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  LiveResumeReq copyWith(void Function(LiveResumeReq) updates) =>
      super.copyWith((message) => updates(message as LiveResumeReq))
          as LiveResumeReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LiveResumeReq create() => LiveResumeReq._();

  LiveResumeReq createEmptyInstance() => create();

  static $pb.PbList<LiveResumeReq> createRepeated() =>
      $pb.PbList<LiveResumeReq>();

  @$core.pragma('dart2js:noInline')
  static LiveResumeReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LiveResumeReq>(create);
  static LiveResumeReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get liveId => $_getI64(0);

  @$pb.TagNumber(1)
  set liveId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasLiveId() => $_has(0);

  @$pb.TagNumber(1)
  void clearLiveId() => clearField(1);
}

class LiveEndReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'LiveEndReq',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.linkjoyLatterInventive(),
          ),
          createEmptyInstance: create,
        )
        ..a<$core.int>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'type',
          $pb.PbFieldType.OU3,
        )
        ..a<$fixnum.Int64>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'liveId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..hasRequiredFields = false;

  LiveEndReq._() : super();

  factory LiveEndReq({$core.int? type, $fixnum.Int64? liveId}) {
    final _result = create();
    if (type != null) {
      _result.type = type;
    }
    if (liveId != null) {
      _result.liveId = liveId;
    }
    return _result;
  }

  factory LiveEndReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory LiveEndReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  LiveEndReq clone() => LiveEndReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  LiveEndReq copyWith(void Function(LiveEndReq) updates) =>
      super.copyWith((message) => updates(message as LiveEndReq)) as LiveEndReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LiveEndReq create() => LiveEndReq._();

  LiveEndReq createEmptyInstance() => create();

  static $pb.PbList<LiveEndReq> createRepeated() => $pb.PbList<LiveEndReq>();

  @$core.pragma('dart2js:noInline')
  static LiveEndReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LiveEndReq>(create);
  static LiveEndReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get type => $_getIZ(0);

  @$pb.TagNumber(1)
  set type($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);

  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get liveId => $_getI64(1);

  @$pb.TagNumber(2)
  set liveId($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasLiveId() => $_has(1);

  @$pb.TagNumber(2)
  void clearLiveId() => clearField(2);
}

class LiveInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'LiveInfo',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.linkjoyLatterInventive(),
          ),
          createEmptyInstance: create,
        )
        ..a<$fixnum.Int64>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'liveId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$fixnum.Int64>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'uid',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..aOS(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'nickName',
        )
        ..aOS(
          4,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'avatarUrl',
        )
        ..aOS(
          5,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'countryCode',
        )
        ..aOS(
          6,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'countryFlag',
        )
        ..a<$core.int>(
          7,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'anchorLevel',
          $pb.PbFieldType.OU3,
        )
        ..a<$core.int>(
          8,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'likes',
          $pb.PbFieldType.OU3,
        )
        ..e<LiveStatus>(
          9,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'status',
          $pb.PbFieldType.OE,
          defaultOrMaker: LiveStatus.UNKNOWN,
          valueOf: LiveStatus.valueOf,
          enumValues: LiveStatus.values,
        )
        ..a<$fixnum.Int64>(
          10,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'videoId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..hasRequiredFields = false;

  LiveInfo._() : super();

  factory LiveInfo({
    $fixnum.Int64? liveId,
    $fixnum.Int64? uid,
    $core.String? nickName,
    $core.String? avatarUrl,
    $core.String? countryCode,
    $core.String? countryFlag,
    $core.int? anchorLevel,
    $core.int? likes,
    LiveStatus? status,
    $fixnum.Int64? videoId,
  }) {
    final _result = create();
    if (liveId != null) {
      _result.liveId = liveId;
    }
    if (uid != null) {
      _result.uid = uid;
    }
    if (nickName != null) {
      _result.nickName = nickName;
    }
    if (avatarUrl != null) {
      _result.avatarUrl = avatarUrl;
    }
    if (countryCode != null) {
      _result.countryCode = countryCode;
    }
    if (countryFlag != null) {
      _result.countryFlag = countryFlag;
    }
    if (anchorLevel != null) {
      _result.anchorLevel = anchorLevel;
    }
    if (likes != null) {
      _result.likes = likes;
    }
    if (status != null) {
      _result.status = status;
    }
    if (videoId != null) {
      _result.videoId = videoId;
    }
    return _result;
  }

  factory LiveInfo.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory LiveInfo.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  LiveInfo clone() => LiveInfo()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  LiveInfo copyWith(void Function(LiveInfo) updates) =>
      super.copyWith((message) => updates(message as LiveInfo)) as LiveInfo;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LiveInfo create() => LiveInfo._();

  LiveInfo createEmptyInstance() => create();

  static $pb.PbList<LiveInfo> createRepeated() => $pb.PbList<LiveInfo>();

  @$core.pragma('dart2js:noInline')
  static LiveInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LiveInfo>(create);
  static LiveInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get liveId => $_getI64(0);

  @$pb.TagNumber(1)
  set liveId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasLiveId() => $_has(0);

  @$pb.TagNumber(1)
  void clearLiveId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get uid => $_getI64(1);

  @$pb.TagNumber(2)
  set uid($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasUid() => $_has(1);

  @$pb.TagNumber(2)
  void clearUid() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get nickName => $_getSZ(2);

  @$pb.TagNumber(3)
  set nickName($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasNickName() => $_has(2);

  @$pb.TagNumber(3)
  void clearNickName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get avatarUrl => $_getSZ(3);

  @$pb.TagNumber(4)
  set avatarUrl($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasAvatarUrl() => $_has(3);

  @$pb.TagNumber(4)
  void clearAvatarUrl() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get countryCode => $_getSZ(4);

  @$pb.TagNumber(5)
  set countryCode($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasCountryCode() => $_has(4);

  @$pb.TagNumber(5)
  void clearCountryCode() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get countryFlag => $_getSZ(5);

  @$pb.TagNumber(6)
  set countryFlag($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasCountryFlag() => $_has(5);

  @$pb.TagNumber(6)
  void clearCountryFlag() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get anchorLevel => $_getIZ(6);

  @$pb.TagNumber(7)
  set anchorLevel($core.int v) {
    $_setUnsignedInt32(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasAnchorLevel() => $_has(6);

  @$pb.TagNumber(7)
  void clearAnchorLevel() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get likes => $_getIZ(7);

  @$pb.TagNumber(8)
  set likes($core.int v) {
    $_setUnsignedInt32(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasLikes() => $_has(7);

  @$pb.TagNumber(8)
  void clearLikes() => clearField(8);

  @$pb.TagNumber(9)
  LiveStatus get status => $_getN(8);

  @$pb.TagNumber(9)
  set status(LiveStatus v) {
    setField(9, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasStatus() => $_has(8);

  @$pb.TagNumber(9)
  void clearStatus() => clearField(9);

  @$pb.TagNumber(10)
  $fixnum.Int64 get videoId => $_getI64(9);

  @$pb.TagNumber(10)
  set videoId($fixnum.Int64 v) {
    $_setInt64(9, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasVideoId() => $_has(9);

  @$pb.TagNumber(10)
  void clearVideoId() => clearField(10);
}

class LiveStatusSubscribeReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'LiveStatusSubscribeReq',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.linkjoyLatterInventive(),
          ),
          createEmptyInstance: create,
        )
        ..a<$core.int>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'status',
          $pb.PbFieldType.OU3,
        )
        ..hasRequiredFields = false;

  LiveStatusSubscribeReq._() : super();

  factory LiveStatusSubscribeReq({$core.int? status}) {
    final _result = create();
    if (status != null) {
      _result.status = status;
    }
    return _result;
  }

  factory LiveStatusSubscribeReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory LiveStatusSubscribeReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  LiveStatusSubscribeReq clone() =>
      LiveStatusSubscribeReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  LiveStatusSubscribeReq copyWith(
    void Function(LiveStatusSubscribeReq) updates,
  ) =>
      super.copyWith((message) => updates(message as LiveStatusSubscribeReq))
          as LiveStatusSubscribeReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LiveStatusSubscribeReq create() => LiveStatusSubscribeReq._();

  LiveStatusSubscribeReq createEmptyInstance() => create();

  static $pb.PbList<LiveStatusSubscribeReq> createRepeated() =>
      $pb.PbList<LiveStatusSubscribeReq>();

  @$core.pragma('dart2js:noInline')
  static LiveStatusSubscribeReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LiveStatusSubscribeReq>(create);
  static LiveStatusSubscribeReq? _defaultInstance;

  @$pb.TagNumber(2)
  $core.int get status => $_getIZ(0);

  @$pb.TagNumber(2)
  set status($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(0);

  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);
}

class LiveStatusSubscribeRsp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'LiveStatusSubscribeRsp',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.linkjoyLatterInventive(),
          ),
          createEmptyInstance: create,
        )
        ..a<$core.int>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'code',
          $pb.PbFieldType.OU3,
        )
        ..pc<LiveInfo>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'lives',
          $pb.PbFieldType.PM,
          subBuilder: LiveInfo.create,
        )
        ..hasRequiredFields = false;

  LiveStatusSubscribeRsp._() : super();

  factory LiveStatusSubscribeRsp({
    $core.int? code,
    $core.Iterable<LiveInfo>? lives,
  }) {
    final _result = create();
    if (code != null) {
      _result.code = code;
    }
    if (lives != null) {
      _result.lives.addAll(lives);
    }
    return _result;
  }

  factory LiveStatusSubscribeRsp.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory LiveStatusSubscribeRsp.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  LiveStatusSubscribeRsp clone() =>
      LiveStatusSubscribeRsp()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  LiveStatusSubscribeRsp copyWith(
    void Function(LiveStatusSubscribeRsp) updates,
  ) =>
      super.copyWith((message) => updates(message as LiveStatusSubscribeRsp))
          as LiveStatusSubscribeRsp;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LiveStatusSubscribeRsp create() => LiveStatusSubscribeRsp._();

  LiveStatusSubscribeRsp createEmptyInstance() => create();

  static $pb.PbList<LiveStatusSubscribeRsp> createRepeated() =>
      $pb.PbList<LiveStatusSubscribeRsp>();

  @$core.pragma('dart2js:noInline')
  static LiveStatusSubscribeRsp getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LiveStatusSubscribeRsp>(create);
  static LiveStatusSubscribeRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get code => $_getIZ(0);

  @$pb.TagNumber(1)
  set code($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);

  @$pb.TagNumber(1)
  void clearCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<LiveInfo> get lives => $_getList(1);
}

class LiveStatusPsh extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'LiveStatusPsh',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.linkjoyLatterInventive(),
          ),
          createEmptyInstance: create,
        )
        ..aOM<LiveInfo>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'live',
          subBuilder: LiveInfo.create,
        )
        ..hasRequiredFields = false;

  LiveStatusPsh._() : super();

  factory LiveStatusPsh({LiveInfo? live}) {
    final _result = create();
    if (live != null) {
      _result.live = live;
    }
    return _result;
  }

  factory LiveStatusPsh.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory LiveStatusPsh.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  LiveStatusPsh clone() => LiveStatusPsh()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  LiveStatusPsh copyWith(void Function(LiveStatusPsh) updates) =>
      super.copyWith((message) => updates(message as LiveStatusPsh))
          as LiveStatusPsh;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LiveStatusPsh create() => LiveStatusPsh._();

  LiveStatusPsh createEmptyInstance() => create();

  static $pb.PbList<LiveStatusPsh> createRepeated() =>
      $pb.PbList<LiveStatusPsh>();

  @$core.pragma('dart2js:noInline')
  static LiveStatusPsh getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LiveStatusPsh>(create);
  static LiveStatusPsh? _defaultInstance;

  @$pb.TagNumber(1)
  LiveInfo get live => $_getN(0);

  @$pb.TagNumber(1)
  set live(LiveInfo v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasLive() => $_has(0);

  @$pb.TagNumber(1)
  void clearLive() => clearField(1);

  @$pb.TagNumber(1)
  LiveInfo ensureLive() => $_ensure(0);
}

class LiveNeedToPayPsh extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'LiveNeedToPayPsh',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.linkjoyLatterInventive(),
          ),
          createEmptyInstance: create,
        )
        ..a<$fixnum.Int64>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'liveId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..aOM<Gift>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'gift',
          subBuilder: Gift.create,
        )
        ..hasRequiredFields = false;

  LiveNeedToPayPsh._() : super();

  factory LiveNeedToPayPsh({$fixnum.Int64? liveId, Gift? gift}) {
    final _result = create();
    if (liveId != null) {
      _result.liveId = liveId;
    }
    if (gift != null) {
      _result.gift = gift;
    }
    return _result;
  }

  factory LiveNeedToPayPsh.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory LiveNeedToPayPsh.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  LiveNeedToPayPsh clone() => LiveNeedToPayPsh()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  LiveNeedToPayPsh copyWith(void Function(LiveNeedToPayPsh) updates) =>
      super.copyWith((message) => updates(message as LiveNeedToPayPsh))
          as LiveNeedToPayPsh;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LiveNeedToPayPsh create() => LiveNeedToPayPsh._();

  LiveNeedToPayPsh createEmptyInstance() => create();

  static $pb.PbList<LiveNeedToPayPsh> createRepeated() =>
      $pb.PbList<LiveNeedToPayPsh>();

  @$core.pragma('dart2js:noInline')
  static LiveNeedToPayPsh getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LiveNeedToPayPsh>(create);
  static LiveNeedToPayPsh? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get liveId => $_getI64(0);

  @$pb.TagNumber(1)
  set liveId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasLiveId() => $_has(0);

  @$pb.TagNumber(1)
  void clearLiveId() => clearField(1);

  @$pb.TagNumber(2)
  Gift get gift => $_getN(1);

  @$pb.TagNumber(2)
  set gift(Gift v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasGift() => $_has(1);

  @$pb.TagNumber(2)
  void clearGift() => clearField(2);

  @$pb.TagNumber(2)
  Gift ensureGift() => $_ensure(1);
}

class LiveBossPsh extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'LiveBossPsh',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.linkjoyLatterInventive(),
          ),
          createEmptyInstance: create,
        )
        ..a<$fixnum.Int64>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'liveId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..aOM<UserInfo>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'boss',
          subBuilder: UserInfo.create,
        )
        ..hasRequiredFields = false;

  LiveBossPsh._() : super();

  factory LiveBossPsh({$fixnum.Int64? liveId, UserInfo? boss}) {
    final _result = create();
    if (liveId != null) {
      _result.liveId = liveId;
    }
    if (boss != null) {
      _result.boss = boss;
    }
    return _result;
  }

  factory LiveBossPsh.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory LiveBossPsh.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  LiveBossPsh clone() => LiveBossPsh()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  LiveBossPsh copyWith(void Function(LiveBossPsh) updates) =>
      super.copyWith((message) => updates(message as LiveBossPsh))
          as LiveBossPsh;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LiveBossPsh create() => LiveBossPsh._();

  LiveBossPsh createEmptyInstance() => create();

  static $pb.PbList<LiveBossPsh> createRepeated() => $pb.PbList<LiveBossPsh>();

  @$core.pragma('dart2js:noInline')
  static LiveBossPsh getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LiveBossPsh>(create);
  static LiveBossPsh? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get liveId => $_getI64(0);

  @$pb.TagNumber(1)
  set liveId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasLiveId() => $_has(0);

  @$pb.TagNumber(1)
  void clearLiveId() => clearField(1);

  @$pb.TagNumber(2)
  UserInfo get boss => $_getN(1);

  @$pb.TagNumber(2)
  set boss(UserInfo v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasBoss() => $_has(1);

  @$pb.TagNumber(2)
  void clearBoss() => clearField(2);

  @$pb.TagNumber(2)
  UserInfo ensureBoss() => $_ensure(1);
}

class LiveKeepAlive extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'LiveKeepAlive',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.linkjoyLatterInventive(),
          ),
          createEmptyInstance: create,
        )
        ..a<$fixnum.Int64>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'liveId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$core.int>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'faceDetect',
          $pb.PbFieldType.OU3,
        )
        ..a<$core.int>(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'voiceDetect',
          $pb.PbFieldType.OU3,
        )
        ..hasRequiredFields = false;

  LiveKeepAlive._() : super();

  factory LiveKeepAlive({
    $fixnum.Int64? liveId,
    $core.int? faceDetect,
    $core.int? voiceDetect,
  }) {
    final _result = create();
    if (liveId != null) {
      _result.liveId = liveId;
    }
    if (faceDetect != null) {
      _result.faceDetect = faceDetect;
    }
    if (voiceDetect != null) {
      _result.voiceDetect = voiceDetect;
    }
    return _result;
  }

  factory LiveKeepAlive.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory LiveKeepAlive.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  LiveKeepAlive clone() => LiveKeepAlive()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  LiveKeepAlive copyWith(void Function(LiveKeepAlive) updates) =>
      super.copyWith((message) => updates(message as LiveKeepAlive))
          as LiveKeepAlive;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LiveKeepAlive create() => LiveKeepAlive._();

  LiveKeepAlive createEmptyInstance() => create();

  static $pb.PbList<LiveKeepAlive> createRepeated() =>
      $pb.PbList<LiveKeepAlive>();

  @$core.pragma('dart2js:noInline')
  static LiveKeepAlive getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LiveKeepAlive>(create);
  static LiveKeepAlive? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get liveId => $_getI64(0);

  @$pb.TagNumber(1)
  set liveId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasLiveId() => $_has(0);

  @$pb.TagNumber(1)
  void clearLiveId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get faceDetect => $_getIZ(1);

  @$pb.TagNumber(2)
  set faceDetect($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasFaceDetect() => $_has(1);

  @$pb.TagNumber(2)
  void clearFaceDetect() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get voiceDetect => $_getIZ(2);

  @$pb.TagNumber(3)
  set voiceDetect($core.int v) {
    $_setUnsignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasVoiceDetect() => $_has(2);

  @$pb.TagNumber(3)
  void clearVoiceDetect() => clearField(3);
}

class LiveFeedPsh extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'LiveFeedPsh',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.linkjoyLatterInventive(),
          ),
          createEmptyInstance: create,
        )
        ..a<$fixnum.Int64>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'liveId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$core.int>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'like',
          $pb.PbFieldType.OU3,
        )
        ..a<$core.int>(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'giftCount',
          $pb.PbFieldType.OU3,
        )
        ..a<$core.int>(
          4,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'giftCoin',
          $pb.PbFieldType.OU3,
        )
        ..a<$core.int>(
          5,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'visit',
          $pb.PbFieldType.OU3,
        )
        ..pc<LiveFeed>(
          6,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'liveFeeds',
          $pb.PbFieldType.PM,
          protoName: 'liveFeeds',
          subBuilder: LiveFeed.create,
        )
        ..e<LiveStatus>(
          7,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'status',
          $pb.PbFieldType.OE,
          defaultOrMaker: LiveStatus.UNKNOWN,
          valueOf: LiveStatus.valueOf,
          enumValues: LiveStatus.values,
        )
        ..a<$core.int>(
          8,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'online',
          $pb.PbFieldType.OU3,
        )
        ..hasRequiredFields = false;

  LiveFeedPsh._() : super();

  factory LiveFeedPsh({
    $fixnum.Int64? liveId,
    $core.int? like,
    $core.int? giftCount,
    $core.int? giftCoin,
    $core.int? visit,
    $core.Iterable<LiveFeed>? liveFeeds,
    LiveStatus? status,
    $core.int? online,
  }) {
    final _result = create();
    if (liveId != null) {
      _result.liveId = liveId;
    }
    if (like != null) {
      _result.like = like;
    }
    if (giftCount != null) {
      _result.giftCount = giftCount;
    }
    if (giftCoin != null) {
      _result.giftCoin = giftCoin;
    }
    if (visit != null) {
      _result.visit = visit;
    }
    if (liveFeeds != null) {
      _result.liveFeeds.addAll(liveFeeds);
    }
    if (status != null) {
      _result.status = status;
    }
    if (online != null) {
      _result.online = online;
    }
    return _result;
  }

  factory LiveFeedPsh.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory LiveFeedPsh.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  LiveFeedPsh clone() => LiveFeedPsh()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  LiveFeedPsh copyWith(void Function(LiveFeedPsh) updates) =>
      super.copyWith((message) => updates(message as LiveFeedPsh))
          as LiveFeedPsh;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LiveFeedPsh create() => LiveFeedPsh._();

  LiveFeedPsh createEmptyInstance() => create();

  static $pb.PbList<LiveFeedPsh> createRepeated() => $pb.PbList<LiveFeedPsh>();

  @$core.pragma('dart2js:noInline')
  static LiveFeedPsh getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LiveFeedPsh>(create);
  static LiveFeedPsh? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get liveId => $_getI64(0);

  @$pb.TagNumber(1)
  set liveId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasLiveId() => $_has(0);

  @$pb.TagNumber(1)
  void clearLiveId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get like => $_getIZ(1);

  @$pb.TagNumber(2)
  set like($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasLike() => $_has(1);

  @$pb.TagNumber(2)
  void clearLike() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get giftCount => $_getIZ(2);

  @$pb.TagNumber(3)
  set giftCount($core.int v) {
    $_setUnsignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasGiftCount() => $_has(2);

  @$pb.TagNumber(3)
  void clearGiftCount() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get giftCoin => $_getIZ(3);

  @$pb.TagNumber(4)
  set giftCoin($core.int v) {
    $_setUnsignedInt32(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasGiftCoin() => $_has(3);

  @$pb.TagNumber(4)
  void clearGiftCoin() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get visit => $_getIZ(4);

  @$pb.TagNumber(5)
  set visit($core.int v) {
    $_setUnsignedInt32(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasVisit() => $_has(4);

  @$pb.TagNumber(5)
  void clearVisit() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<LiveFeed> get liveFeeds => $_getList(5);

  @$pb.TagNumber(7)
  LiveStatus get status => $_getN(6);

  @$pb.TagNumber(7)
  set status(LiveStatus v) {
    setField(7, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasStatus() => $_has(6);

  @$pb.TagNumber(7)
  void clearStatus() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get online => $_getIZ(7);

  @$pb.TagNumber(8)
  set online($core.int v) {
    $_setUnsignedInt32(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasOnline() => $_has(7);

  @$pb.TagNumber(8)
  void clearOnline() => clearField(8);
}

class LiveFeed extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'LiveFeed',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.linkjoyLatterInventive(),
          ),
          createEmptyInstance: create,
        )
        ..a<$fixnum.Int64>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'liveId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..aOM<UserInfo>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'user',
          subBuilder: UserInfo.create,
        )
        ..a<$core.int>(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'type',
          $pb.PbFieldType.OU3,
        )
        ..aOS(
          4,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'content',
        )
        ..aOM<Gift>(
          5,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'gift',
          subBuilder: Gift.create,
        )
        ..hasRequiredFields = false;

  LiveFeed._() : super();

  factory LiveFeed({
    $fixnum.Int64? liveId,
    UserInfo? user,
    $core.int? type,
    $core.String? content,
    Gift? gift,
  }) {
    final _result = create();
    if (liveId != null) {
      _result.liveId = liveId;
    }
    if (user != null) {
      _result.user = user;
    }
    if (type != null) {
      _result.type = type;
    }
    if (content != null) {
      _result.content = content;
    }
    if (gift != null) {
      _result.gift = gift;
    }
    return _result;
  }

  factory LiveFeed.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory LiveFeed.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  LiveFeed clone() => LiveFeed()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  LiveFeed copyWith(void Function(LiveFeed) updates) =>
      super.copyWith((message) => updates(message as LiveFeed)) as LiveFeed;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LiveFeed create() => LiveFeed._();

  LiveFeed createEmptyInstance() => create();

  static $pb.PbList<LiveFeed> createRepeated() => $pb.PbList<LiveFeed>();

  @$core.pragma('dart2js:noInline')
  static LiveFeed getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LiveFeed>(create);
  static LiveFeed? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get liveId => $_getI64(0);

  @$pb.TagNumber(1)
  set liveId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasLiveId() => $_has(0);

  @$pb.TagNumber(1)
  void clearLiveId() => clearField(1);

  @$pb.TagNumber(2)
  UserInfo get user => $_getN(1);

  @$pb.TagNumber(2)
  set user(UserInfo v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasUser() => $_has(1);

  @$pb.TagNumber(2)
  void clearUser() => clearField(2);

  @$pb.TagNumber(2)
  UserInfo ensureUser() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.int get type => $_getIZ(2);

  @$pb.TagNumber(3)
  set type($core.int v) {
    $_setUnsignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);

  @$pb.TagNumber(3)
  void clearType() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get content => $_getSZ(3);

  @$pb.TagNumber(4)
  set content($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasContent() => $_has(3);

  @$pb.TagNumber(4)
  void clearContent() => clearField(4);

  @$pb.TagNumber(5)
  Gift get gift => $_getN(4);

  @$pb.TagNumber(5)
  set gift(Gift v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasGift() => $_has(4);

  @$pb.TagNumber(5)
  void clearGift() => clearField(5);

  @$pb.TagNumber(5)
  Gift ensureGift() => $_ensure(4);
}

class LiveGiftGiveReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'LiveGiftGiveReq',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.linkjoyLatterInventive(),
          ),
          createEmptyInstance: create,
        )
        ..a<$fixnum.Int64>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'liveId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$fixnum.Int64>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'giftId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..hasRequiredFields = false;

  LiveGiftGiveReq._() : super();

  factory LiveGiftGiveReq({$fixnum.Int64? liveId, $fixnum.Int64? giftId}) {
    final _result = create();
    if (liveId != null) {
      _result.liveId = liveId;
    }
    if (giftId != null) {
      _result.giftId = giftId;
    }
    return _result;
  }

  factory LiveGiftGiveReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory LiveGiftGiveReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  LiveGiftGiveReq clone() => LiveGiftGiveReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  LiveGiftGiveReq copyWith(void Function(LiveGiftGiveReq) updates) =>
      super.copyWith((message) => updates(message as LiveGiftGiveReq))
          as LiveGiftGiveReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LiveGiftGiveReq create() => LiveGiftGiveReq._();

  LiveGiftGiveReq createEmptyInstance() => create();

  static $pb.PbList<LiveGiftGiveReq> createRepeated() =>
      $pb.PbList<LiveGiftGiveReq>();

  @$core.pragma('dart2js:noInline')
  static LiveGiftGiveReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LiveGiftGiveReq>(create);
  static LiveGiftGiveReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get liveId => $_getI64(0);

  @$pb.TagNumber(1)
  set liveId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasLiveId() => $_has(0);

  @$pb.TagNumber(1)
  void clearLiveId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get giftId => $_getI64(1);

  @$pb.TagNumber(2)
  set giftId($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasGiftId() => $_has(1);

  @$pb.TagNumber(2)
  void clearGiftId() => clearField(2);
}

class LiveLikeReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'LiveLikeReq',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.linkjoyLatterInventive(),
          ),
          createEmptyInstance: create,
        )
        ..a<$fixnum.Int64>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'liveId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$core.int>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'likeCount',
          $pb.PbFieldType.OU3,
        )
        ..hasRequiredFields = false;

  LiveLikeReq._() : super();

  factory LiveLikeReq({$fixnum.Int64? liveId, $core.int? likeCount}) {
    final _result = create();
    if (liveId != null) {
      _result.liveId = liveId;
    }
    if (likeCount != null) {
      _result.likeCount = likeCount;
    }
    return _result;
  }

  factory LiveLikeReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory LiveLikeReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  LiveLikeReq clone() => LiveLikeReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  LiveLikeReq copyWith(void Function(LiveLikeReq) updates) =>
      super.copyWith((message) => updates(message as LiveLikeReq))
          as LiveLikeReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LiveLikeReq create() => LiveLikeReq._();

  LiveLikeReq createEmptyInstance() => create();

  static $pb.PbList<LiveLikeReq> createRepeated() => $pb.PbList<LiveLikeReq>();

  @$core.pragma('dart2js:noInline')
  static LiveLikeReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LiveLikeReq>(create);
  static LiveLikeReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get liveId => $_getI64(0);

  @$pb.TagNumber(1)
  set liveId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasLiveId() => $_has(0);

  @$pb.TagNumber(1)
  void clearLiveId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get likeCount => $_getIZ(1);

  @$pb.TagNumber(2)
  set likeCount($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasLikeCount() => $_has(1);

  @$pb.TagNumber(2)
  void clearLikeCount() => clearField(2);
}

class SendMessageReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'SendMessageReq',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.linkjoyLatterInventive(),
          ),
          createEmptyInstance: create,
        )
        ..a<$fixnum.Int64>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'liveId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..aOS(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'text',
        )
        ..hasRequiredFields = false;

  SendMessageReq._() : super();

  factory SendMessageReq({$fixnum.Int64? liveId, $core.String? text}) {
    final _result = create();
    if (liveId != null) {
      _result.liveId = liveId;
    }
    if (text != null) {
      _result.text = text;
    }
    return _result;
  }

  factory SendMessageReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory SendMessageReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  SendMessageReq clone() => SendMessageReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  SendMessageReq copyWith(void Function(SendMessageReq) updates) =>
      super.copyWith((message) => updates(message as SendMessageReq))
          as SendMessageReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SendMessageReq create() => SendMessageReq._();

  SendMessageReq createEmptyInstance() => create();

  static $pb.PbList<SendMessageReq> createRepeated() =>
      $pb.PbList<SendMessageReq>();

  @$core.pragma('dart2js:noInline')
  static SendMessageReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SendMessageReq>(create);
  static SendMessageReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get liveId => $_getI64(0);

  @$pb.TagNumber(1)
  set liveId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasLiveId() => $_has(0);

  @$pb.TagNumber(1)
  void clearLiveId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get text => $_getSZ(1);

  @$pb.TagNumber(2)
  set text($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasText() => $_has(1);

  @$pb.TagNumber(2)
  void clearText() => clearField(2);
}

class GetUserListReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'GetUserListReq',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.linkjoyLatterInventive(),
          ),
          createEmptyInstance: create,
        )
        ..a<$fixnum.Int64>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'liveId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$core.int>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'type',
          $pb.PbFieldType.OU3,
        )
        ..hasRequiredFields = false;

  GetUserListReq._() : super();

  factory GetUserListReq({$fixnum.Int64? liveId, $core.int? type}) {
    final _result = create();
    if (liveId != null) {
      _result.liveId = liveId;
    }
    if (type != null) {
      _result.type = type;
    }
    return _result;
  }

  factory GetUserListReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory GetUserListReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  GetUserListReq clone() => GetUserListReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  GetUserListReq copyWith(void Function(GetUserListReq) updates) =>
      super.copyWith((message) => updates(message as GetUserListReq))
          as GetUserListReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetUserListReq create() => GetUserListReq._();

  GetUserListReq createEmptyInstance() => create();

  static $pb.PbList<GetUserListReq> createRepeated() =>
      $pb.PbList<GetUserListReq>();

  @$core.pragma('dart2js:noInline')
  static GetUserListReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetUserListReq>(create);
  static GetUserListReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get liveId => $_getI64(0);

  @$pb.TagNumber(1)
  set liveId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasLiveId() => $_has(0);

  @$pb.TagNumber(1)
  void clearLiveId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get type => $_getIZ(1);

  @$pb.TagNumber(2)
  set type($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);

  @$pb.TagNumber(2)
  void clearType() => clearField(2);
}

class GetUserListRsp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'GetUserListRsp',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.linkjoyLatterInventive(),
          ),
          createEmptyInstance: create,
        )
        ..pc<UserInfo>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'userInfos',
          $pb.PbFieldType.PM,
          protoName: 'userInfos',
          subBuilder: UserInfo.create,
        )
        ..hasRequiredFields = false;

  GetUserListRsp._() : super();

  factory GetUserListRsp({$core.Iterable<UserInfo>? userInfos}) {
    final _result = create();
    if (userInfos != null) {
      _result.userInfos.addAll(userInfos);
    }
    return _result;
  }

  factory GetUserListRsp.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory GetUserListRsp.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  GetUserListRsp clone() => GetUserListRsp()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  GetUserListRsp copyWith(void Function(GetUserListRsp) updates) =>
      super.copyWith((message) => updates(message as GetUserListRsp))
          as GetUserListRsp;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetUserListRsp create() => GetUserListRsp._();

  GetUserListRsp createEmptyInstance() => create();

  static $pb.PbList<GetUserListRsp> createRepeated() =>
      $pb.PbList<GetUserListRsp>();

  @$core.pragma('dart2js:noInline')
  static GetUserListRsp getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetUserListRsp>(create);
  static GetUserListRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<UserInfo> get userInfos => $_getList(0);
}

class CallInviteReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'CallInviteReq',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.linkjoyLatterInventive(),
          ),
          createEmptyInstance: create,
        )
        ..a<$fixnum.Int64>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'liveId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$fixnum.Int64>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'uid',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..hasRequiredFields = false;

  CallInviteReq._() : super();

  factory CallInviteReq({$fixnum.Int64? liveId, $fixnum.Int64? uid}) {
    final _result = create();
    if (liveId != null) {
      _result.liveId = liveId;
    }
    if (uid != null) {
      _result.uid = uid;
    }
    return _result;
  }

  factory CallInviteReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory CallInviteReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  CallInviteReq clone() => CallInviteReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  CallInviteReq copyWith(void Function(CallInviteReq) updates) =>
      super.copyWith((message) => updates(message as CallInviteReq))
          as CallInviteReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CallInviteReq create() => CallInviteReq._();

  CallInviteReq createEmptyInstance() => create();

  static $pb.PbList<CallInviteReq> createRepeated() =>
      $pb.PbList<CallInviteReq>();

  @$core.pragma('dart2js:noInline')
  static CallInviteReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CallInviteReq>(create);
  static CallInviteReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get liveId => $_getI64(0);

  @$pb.TagNumber(1)
  set liveId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasLiveId() => $_has(0);

  @$pb.TagNumber(1)
  void clearLiveId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get uid => $_getI64(1);

  @$pb.TagNumber(2)
  set uid($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasUid() => $_has(1);

  @$pb.TagNumber(2)
  void clearUid() => clearField(2);
}

class CallInvitePsh extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'CallInvitePsh',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.linkjoyLatterInventive(),
          ),
          createEmptyInstance: create,
        )
        ..a<$fixnum.Int64>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'liveId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..hasRequiredFields = false;

  CallInvitePsh._() : super();

  factory CallInvitePsh({$fixnum.Int64? liveId}) {
    final _result = create();
    if (liveId != null) {
      _result.liveId = liveId;
    }
    return _result;
  }

  factory CallInvitePsh.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory CallInvitePsh.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  CallInvitePsh clone() => CallInvitePsh()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  CallInvitePsh copyWith(void Function(CallInvitePsh) updates) =>
      super.copyWith((message) => updates(message as CallInvitePsh))
          as CallInvitePsh;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CallInvitePsh create() => CallInvitePsh._();

  CallInvitePsh createEmptyInstance() => create();

  static $pb.PbList<CallInvitePsh> createRepeated() =>
      $pb.PbList<CallInvitePsh>();

  @$core.pragma('dart2js:noInline')
  static CallInvitePsh getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CallInvitePsh>(create);
  static CallInvitePsh? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get liveId => $_getI64(0);

  @$pb.TagNumber(1)
  set liveId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasLiveId() => $_has(0);

  @$pb.TagNumber(1)
  void clearLiveId() => clearField(1);
}

class CallKickReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'CallKickReq',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.linkjoyLatterInventive(),
          ),
          createEmptyInstance: create,
        )
        ..a<$fixnum.Int64>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'liveId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$fixnum.Int64>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'uid',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..hasRequiredFields = false;

  CallKickReq._() : super();

  factory CallKickReq({$fixnum.Int64? liveId, $fixnum.Int64? uid}) {
    final _result = create();
    if (liveId != null) {
      _result.liveId = liveId;
    }
    if (uid != null) {
      _result.uid = uid;
    }
    return _result;
  }

  factory CallKickReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory CallKickReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  CallKickReq clone() => CallKickReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  CallKickReq copyWith(void Function(CallKickReq) updates) =>
      super.copyWith((message) => updates(message as CallKickReq))
          as CallKickReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CallKickReq create() => CallKickReq._();

  CallKickReq createEmptyInstance() => create();

  static $pb.PbList<CallKickReq> createRepeated() => $pb.PbList<CallKickReq>();

  @$core.pragma('dart2js:noInline')
  static CallKickReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CallKickReq>(create);
  static CallKickReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get liveId => $_getI64(0);

  @$pb.TagNumber(1)
  set liveId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasLiveId() => $_has(0);

  @$pb.TagNumber(1)
  void clearLiveId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get uid => $_getI64(1);

  @$pb.TagNumber(2)
  set uid($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasUid() => $_has(1);

  @$pb.TagNumber(2)
  void clearUid() => clearField(2);
}

class CallKickPsh extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'CallKickPsh',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.linkjoyLatterInventive(),
          ),
          createEmptyInstance: create,
        )
        ..a<$fixnum.Int64>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'liveId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..hasRequiredFields = false;

  CallKickPsh._() : super();

  factory CallKickPsh({$fixnum.Int64? liveId}) {
    final _result = create();
    if (liveId != null) {
      _result.liveId = liveId;
    }
    return _result;
  }

  factory CallKickPsh.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory CallKickPsh.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  CallKickPsh clone() => CallKickPsh()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  CallKickPsh copyWith(void Function(CallKickPsh) updates) =>
      super.copyWith((message) => updates(message as CallKickPsh))
          as CallKickPsh;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CallKickPsh create() => CallKickPsh._();

  CallKickPsh createEmptyInstance() => create();

  static $pb.PbList<CallKickPsh> createRepeated() => $pb.PbList<CallKickPsh>();

  @$core.pragma('dart2js:noInline')
  static CallKickPsh getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CallKickPsh>(create);
  static CallKickPsh? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get liveId => $_getI64(0);

  @$pb.TagNumber(1)
  set liveId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasLiveId() => $_has(0);

  @$pb.TagNumber(1)
  void clearLiveId() => clearField(1);
}

class GetUserListForAnchorReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'GetUserListForAnchorReq',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.linkjoyLatterInventive(),
          ),
          createEmptyInstance: create,
        )
        ..a<$fixnum.Int64>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'liveId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..hasRequiredFields = false;

  GetUserListForAnchorReq._() : super();

  factory GetUserListForAnchorReq({$fixnum.Int64? liveId}) {
    final _result = create();
    if (liveId != null) {
      _result.liveId = liveId;
    }
    return _result;
  }

  factory GetUserListForAnchorReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory GetUserListForAnchorReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  GetUserListForAnchorReq clone() =>
      GetUserListForAnchorReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  GetUserListForAnchorReq copyWith(
    void Function(GetUserListForAnchorReq) updates,
  ) =>
      super.copyWith((message) => updates(message as GetUserListForAnchorReq))
          as GetUserListForAnchorReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetUserListForAnchorReq create() => GetUserListForAnchorReq._();

  GetUserListForAnchorReq createEmptyInstance() => create();

  static $pb.PbList<GetUserListForAnchorReq> createRepeated() =>
      $pb.PbList<GetUserListForAnchorReq>();

  @$core.pragma('dart2js:noInline')
  static GetUserListForAnchorReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetUserListForAnchorReq>(create);
  static GetUserListForAnchorReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get liveId => $_getI64(0);

  @$pb.TagNumber(1)
  set liveId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasLiveId() => $_has(0);

  @$pb.TagNumber(1)
  void clearLiveId() => clearField(1);
}

class GetUserListForAnchorRsp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'GetUserListForAnchorRsp',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.linkjoyLatterInventive(),
          ),
          createEmptyInstance: create,
        )
        ..pc<UserInfo>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'userInfos',
          $pb.PbFieldType.PM,
          protoName: 'userInfos',
          subBuilder: UserInfo.create,
        )
        ..hasRequiredFields = false;

  GetUserListForAnchorRsp._() : super();

  factory GetUserListForAnchorRsp({$core.Iterable<UserInfo>? userInfos}) {
    final _result = create();
    if (userInfos != null) {
      _result.userInfos.addAll(userInfos);
    }
    return _result;
  }

  factory GetUserListForAnchorRsp.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory GetUserListForAnchorRsp.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  GetUserListForAnchorRsp clone() =>
      GetUserListForAnchorRsp()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  GetUserListForAnchorRsp copyWith(
    void Function(GetUserListForAnchorRsp) updates,
  ) =>
      super.copyWith((message) => updates(message as GetUserListForAnchorRsp))
          as GetUserListForAnchorRsp;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetUserListForAnchorRsp create() => GetUserListForAnchorRsp._();

  GetUserListForAnchorRsp createEmptyInstance() => create();

  static $pb.PbList<GetUserListForAnchorRsp> createRepeated() =>
      $pb.PbList<GetUserListForAnchorRsp>();

  @$core.pragma('dart2js:noInline')
  static GetUserListForAnchorRsp getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetUserListForAnchorRsp>(create);
  static GetUserListForAnchorRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<UserInfo> get userInfos => $_getList(0);
}

class LivePkEnableReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'LivePkEnableReq',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.linkjoyLatterInventive(),
          ),
          createEmptyInstance: create,
        )
        ..a<$core.int>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'enable',
          $pb.PbFieldType.OU3,
        )
        ..hasRequiredFields = false;

  LivePkEnableReq._() : super();

  factory LivePkEnableReq({$core.int? enable}) {
    final _result = create();
    if (enable != null) {
      _result.enable = enable;
    }
    return _result;
  }

  factory LivePkEnableReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory LivePkEnableReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  LivePkEnableReq clone() => LivePkEnableReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  LivePkEnableReq copyWith(void Function(LivePkEnableReq) updates) =>
      super.copyWith((message) => updates(message as LivePkEnableReq))
          as LivePkEnableReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LivePkEnableReq create() => LivePkEnableReq._();

  LivePkEnableReq createEmptyInstance() => create();

  static $pb.PbList<LivePkEnableReq> createRepeated() =>
      $pb.PbList<LivePkEnableReq>();

  @$core.pragma('dart2js:noInline')
  static LivePkEnableReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LivePkEnableReq>(create);
  static LivePkEnableReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get enable => $_getIZ(0);

  @$pb.TagNumber(1)
  set enable($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasEnable() => $_has(0);

  @$pb.TagNumber(1)
  void clearEnable() => clearField(1);
}

class LivePkInvitePsh extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'LivePkInvitePsh',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.linkjoyLatterInventive(),
          ),
          createEmptyInstance: create,
        )
        ..a<$fixnum.Int64>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'inviteId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..aOM<AnchorInfo>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'anchor',
          subBuilder: AnchorInfo.create,
        )
        ..hasRequiredFields = false;

  LivePkInvitePsh._() : super();

  factory LivePkInvitePsh({$fixnum.Int64? inviteId, AnchorInfo? anchor}) {
    final _result = create();
    if (inviteId != null) {
      _result.inviteId = inviteId;
    }
    if (anchor != null) {
      _result.anchor = anchor;
    }
    return _result;
  }

  factory LivePkInvitePsh.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory LivePkInvitePsh.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  LivePkInvitePsh clone() => LivePkInvitePsh()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  LivePkInvitePsh copyWith(void Function(LivePkInvitePsh) updates) =>
      super.copyWith((message) => updates(message as LivePkInvitePsh))
          as LivePkInvitePsh;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LivePkInvitePsh create() => LivePkInvitePsh._();

  LivePkInvitePsh createEmptyInstance() => create();

  static $pb.PbList<LivePkInvitePsh> createRepeated() =>
      $pb.PbList<LivePkInvitePsh>();

  @$core.pragma('dart2js:noInline')
  static LivePkInvitePsh getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LivePkInvitePsh>(create);
  static LivePkInvitePsh? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get inviteId => $_getI64(0);

  @$pb.TagNumber(1)
  set inviteId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasInviteId() => $_has(0);

  @$pb.TagNumber(1)
  void clearInviteId() => clearField(1);

  @$pb.TagNumber(2)
  AnchorInfo get anchor => $_getN(1);

  @$pb.TagNumber(2)
  set anchor(AnchorInfo v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasAnchor() => $_has(1);

  @$pb.TagNumber(2)
  void clearAnchor() => clearField(2);

  @$pb.TagNumber(2)
  AnchorInfo ensureAnchor() => $_ensure(1);
}

class LivePkInviteReplyReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'LivePkInviteReplyReq',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.linkjoyLatterInventive(),
          ),
          createEmptyInstance: create,
        )
        ..a<$fixnum.Int64>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'inviteId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$core.int>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'accept',
          $pb.PbFieldType.OU3,
        )
        ..hasRequiredFields = false;

  LivePkInviteReplyReq._() : super();

  factory LivePkInviteReplyReq({$fixnum.Int64? inviteId, $core.int? accept}) {
    final _result = create();
    if (inviteId != null) {
      _result.inviteId = inviteId;
    }
    if (accept != null) {
      _result.accept = accept;
    }
    return _result;
  }

  factory LivePkInviteReplyReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory LivePkInviteReplyReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  LivePkInviteReplyReq clone() =>
      LivePkInviteReplyReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  LivePkInviteReplyReq copyWith(void Function(LivePkInviteReplyReq) updates) =>
      super.copyWith((message) => updates(message as LivePkInviteReplyReq))
          as LivePkInviteReplyReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LivePkInviteReplyReq create() => LivePkInviteReplyReq._();

  LivePkInviteReplyReq createEmptyInstance() => create();

  static $pb.PbList<LivePkInviteReplyReq> createRepeated() =>
      $pb.PbList<LivePkInviteReplyReq>();

  @$core.pragma('dart2js:noInline')
  static LivePkInviteReplyReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LivePkInviteReplyReq>(create);
  static LivePkInviteReplyReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get inviteId => $_getI64(0);

  @$pb.TagNumber(1)
  set inviteId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasInviteId() => $_has(0);

  @$pb.TagNumber(1)
  void clearInviteId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get accept => $_getIZ(1);

  @$pb.TagNumber(2)
  set accept($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasAccept() => $_has(1);

  @$pb.TagNumber(2)
  void clearAccept() => clearField(2);
}

class LivePkInviteReplyRsp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'LivePkInviteReplyRsp',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.linkjoyLatterInventive(),
          ),
          createEmptyInstance: create,
        )
        ..a<$core.int>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'code',
          $pb.PbFieldType.OU3,
        )
        ..aOS(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'msg',
        )
        ..aOM<LivePkPsh>(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'pk',
          subBuilder: LivePkPsh.create,
        )
        ..hasRequiredFields = false;

  LivePkInviteReplyRsp._() : super();

  factory LivePkInviteReplyRsp({
    $core.int? code,
    $core.String? msg,
    LivePkPsh? pk,
  }) {
    final _result = create();
    if (code != null) {
      _result.code = code;
    }
    if (msg != null) {
      _result.msg = msg;
    }
    if (pk != null) {
      _result.pk = pk;
    }
    return _result;
  }

  factory LivePkInviteReplyRsp.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory LivePkInviteReplyRsp.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  LivePkInviteReplyRsp clone() =>
      LivePkInviteReplyRsp()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  LivePkInviteReplyRsp copyWith(void Function(LivePkInviteReplyRsp) updates) =>
      super.copyWith((message) => updates(message as LivePkInviteReplyRsp))
          as LivePkInviteReplyRsp;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LivePkInviteReplyRsp create() => LivePkInviteReplyRsp._();

  LivePkInviteReplyRsp createEmptyInstance() => create();

  static $pb.PbList<LivePkInviteReplyRsp> createRepeated() =>
      $pb.PbList<LivePkInviteReplyRsp>();

  @$core.pragma('dart2js:noInline')
  static LivePkInviteReplyRsp getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LivePkInviteReplyRsp>(create);
  static LivePkInviteReplyRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get code => $_getIZ(0);

  @$pb.TagNumber(1)
  set code($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);

  @$pb.TagNumber(1)
  void clearCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get msg => $_getSZ(1);

  @$pb.TagNumber(2)
  set msg($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMsg() => $_has(1);

  @$pb.TagNumber(2)
  void clearMsg() => clearField(2);

  @$pb.TagNumber(3)
  LivePkPsh get pk => $_getN(2);

  @$pb.TagNumber(3)
  set pk(LivePkPsh v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasPk() => $_has(2);

  @$pb.TagNumber(3)
  void clearPk() => clearField(3);

  @$pb.TagNumber(3)
  LivePkPsh ensurePk() => $_ensure(2);
}

class LivePkPsh extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'LivePkPsh',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.linkjoyLatterInventive(),
          ),
          createEmptyInstance: create,
        )
        ..a<$fixnum.Int64>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'pkId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..e<LivePkStatus>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'status',
          $pb.PbFieldType.OE,
          defaultOrMaker: LivePkStatus.INIT,
          valueOf: LivePkStatus.valueOf,
          enumValues: LivePkStatus.values,
        )
        ..aOM<AnchorInfo>(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'anchorInfo',
          protoName: 'anchorInfo',
          subBuilder: AnchorInfo.create,
        )
        ..aOS(
          4,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'agoraChannelId',
          protoName: 'agoraChannelId',
        )
        ..aOS(
          5,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'agoraToken',
          protoName: 'agoraToken',
        )
        ..a<$fixnum.Int64>(
          6,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'startTime',
          $pb.PbFieldType.OU6,
          protoName: 'startTime',
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$core.int>(
          7,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'pkDuration',
          $pb.PbFieldType.OU3,
          protoName: 'pkDuration',
        )
        ..a<$core.int>(
          8,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'pkDurationExt',
          $pb.PbFieldType.OU3,
          protoName: 'pkDurationExt',
        )
        ..pc<LivePkFeedPsh>(
          9,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'results',
          $pb.PbFieldType.PM,
          subBuilder: LivePkFeedPsh.create,
        )
        ..hasRequiredFields = false;

  LivePkPsh._() : super();

  factory LivePkPsh({
    $fixnum.Int64? pkId,
    LivePkStatus? status,
    AnchorInfo? anchorInfo,
    $core.String? agoraChannelId,
    $core.String? agoraToken,
    $fixnum.Int64? startTime,
    $core.int? pkDuration,
    $core.int? pkDurationExt,
    $core.Iterable<LivePkFeedPsh>? results,
  }) {
    final _result = create();
    if (pkId != null) {
      _result.pkId = pkId;
    }
    if (status != null) {
      _result.status = status;
    }
    if (anchorInfo != null) {
      _result.anchorInfo = anchorInfo;
    }
    if (agoraChannelId != null) {
      _result.agoraChannelId = agoraChannelId;
    }
    if (agoraToken != null) {
      _result.agoraToken = agoraToken;
    }
    if (startTime != null) {
      _result.startTime = startTime;
    }
    if (pkDuration != null) {
      _result.pkDuration = pkDuration;
    }
    if (pkDurationExt != null) {
      _result.pkDurationExt = pkDurationExt;
    }
    if (results != null) {
      _result.results.addAll(results);
    }
    return _result;
  }

  factory LivePkPsh.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory LivePkPsh.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  LivePkPsh clone() => LivePkPsh()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  LivePkPsh copyWith(void Function(LivePkPsh) updates) =>
      super.copyWith((message) => updates(message as LivePkPsh)) as LivePkPsh;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LivePkPsh create() => LivePkPsh._();

  LivePkPsh createEmptyInstance() => create();

  static $pb.PbList<LivePkPsh> createRepeated() => $pb.PbList<LivePkPsh>();

  @$core.pragma('dart2js:noInline')
  static LivePkPsh getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LivePkPsh>(create);
  static LivePkPsh? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get pkId => $_getI64(0);

  @$pb.TagNumber(1)
  set pkId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPkId() => $_has(0);

  @$pb.TagNumber(1)
  void clearPkId() => clearField(1);

  @$pb.TagNumber(2)
  LivePkStatus get status => $_getN(1);

  @$pb.TagNumber(2)
  set status(LivePkStatus v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);

  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);

  @$pb.TagNumber(3)
  AnchorInfo get anchorInfo => $_getN(2);

  @$pb.TagNumber(3)
  set anchorInfo(AnchorInfo v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasAnchorInfo() => $_has(2);

  @$pb.TagNumber(3)
  void clearAnchorInfo() => clearField(3);

  @$pb.TagNumber(3)
  AnchorInfo ensureAnchorInfo() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get agoraChannelId => $_getSZ(3);

  @$pb.TagNumber(4)
  set agoraChannelId($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasAgoraChannelId() => $_has(3);

  @$pb.TagNumber(4)
  void clearAgoraChannelId() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get agoraToken => $_getSZ(4);

  @$pb.TagNumber(5)
  set agoraToken($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasAgoraToken() => $_has(4);

  @$pb.TagNumber(5)
  void clearAgoraToken() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get startTime => $_getI64(5);

  @$pb.TagNumber(6)
  set startTime($fixnum.Int64 v) {
    $_setInt64(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasStartTime() => $_has(5);

  @$pb.TagNumber(6)
  void clearStartTime() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get pkDuration => $_getIZ(6);

  @$pb.TagNumber(7)
  set pkDuration($core.int v) {
    $_setUnsignedInt32(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasPkDuration() => $_has(6);

  @$pb.TagNumber(7)
  void clearPkDuration() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get pkDurationExt => $_getIZ(7);

  @$pb.TagNumber(8)
  set pkDurationExt($core.int v) {
    $_setUnsignedInt32(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasPkDurationExt() => $_has(7);

  @$pb.TagNumber(8)
  void clearPkDurationExt() => clearField(8);

  @$pb.TagNumber(9)
  $core.List<LivePkFeedPsh> get results => $_getList(8);
}

class LivePkOptReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'LivePkOptReq',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.linkjoyLatterInventive(),
          ),
          createEmptyInstance: create,
        )
        ..a<$fixnum.Int64>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'pkId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..e<LivePkOpt>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'opt',
          $pb.PbFieldType.OE,
          defaultOrMaker: LivePkOpt.OPT_NONE,
          valueOf: LivePkOpt.valueOf,
          enumValues: LivePkOpt.values,
        )
        ..aOS(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'remark',
        )
        ..hasRequiredFields = false;

  LivePkOptReq._() : super();

  factory LivePkOptReq({
    $fixnum.Int64? pkId,
    LivePkOpt? opt,
    $core.String? remark,
  }) {
    final _result = create();
    if (pkId != null) {
      _result.pkId = pkId;
    }
    if (opt != null) {
      _result.opt = opt;
    }
    if (remark != null) {
      _result.remark = remark;
    }
    return _result;
  }

  factory LivePkOptReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory LivePkOptReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  LivePkOptReq clone() => LivePkOptReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  LivePkOptReq copyWith(void Function(LivePkOptReq) updates) =>
      super.copyWith((message) => updates(message as LivePkOptReq))
          as LivePkOptReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LivePkOptReq create() => LivePkOptReq._();

  LivePkOptReq createEmptyInstance() => create();

  static $pb.PbList<LivePkOptReq> createRepeated() =>
      $pb.PbList<LivePkOptReq>();

  @$core.pragma('dart2js:noInline')
  static LivePkOptReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LivePkOptReq>(create);
  static LivePkOptReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get pkId => $_getI64(0);

  @$pb.TagNumber(1)
  set pkId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPkId() => $_has(0);

  @$pb.TagNumber(1)
  void clearPkId() => clearField(1);

  @$pb.TagNumber(2)
  LivePkOpt get opt => $_getN(1);

  @$pb.TagNumber(2)
  set opt(LivePkOpt v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasOpt() => $_has(1);

  @$pb.TagNumber(2)
  void clearOpt() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get remark => $_getSZ(2);

  @$pb.TagNumber(3)
  set remark($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasRemark() => $_has(2);

  @$pb.TagNumber(3)
  void clearRemark() => clearField(3);
}

class LivePkFeedPsh extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'LivePkFeedPsh',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.linkjoyLatterInventive(),
          ),
          createEmptyInstance: create,
        )
        ..a<$fixnum.Int64>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'pkId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$fixnum.Int64>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'ownerId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$core.int>(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'score',
          $pb.PbFieldType.OU3,
        )
        ..aOM<LiveFeed>(
          4,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'feed',
          subBuilder: LiveFeed.create,
        )
        ..pc<UserInfo>(
          5,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'bossList',
          $pb.PbFieldType.PM,
          protoName: 'bossList',
          subBuilder: UserInfo.create,
        )
        ..hasRequiredFields = false;

  LivePkFeedPsh._() : super();

  factory LivePkFeedPsh({
    $fixnum.Int64? pkId,
    $fixnum.Int64? ownerId,
    $core.int? score,
    LiveFeed? feed,
    $core.Iterable<UserInfo>? bossList,
  }) {
    final _result = create();
    if (pkId != null) {
      _result.pkId = pkId;
    }
    if (ownerId != null) {
      _result.ownerId = ownerId;
    }
    if (score != null) {
      _result.score = score;
    }
    if (feed != null) {
      _result.feed = feed;
    }
    if (bossList != null) {
      _result.bossList.addAll(bossList);
    }
    return _result;
  }

  factory LivePkFeedPsh.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory LivePkFeedPsh.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  LivePkFeedPsh clone() => LivePkFeedPsh()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  LivePkFeedPsh copyWith(void Function(LivePkFeedPsh) updates) =>
      super.copyWith((message) => updates(message as LivePkFeedPsh))
          as LivePkFeedPsh;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LivePkFeedPsh create() => LivePkFeedPsh._();

  LivePkFeedPsh createEmptyInstance() => create();

  static $pb.PbList<LivePkFeedPsh> createRepeated() =>
      $pb.PbList<LivePkFeedPsh>();

  @$core.pragma('dart2js:noInline')
  static LivePkFeedPsh getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LivePkFeedPsh>(create);
  static LivePkFeedPsh? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get pkId => $_getI64(0);

  @$pb.TagNumber(1)
  set pkId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPkId() => $_has(0);

  @$pb.TagNumber(1)
  void clearPkId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get ownerId => $_getI64(1);

  @$pb.TagNumber(2)
  set ownerId($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasOwnerId() => $_has(1);

  @$pb.TagNumber(2)
  void clearOwnerId() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get score => $_getIZ(2);

  @$pb.TagNumber(3)
  set score($core.int v) {
    $_setUnsignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasScore() => $_has(2);

  @$pb.TagNumber(3)
  void clearScore() => clearField(3);

  @$pb.TagNumber(4)
  LiveFeed get feed => $_getN(3);

  @$pb.TagNumber(4)
  set feed(LiveFeed v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasFeed() => $_has(3);

  @$pb.TagNumber(4)
  void clearFeed() => clearField(4);

  @$pb.TagNumber(4)
  LiveFeed ensureFeed() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.List<UserInfo> get bossList => $_getList(4);
}
