import 'dart:core' as $core;

import 'package:linkjoy/linkjoy_steamy/proto/linkjoy_access_courage.dart';
import 'package:protobuf/protobuf.dart' as $pb;

class Message_Type extends $pb.ProtobufEnum {
  static const Message_Type UNKNOWN = Message_Type._(
    0,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'UNKNOWN',
  );
  static const Message_Type LIVECREATEREQ = Message_Type._(
    3000,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'LIVECREATEREQ',
  );
  static const Message_Type LIVECREATERSP = Message_Type._(
    3001,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'LIVECREATERSP',
  );
  static const Message_Type LIVESUGGESTPSH = Message_Type._(
    3002,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'LIVESUGGESTPSH',
  );
  static const Message_Type ENTERLIVEREQ = Message_Type._(
    3003,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'ENTERLIVEREQ',
  );
  static const Message_Type ENTERLIVERSP = Message_Type._(
    3004,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'ENTERLIVERSP',
  );
  static const Message_Type LIVELEAVEREQ = Message_Type._(
    3005,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'LIVELEAVEREQ',
  );
  static const Message_Type LIVEENDREQ = Message_Type._(
    3006,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'LIVEENDREQ',
  );
  static const Message_Type LIVEENDPSH = Message_Type._(
    3008,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'LIVEENDPSH',
  );
  static const Message_Type LIVEKEEPALIVE = Message_Type._(
    3009,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'LIVEKEEPALIVE',
  );
  static const Message_Type LIVEFEEDPSH = Message_Type._(
    3010,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'LIVEFEEDPSH',
  );
  static const Message_Type LIVEGIFTGIVEREQ = Message_Type._(
    3011,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'LIVEGIFTGIVEREQ',
  );
  static const Message_Type LIVELIKEREQ = Message_Type._(
    3012,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'LIVELIKEREQ',
  );
  static const Message_Type LIVELIKEPSH = Message_Type._(
    3013,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'LIVELIKEPSH',
  );
  static const Message_Type SENDMESSAGEREQ = Message_Type._(
    3014,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'SENDMESSAGEREQ',
  );
  static const Message_Type GETUSERLISTREQ = Message_Type._(
    3015,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'GETUSERLISTREQ',
  );
  static const Message_Type GETUSERLISTRSP = Message_Type._(
    3016,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'GETUSERLISTRSP',
  );
  static const Message_Type CALLINVITEREQ = Message_Type._(
    3017,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'CALLINVITEREQ',
  );
  static const Message_Type CALLINVITEPSH = Message_Type._(
    3018,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'CALLINVITEPSH',
  );
  static const Message_Type CALLKICKREQ = Message_Type._(
    3019,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'CALLKICKREQ',
  );
  static const Message_Type CALLKICKPSH = Message_Type._(
    3020,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'CALLKICKPSH',
  );
  static const Message_Type GETUSERLISTFORANCHORREQ = Message_Type._(
    3021,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'GETUSERLISTFORANCHORREQ',
  );
  static const Message_Type GETUSERLISTFORANCHORRSP = Message_Type._(
    3022,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'GETUSERLISTFORANCHORRSP',
  );
  static const Message_Type GETLIVEINFOREQ = Message_Type._(
    3023,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'GETLIVEINFOREQ',
  );
  static const Message_Type GETLIVEINFORSP = Message_Type._(
    3024,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'GETLIVEINFORSP',
  );
  static const Message_Type PAUSE_LIVE_REQ = Message_Type._(
    3025,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'PAUSE_LIVE_REQ',
  );
  static const Message_Type RESUME_LIVE_REQ = Message_Type._(
    3026,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'RESUME_LIVE_REQ',
  );
  static const Message_Type LIVE_NEED_TO_PAY_PSH = Message_Type._(
    3027,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'LIVE_NEED_TO_PAY_PSH',
  );
  static const Message_Type BIG_BOSS_PSH = Message_Type._(
    3028,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'BIG_BOSS_PSH',
  );
  static const Message_Type LIVE_STATUS_SUBSCRIBE_REQ = Message_Type._(
    3029,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'LIVE_STATUS_SUBSCRIBE_REQ',
  );
  static const Message_Type LIVE_STATUS_SUBSCRIBE_RSP = Message_Type._(
    3030,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'LIVE_STATUS_SUBSCRIBE_RSP',
  );
  static const Message_Type LIVE_STATUS_PSH = Message_Type._(
    3031,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'LIVE_STATUS_PSH',
  );
  static const Message_Type ENTER_LIVE_REPORT_REQ = Message_Type._(
    3032,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'ENTER_LIVE_REPORT_REQ',
  );
  static const Message_Type LIVE_PK_ENABLE_REQ = Message_Type._(
    3060,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'LIVE_PK_ENABLE_REQ',
  );
  static const Message_Type LIVE_PK_INVITE_PSH = Message_Type._(
    3061,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'LIVE_PK_INVITE_PSH',
  );
  static const Message_Type LIVE_PK_INVITE_REPLY_REQ = Message_Type._(
    3062,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'LIVE_PK_INVITE_REPLY_REQ',
  );
  static const Message_Type LIVE_PK_INVITE_REPLY_RSP = Message_Type._(
    3063,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'LIVE_PK_INVITE_REPLY_RSP',
  );
  static const Message_Type LIVE_PK_PSH = Message_Type._(
    3064,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'LIVE_PK_PSH',
  );
  static const Message_Type LIVE_PK_OPT_REQ = Message_Type._(
    3065,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'LIVE_PK_OPT_REQ',
  );
  static const Message_Type LIVE_PK_FEED_PSH = Message_Type._(
    3066,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'LIVE_PK_FEED_PSH',
  );

  static const $core.List<Message_Type> values = <Message_Type>[
    UNKNOWN,
    LIVECREATEREQ,
    LIVECREATERSP,
    LIVESUGGESTPSH,
    ENTERLIVEREQ,
    ENTERLIVERSP,
    LIVELEAVEREQ,
    LIVEENDREQ,
    LIVEENDPSH,
    LIVEKEEPALIVE,
    LIVEFEEDPSH,
    LIVEGIFTGIVEREQ,
    LIVELIKEREQ,
    LIVELIKEPSH,
    SENDMESSAGEREQ,
    GETUSERLISTREQ,
    GETUSERLISTRSP,
    CALLINVITEREQ,
    CALLINVITEPSH,
    CALLKICKREQ,
    CALLKICKPSH,
    GETUSERLISTFORANCHORREQ,
    GETUSERLISTFORANCHORRSP,
    GETLIVEINFOREQ,
    GETLIVEINFORSP,
    PAUSE_LIVE_REQ,
    RESUME_LIVE_REQ,
    LIVE_NEED_TO_PAY_PSH,
    BIG_BOSS_PSH,
    LIVE_STATUS_SUBSCRIBE_REQ,
    LIVE_STATUS_SUBSCRIBE_RSP,
    LIVE_STATUS_PSH,
    ENTER_LIVE_REPORT_REQ,
    LIVE_PK_ENABLE_REQ,
    LIVE_PK_INVITE_PSH,
    LIVE_PK_INVITE_REPLY_REQ,
    LIVE_PK_INVITE_REPLY_RSP,
    LIVE_PK_PSH,
    LIVE_PK_OPT_REQ,
    LIVE_PK_FEED_PSH,
  ];

  static final $core.Map<$core.int, Message_Type> _byValue =
      $pb.ProtobufEnum.initByValue(values);

  static Message_Type? valueOf($core.int value) => _byValue[value];

  const Message_Type._($core.int v, $core.String n) : super(v, n);
}
