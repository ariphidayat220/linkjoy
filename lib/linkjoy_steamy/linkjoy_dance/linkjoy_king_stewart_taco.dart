import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_steamy_clam_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/proto/auth.pb.dart';
import 'package:linkjoy/linkjoy_steamy/proto/linkjoy_convict.pb.dart';
import 'package:linkjoy/linkjoy_steamy/proto/linkjoy_deli.pb.dart';
import 'package:linkjoy/linkjoy_steamy/proto/linkjoy_inventive.pb.dart';
import 'package:linkjoy/linkjoy_steamy/proto/linkjoy_satellite.pb.dart'
    as Flash;
import 'package:linkjoy/linkjoy_steamy/proto/linkjoy_sutra.pb.dart';
import 'package:linkjoy/linkjoy_steamy/proto/chatbox.pb.dart';
import 'package:linkjoy/linkjoy_steamy/proto/common.pb.dart';
import 'package:linkjoy/linkjoy_steamy/proto/google/protobuf/any.pb.dart';
import 'package:linkjoy/linkjoy_steamy/proto/im_message.pb.dart' as IM;
import 'package:linkjoy/linkjoy_steamy/proto/live_message.pb.dart' as LIVE;
import 'package:linkjoy/linkjoy_steamy/proto/message.pb.dart';
import 'package:linkjoy/linkjoy_steamy/proto/snap.pb.dart';
import 'package:linkjoy/linkjoy_steamy/proto/sync.pb.dart';
import 'package:protobuf/protobuf.dart';

import 'linkjoy_tribute.dart';

typedef LinkjoyKingSatelliteSusie = dynamic Function();

