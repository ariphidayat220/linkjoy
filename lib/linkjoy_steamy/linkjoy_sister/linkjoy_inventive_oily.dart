import 'dart:async';

import 'package:linkjoy/linkjoy_steamy/linkjoy_dance/linkjoy_king_sorority.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/proto/linkjoy_convict.pb.dart';
import 'package:linkjoy/linkjoy_steamy/proto/linkjoy_inventive.pb.dart';
import 'package:linkjoy/linkjoy_steamy/proto/common.pb.dart';
import 'package:fixnum/fixnum.dart';

class LinkjoyInventiveOily {
  LinkjoyInventiveOily._internal();

  static LinkjoyInventiveOily? _instance;

  static LinkjoyInventiveOily get instance => _getInstance();

  factory LinkjoyInventiveOily() => _getInstance();

  static LinkjoyInventiveOily _getInstance() {
    return _instance ??= LinkjoyInventiveOily._internal();
  }

  Future<CommonRsp?> keepAlive(int liveId) {
    final req = LiveKeepAlive.create();
    req.liveId = Int64(liveId);
    return LINKJOY.socketManager.sendWithReturn<CommonRsp>(req).then((resp) {
      return resp;
    });
  }

  Future<LiveCreateRsp?> linkjoyCuffInventiveBurton() {
    final req = LiveCreateReq.create();
    return LINKJOY.socketManager
        .sendWithReturn<LiveCreateRsp>(req, showLoadingUI: true)
        .then((resp) {
          if (resp != null && resp.code == 0) {
            return resp;
          }
          return null;
        });
  }

  Future<bool> linkjoyCameraInventiveBurton(int liveId) async {
    final req = LivePauseReq.create();
    req.liveId = Int64(liveId);

    CommonRsp? rsp = await LINKJOY.socketManager.sendWithReturn<CommonRsp>(req);
    if (rsp != null && rsp.code == 0) {
      return true;
    } else {
      return false;
    }
  }

  Future<bool> linkjoyPerformerInventiveBurton(int liveId) async {
    final req = LiveResumeReq.create();
    req.liveId = Int64(liveId);

    CommonRsp? rsp = await LINKJOY.socketManager.sendWithReturn<CommonRsp>(req);
    if (rsp != null && rsp.code == 0) {
      return true;
    } else {
      return false;
    }
  }

  void linkjoyUptightInventiveBurton(int liveId, {bool withError = false}) {
    final req = LiveEndReq.create();
    req.type = withError ? LiveStatus.ERROR_END.value : LiveStatus.END.value;
    req.liveId = Int64(liveId);

    LINKJOY.socketManager.sendWithoutResp(req);
  }

  Future<EnterLiveRsp?> linkjoyWizardInventiveBurton(
    int anchorId,
    int liveId,
    int videoId,
  ) {
    final req = EnterLiveReq.create();
    req.liveId = Int64(liveId);
    req.anchorUid = Int64(anchorId);
    req.videoId = Int64(videoId);

    return LINKJOY.socketManager.sendWithReturn<EnterLiveRsp>(req);
  }

  void linkjoyWizardInventiveMozzarella(
    int liveId,
    bool success,
    int videoId,
    int cost,
  ) {
    final req = EnterLiveReportReq.create();
    req.liveId = Int64(liveId);
    req.code = success ? 1 : 0;
    req.videoId = Int64(videoId);
    req.cost = cost;

    LINKJOY.socketManager.sendWithoutResp(req);
  }

  void linkjoyCurriculumInventiveBurton(
    int liveId,
    int videoId, {
    VideoPlaySummary? summary,
  }) {
    final req = LiveLeaveReq.create();
    req.liveId = Int64(liveId);
    if (summary != null) {
      req.summary = summary;
    }
    LINKJOY.socketManager.sendWithoutResp(req);
  }

  bool sendLiveMessage(String content, int liveId) {
    final req = SendMessageReq.create();
    req.liveId = Int64(liveId);
    req.text = content;
    return LINKJOY.socketManager.sendWithoutResp(req);
  }

  Future<bool> sendLiveGift(int giftId, int liveId) {
    final req = LiveGiftGiveReq.create();
    req.liveId = Int64(liveId);
    req.giftId = Int64(giftId);

    return LINKJOY.socketManager
        .sendWithReturn<CommonRsp>(req, showLoadingUI: true)
        .then((resp) {
          if (resp != null && resp.code == 0) {
            return true;
          }
          return false;
        });
  }

  bool sendLiveLikes(int count, int liveId) {
    final req = LiveLikeReq.create();
    req.liveId = Int64(liveId);
    req.likeCount = count;
    return LINKJOY.socketManager.sendWithoutResp(req);
  }

  Future<GetUserListRsp?> visitors(int liveId, int videoId) async {
    GetUserListReq req = GetUserListReq.create();
    req.liveId = Int64(liveId);
    req.type = videoId > 0 ? 1 : 0;
    LinkjoyKingSorority<GetUserListRsp>? rsp = await LINKJOY.socketManager
        .sendWithResp<GetUserListRsp>(req);
    return rsp?.employee?.message;
  }

  Future<GetUserListForAnchorRsp?> visitorsAnchor(int liveId) async {
    GetUserListForAnchorReq req = GetUserListForAnchorReq.create();
    req.liveId = Int64(liveId);
    LinkjoyKingSorority<GetUserListForAnchorRsp>? rsp = await LINKJOY
        .socketManager
        .sendWithResp<GetUserListForAnchorRsp>(req);
    return rsp?.employee?.message;
  }

  Future<List<LiveInfo>?> subscribe(bool subscribe) async {
    LiveStatusSubscribeReq req = LiveStatusSubscribeReq.create();
    req.status = subscribe ? 1 : 0;
    LinkjoyKingSorority<LiveStatusSubscribeRsp>? rsp = await LINKJOY
        .socketManager
        .sendWithResp<LiveStatusSubscribeRsp>(req);

    return rsp?.employee?.message?.lives;
  }
}