class LinkjoyKingStewartTaco {
  static void init() {
    _req(AuthReq(), Message_Category.BASE, Message_Type.AUTHREQ);
    _req(AppTrackRecord(), Message_Category.BASE, Message_Type.APPTRACK);
    _req(
      EventSubscribeReq(),
      Message_Category.BASE,
      Message_Type.EVENT_SUBSCRIBE,
    );
    _req(
      GetUserOnlineTimeReq(),
      Message_Category.linkjoy_ancestor,
      Flash.Message_Type.GETUSERONLINETIMEREQ,
    );
    _req(
      ChatCallReq(),
      Message_Category.linkjoy_ancestor,
      Flash.Message_Type.CHATCALLREQ,
    );
    _req(
      AiCallReq(),
      Message_Category.linkjoy_ancestor,
      Flash.Message_Type.AICALLREQ,
    );
    _req(
      SendChatCallGiftReq(),
      Message_Category.linkjoy_ancestor,
      Flash.Message_Type.SENDCHATCALLGIFTREQ,
    );
    _req(
      RateChatCallReq(),
      Message_Category.linkjoy_ancestor,
      Flash.Message_Type.RATECHATCALLREQ,
    );
    _req(
      ConfirmChatCallMatchReq(),
      Message_Category.linkjoy_ancestor,
      Flash.Message_Type.CONFIRMCHATCALLMATCHREQ,
    );
    _req(
      CheckCallReq(),
      Message_Category.linkjoy_ancestor,
      Flash.Message_Type.CHECKCALLREQ,
    );
    _req(
      ChatCallMatchLikeReq(),
      Message_Category.linkjoy_ancestor,
      Flash.Message_Type.MATCH_LIKE_REQ,
    );
    _req(
      ChatCallMatchLikeResult(),
      Message_Category.linkjoy_ancestor,
      Flash.Message_Type.MATCH_LIKE_RESULT,
    );
    _req(
      ChatCallMatchCallReq(),
      Message_Category.linkjoy_ancestor,
      Flash.Message_Type.MATCH_CALL_REQ,
    );
    _req(
      ChatCallMessageSendReq(),
      Message_Category.linkjoy_ancestor,
      Flash.Message_Type.CHATCALL_MESSAGE_SEND_REQ,
    );
    _req(
      BegGiftReq(),
      Message_Category.linkjoy_ancestor,
      Flash.Message_Type.BEGGIFTREQ,
    );

    _resp(Message_Category.BASE, Message_Type.AUTHRSP, () => AuthRsp());
    _resp(
      Message_Category.linkjoy_ancestor,
      Flash.Message_Type.GETUSERONLINETIMERSP,
      () => GetUserOnlineTimeRsp(),
    );
    _resp(Message_Category.IM, IM.Message_Type.SYNCNOTIFY, () => SyncNotify());
    _resp(Message_Category.IM, IM.Message_Type.SYNC, () => Sync());
    _resp(
      Message_Category.linkjoy_ancestor,
      Flash.Message_Type.CHECKCALLRSP,
      () => CheckCallRsp(),
    );
    _resp(
      Message_Category.linkjoy_ancestor,
      Flash.Message_Type.CHATCALLRSP,
      () => ChatCallRsp(),
    );
    _resp(
      Message_Category.linkjoy_ancestor,
      Flash.Message_Type.MATCH_LIKE_RSP,
      () => ChatCallMatchLikeRsp(),
    );
    _resp(
      Message_Category.linkjoy_ancestor,
      Flash.Message_Type.CHATCALL_MESSAGE_SEND_PSH,
      () => ChatCallMessageSendPsh(),
    );

    _resp(Message_Category.BASE, Message_Type.COMMONRSP, () => CommonRsp());

    _resp(
      Message_Category.BASE,
      Message_Type.USER_RUNTIME_PSH,
      () => UserRuntimePSH(),
    );
    _resp(
      Message_Category.BASE,
      Message_Type.USER_STATUS_PSH,
      () => UserStatus(),
    );

    _resp(Message_Category.BASE, Message_Type.RED_DOT_PSH, () => RedDotPSH());
    _resp(
      Message_Category.BASE,
      Message_Type.INTERACT_NOTICE_PSH,
      () => InteractNoticePSH(),
    );
    _resp(
      Message_Category.BASE,
      Message_Type.AWARD_NOTICE_PSH,
      () => AwardNoticePSH(),
    );
    _resp(
      Message_Category.linkjoy_ancestor,
      Message_Type.RELATION_TEMP_PSH,
      () => RelationTempPSH(),
    );

    _req(HttpReq(), Message_Category.linkjoy_ancestor, Message_Type.HTTP_REQ);
    _resp(
      Message_Category.linkjoy_ancestor,
      Message_Type.HTTP_RSP,
      () => HttpRsp(),
    );

    _req(Sync(), Message_Category.IM, IM.Message_Type.SYNC);
    _req(
      SyncKeyConfirmNotify(),
      Message_Category.IM,
      IM.Message_Type.SYNCKEYCONFIRMNOTIFY,
    );

    _req(CreateSnapReq(), Message_Category.IM, IM.Message_Type.CREATESNAPREQ);
    _resp(
      Message_Category.IM,
      IM.Message_Type.CREATESNAPRSP,
      () => CreateSnapRsp(),
    );

    _req(
      BatchGetChatboxInfoReq(),
      Message_Category.IM,
      IM.Message_Type.BATCHGETCHATBOXINFOREQ,
    );
    _resp(
      Message_Category.IM,
      IM.Message_Type.BATCHGETCHATBOXINFORSP,
      () => BatchGetChatboxInfoRsp(),
    );

    _req(
      UpdateChatboxReadedStatusReq(),
      Message_Category.IM,
      IM.Message_Type.UPDATECHATBOXREADEDSTATUSREQ,
    );

    _req(
      CreateChatboxReq(),
      Message_Category.IM,
      IM.Message_Type.CREATECHATBOXREQ,
    );
    _resp(
      Message_Category.IM,
      IM.Message_Type.CREATECHATBOXRSP,
      () => CreateChatboxRsp(),
    );

    _req(
      GetChatboxInfoReq(),
      Message_Category.IM,
      IM.Message_Type.GETCHATBOXINFOREQ,
    );
    _resp(
      Message_Category.IM,
      IM.Message_Type.GETCHATBOXINFORSP,
      () => GetChatboxInfoRsp(),
    );

    _req(
      RemoveChatboxReq(),
      Message_Category.IM,
      IM.Message_Type.REMOVECHATBOXREQ,
    );
    _req(ReadSnapReq(), Message_Category.IM, IM.Message_Type.READSNAPREQ);

    _resp(
      Message_Category.linkjoy_ancestor,
      Flash.Message_Type.SYSNOTIFICATIONNOTIFY,
      () => SysNotify(),
    );

    _psh(
      Message_Category.linkjoy_ancestor,
      Flash.Message_Type.CHATCALLPSH,
      () => ChatCallPsh(),
    );
    _psh(
      Message_Category.linkjoy_ancestor,
      Flash.Message_Type.BEGGIFTPSH,
      () => BegGiftPSH(),
    );
    _psh(
      Message_Category.linkjoy_ancestor,
      Flash.Message_Type.CHATCALLGIFTPSH,
      () => ChatCallGiftPSH(),
    );
    _psh(
      Message_Category.linkjoy_ancestor,
      Flash.Message_Type.ALERTNOTIFY,
      () => AlertNotify(),
    );
    _psh(Message_Category.BASE, Message_Type.POPUP_NOTIFY, () => PopupNotify());

    _req(EnterLiveReq(), Message_Category.LIVE, LIVE.Message_Type.ENTERLIVEREQ);
    _resp(
      Message_Category.LIVE,
      LIVE.Message_Type.ENTERLIVERSP,
      () => EnterLiveRsp(),
    );

    _req(
      LiveCreateReq(),
      Message_Category.LIVE,
      LIVE.Message_Type.LIVECREATEREQ,
    );
    _resp(
      Message_Category.LIVE,
      LIVE.Message_Type.LIVECREATERSP,
      () => LiveCreateRsp(),
    );

    _req(LiveEndReq(), Message_Category.LIVE, LIVE.Message_Type.LIVEENDREQ);

    _req(
      GetUserListReq(),
      Message_Category.LIVE,
      LIVE.Message_Type.GETUSERLISTREQ,
    );
    _resp(
      Message_Category.LIVE,
      LIVE.Message_Type.GETUSERLISTRSP,
      () => GetUserListRsp(),
    );

    _req(
      GetUserListForAnchorReq(),
      Message_Category.LIVE,
      LIVE.Message_Type.GETUSERLISTFORANCHORREQ,
    );
    _resp(
      Message_Category.LIVE,
      LIVE.Message_Type.GETUSERLISTFORANCHORRSP,
      () => GetUserListForAnchorRsp(),
    );

    _req(
      SendMessageReq(),
      Message_Category.LIVE,
      LIVE.Message_Type.SENDMESSAGEREQ,
    );
    _req(
      LiveGiftGiveReq(),
      Message_Category.LIVE,
      LIVE.Message_Type.LIVEGIFTGIVEREQ,
    );
    _req(LiveLikeReq(), Message_Category.LIVE, LIVE.Message_Type.LIVELIKEREQ);
    _req(
      LiveKeepAlive(),
      Message_Category.LIVE,
      LIVE.Message_Type.LIVEKEEPALIVE,
    );

    _req(LiveLeaveReq(), Message_Category.LIVE, LIVE.Message_Type.LIVELEAVEREQ);
    _req(
      LivePauseReq(),
      Message_Category.LIVE,
      LIVE.Message_Type.PAUSE_LIVE_REQ,
    );
    _req(
      LiveResumeReq(),
      Message_Category.LIVE,
      LIVE.Message_Type.RESUME_LIVE_REQ,
    );

    _req(
      LiveStatusSubscribeReq(),
      Message_Category.LIVE,
      LIVE.Message_Type.LIVE_STATUS_SUBSCRIBE_REQ,
    );
    _resp(
      Message_Category.LIVE,
      LIVE.Message_Type.LIVE_STATUS_SUBSCRIBE_RSP,
      () => LiveStatusSubscribeRsp(),
    );

    _req(
      EnterLiveReportReq(),
      Message_Category.LIVE,
      LIVE.Message_Type.ENTER_LIVE_REPORT_REQ,
    );

    _psh(
      Message_Category.LIVE,
      LIVE.Message_Type.LIVE_STATUS_PSH,
      () => LiveStatusPsh(),
    );

    _psh(
      Message_Category.LIVE,
      LIVE.Message_Type.CALLKICKPSH,
      () => CallKickPsh(),
    );
    _psh(
      Message_Category.LIVE,
      LIVE.Message_Type.CALLINVITEPSH,
      () => CallInvitePsh(),
    );
    _psh(
      Message_Category.LIVE,
      LIVE.Message_Type.LIVEFEEDPSH,
      () => LiveFeedPsh(),
    );
    _psh(
      Message_Category.LIVE,
      LIVE.Message_Type.LIVE_NEED_TO_PAY_PSH,
      () => LiveNeedToPayPsh(),
    );
    _psh(
      Message_Category.LIVE,
      LIVE.Message_Type.BIG_BOSS_PSH,
      () => LiveBossPsh(),
    );
    _psh(
      Message_Category.LIVE,
      LIVE.Message_Type.LIVESUGGESTPSH,
      () => LiveSuggestPsh(),
    );
  }

  static final Map<int, Map<int, LinkjoyKingSatelliteSusie>>
  _messageFacotoryMap = {};

  static final Map<Type, LinkjoyTribute> _employeeFactoryMap = {};

  static void _psh(
    Message_Category cate,
    ProtobufEnum type,
    LinkjoyKingSatelliteSusie factory,
  ) {
    _resp(cate, type, factory);
  }

  static void _req(
    GeneratedMessage msg,
    Message_Category cate,
    ProtobufEnum type,
  ) {
    _employeeFactoryMap[msg.runtimeType] = LinkjoyTribute(
      cate.value,
      type.value,
      null,
    );
  }

  static void _resp(
    Message_Category cate,
    ProtobufEnum type,
    LinkjoyKingSatelliteSusie factory,
  ) {
    Map<int, LinkjoyKingSatelliteSusie>? typeFactoryMap =
        _messageFacotoryMap[cate.value];
    if (typeFactoryMap == null) {
      typeFactoryMap = {};
      _messageFacotoryMap[cate.value] = typeFactoryMap;
    }

    typeFactoryMap[type.value] = factory;
  }

  static T? parse<T extends GeneratedMessage>(Message rawEmployee) {
    Map<int, LinkjoyKingSatelliteSusie>? typeFactoryMap =
        _messageFacotoryMap[rawEmployee.messageCate];
    if (typeFactoryMap == null) {
      return null;
    }

    LinkjoyKingSatelliteSusie? factory =
        typeFactoryMap[rawEmployee.messageType];
    if (factory == null) {
      return null;
    }

    if (!rawEmployee.hasMessageObject()) {
      return null;
    }
    try {
      return rawEmployee.messageObject.unpackInto(factory());
    } catch (e, stack) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(10036, e, stack);
      return null;
    }
  }

  static Message build(GeneratedMessage msg) {
    LinkjoyTribute? emp = _employeeFactoryMap[msg.runtimeType];
    if (emp == null) {
      throw Exception("未找到消息类型, runtimeType:${msg.runtimeType}, msg:$msg");
    }

    Message rawEmployee = Message();
    rawEmployee.messageCate = emp.cate;
    rawEmployee.messageType = emp.type;
    rawEmployee.messageObject = Any.pack(msg);
    return rawEmployee;
  }
}
